import logging
import sys

logger = logging.getLogger('aiopanel.my_config')

import aiopanel

out_adapter = aiopanel.SubprocessAdapter([
    'lemonbar',
    '-o0',
    '-fSource Sans 3:size=11',
    '-o-2',
    '-fFont Awesome 5 Free:size=11',
    '-o-2',
    '-fFont Awesome 5 Brands:size=11',
    '-gx20',
    '-naiopanel',
])
out_fmt = '{{ bspwm }}%{c}{{ title }}%{r}{{ pulse }}{{ connman }}{{ batt }}\uf017 {{ date }}'

log_level = 'INFO'

bspwm_ctx = {'active_colour': '#ff4c5399', 'inactive_colour': '#ff303030'}

bspwm_template = """
{%- for m in wm.monitors.values() -%}
    %{B{{ ctx.active_colour if wm.focused_monitor == m else ctx.inactive_colour }}{{ '}' }}
    {{- ' ' }}{{ m.name }}{{ ' ' }}%{B-}
    {%- for d in m.desktops.values() -%}
        %{B{{ ctx.active_colour if m.focused_desktop == d else ctx.inactive_colour }}{{ '}' }}
        {{- ' ' }}{{ d.name }}{{ ' ' }}%{B-}
    {%- endfor %}
{%- endfor %}
{{- '  %{B' }}{{ ctx.inactive_colour }}{{ '} ' }}
{{- wm.focused_monitor.focused_desktop.layout[0].upper() }}
{{- ' %{B-}' }}
{{- '' -}}
"""

cm_template = """
{%- set active_svcs = services.filter('State', 'online') %}
{%- for svc in active_svcs.filter('Type', 'ethernet').values() %}
    {{- '\uf0c1 ' }}{{ svc.Ethernet.Interface }}{{ ' | ' }}
{%- endfor %}
{%- for svc in active_svcs.filter('Type', 'wifi').values() %}
    {{- '\uf1eb ' }}{{ svc.Name }}{{ ' | ' }}
{%- endfor -%}
"""

colour_fullycharged = '#20c424'
colour_low = '#c40004'


def get_batt_cap_icon(dev):
    percent = dev.Percentage
    if percent >= 80:
        return '\uf240'
    if percent >= 60:
        return '\uf241'
    if percent >= 40:
        return '\uf242'
    if percent >= 20:
        return '\uf243'
    return f'%{{F{colour_low}}}\uf244%{{F-}}'


def select_batt_icon(dev):
    devstates = {
        aiopanel.UPowerState.EMPTY: '\uf244',
        aiopanel.UPowerState.FULLY_CHARGED:
        f'\uf1e6 %{{F{colour_fullycharged}}}\uf240%{{F-}}',
        aiopanel.UPowerState.DISCHARGING: get_batt_cap_icon(dev),
        aiopanel.UPowerState.PENDING_DISCHARGE: get_batt_cap_icon(dev),
        aiopanel.UPowerState.CHARGING: '\uf1e6 ' + get_batt_cap_icon(dev),
        aiopanel.UPowerState.PENDING_CHARGE: '\uf1e6 ' + get_batt_cap_icon(dev)
    }
    return devstates.get(dev.State, '')


upower_template = """
{%- if device.Type == DeviceType.BATTERY %}
    {%- if device.IsPresent %}
        {{- ctx.select_batt_icon(device) }}
        {{- ' {:0.0f}%'.format(device.Percentage) }}
        {%- set time_s = device.TimeToFull or device.TimeToEmpty %}
        {%- if time_s %}
            {{- ' ({h}:{m:02d})'.format(h=time_s // 3600,
                                        m=(time_s // 60) % 60) }}
        {%- endif %}
        {%- if device.EnergyRate %}
            {{- ' [{:0.1f}W]'.format(device.EnergyRate) }}
        {%- endif %}
        {{- ' | ' }}
    {%- endif %}
{%- endif -%}
"""

upower_ctx = {
    'select_batt_icon': select_batt_icon,
}

def select_dev_icon(dev):
    # FIXME: this doesn't support many icons
    icon_name = dev.proplist.get('device.icon_name')
    icon = {
        'audio-headset-bluetooth': '\uf294',
    }.get(icon_name, '')

    return icon


def select_vol_icon(dev):
    vol = dev.volume * 100.0
    mute = dev.mute
    if mute:
        return '\uf026'
    elif vol >= 50.0:
        return '\uf028'
    else:
        return '\uf027'


pulse_ctx = {
    'select_vol_icon': select_vol_icon,
    'select_dev_icon': select_dev_icon,
}

pulse_template = """
{{- ctx.select_vol_icon(state) }}{{- ctx.select_dev_icon(state) }}{{ ' ' }}
{{- (state.volume * 100)|round|int }}{{ '% | ' -}}
"""

widgets = {
    'bspwm': [aiopanel.BspwmWidget(bspwm_template, ctx=bspwm_ctx)],
    'title': [aiopanel.SubprocessWidget(['xtitle', '-s', '-t 200'])],
    'pulse': [aiopanel.PulseAudioWidget(pulse_template, ctx=pulse_ctx)],
    'connman': [aiopanel.ConnmanWidget(cm_template)],
    'batt': [aiopanel.UPowerWidget(upower_template, ctx=upower_ctx)],
    'date': [aiopanel.DateTimeWidget('%a %b %-d %H:%M', update=2)],
}
