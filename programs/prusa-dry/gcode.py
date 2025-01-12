from textwrap import dedent

DURATION = 120
TEMP = 60

print(dedent(f"""
    G21 ; units = mm
    G28 Y ; home y
    G0 Y200 ; rapid to y=200
    M84 ; disable steppers
    M104 S0 ; make sure extruder is off
    M190 S{TEMP} ; set bed temp, blocking
"""))

for minute in range(DURATION):
    remain = DURATION - minute
    percent = int(minute / DURATION * 100.)
    print(dedent(f"""
        M73 P{percent} R{remain}
        M73 Q{percent} S{remain}
        G4 S60
    """))

print(dedent("""
    M140 S0
    ; progress 100%
    M73 P100 R0
    M73 Q100 S0
"""))
