# Add node version
AGKOZAK_NODE_VERSION=`[ -f "$(which node)" ] && node --version | sed 's/v\([0-9.]*\).*/\1/'`
psvar[11]=$AGKOZAK_NODE_VERSION

AGKOZAK_PROMPT_CHAR=( $'\u203a' "⚡ \u203a" : )
AGKOZAK_PROMPT_DIRTRIM=0
AGKOZAK_CUSTOM_SYMBOLS=( '⇣⇡' '⇣' '⇡' '+' 'x' '!' '>' '?' 'S')

# Prompt Customization
AGKOZAK_BLANK_LINES=1

## Horizontal Line
AGKOZAK_CUSTOM_PROMPT=''
AGKOZAK_CUSTOM_PROMPT+=$'%F{237}${(r:$COLUMNS::-:)}\n'
AGKOZAK_CUSTOM_PROMPT+='%F{240} ┌ %f'

## Lambda
AGKOZAK_CUSTOM_PROMPT+='%F{default}λ%f '

## Divider
# AGKOZAK_CUSTOM_PROMPT+='%F{240}%(9V.[ .%(?..[ ))%f'
AGKOZAK_CUSTOM_PROMPT+='%F{240}%(9V.≫ .%(?..≫ ))%f'

## Exit Status
AGKOZAK_CUSTOM_PROMPT+='%(?..%B%F{204}%?%f%b )'

## Execution time
AGKOZAK_CUSTOM_PROMPT+='%(9V.%F{203}%9v%f .)'

## Divider
# AGKOZAK_CUSTOM_PROMPT+='%F{240}%(9V.] .%(?..] ))%f'
AGKOZAK_CUSTOM_PROMPT+='%F{240}≫%f '

## Username
AGKOZAK_CUSTOM_PROMPT+='%n'

## Hostname
AGKOZAK_CUSTOM_PROMPT+='%(1V. %F{240}on%f %1v.)'

## Path
AGKOZAK_CUSTOM_PROMPT+=' %F{240}at%f%B%F{blue} %2v%f%b'

## With
AGKOZAK_CUSTOM_PROMPT+=' %F{240}with%f'

## Virtualenv
AGKOZAK_CUSTOM_PROMPT+='%(10V. %F{green}[%10v]%f.)'

## Node
AGKOZAK_CUSTOM_PROMPT+=$'%(11V. %F{green}\u2B22%11v%f.)'

## Newline
AGKOZAK_CUSTOM_PROMPT+=$'\n%F{240} └ %f'

## Prompt
AGKOZAK_CUSTOM_PROMPT+='%F{default}'
AGKOZAK_CUSTOM_PROMPT+='%(4V.${AGKOZAK_PROMPT_CHAR[3]:-:}.%(!.${AGKOZAK_PROMPT_CHAR[2]:-%#}.${AGKOZAK_PROMPT_CHAR[1]:-%#}))'
AGKOZAK_CUSTOM_PROMPT+='%f '

## Git
AGKOZAK_CUSTOM_RPROMPT='%(3V.%F{yellow}%3v %f.)'

## Time
AGKOZAK_CUSTOM_RPROMPT+=' %*'
