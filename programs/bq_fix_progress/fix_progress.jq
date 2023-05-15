def fix_completions:
    (. | first | .timestamp) as $timestamp |
    if any(.uuid == $from_p) and (any(.uuid == $to_p) | not) then
        . + [{ "uuid": $to_p, "timestamp": $timestamp, "claimed": false }]
    else
        .
    end;

.questProgress |= map(.completed |= fix_completions)
