
$env.PATH = (
    $env.PATH
    | split row (char esep)
    | prepend '/opt/homebrew/bin'
# For Mac |'/opt/homebrew/bin'
    | append '/usr/local/bin'
    | append ($env.HOME | path join ".config")
    | append ($env.HOME | path join ".cargo/bin")
)

mkdir ~/.cache/starship
starship init nu 
    | str replace "term size -c" "term size" 
    | str replace --all "let-env " "$env." 
    | save -f ~/.cache/starship/init.nu

mkdir ~/.local/share/atuin
atuin init nu
    | save -f ~/.local/share/atuin/init.nu

zoxide init nushell
  | str replace --all "-- $rest" "-- ...$rest" 
  | str replace "--interactive -- $rest" "--interactive -- ...$rest" 
  | save -f ~/.zoxide.nu

mkdir ~/.cache/carapace
carapace _carapace nushell 
   | save --force ~/.cache/carapace/init.nu

$env.EDITOR = "nvim"

$env.CARAPACE_BRIDGES = 'zsh,fish,bash,inshellisense' # optional
$env.PROMPT_INDICATOR = {|| "" }
$env.PROMPT_INDICATOR_VI_INSERT = {|| "◇ " }
$env.PROMPT_INDICATOR_VI_NORMAL = {|| "❖ " }
$env.PROMPT_MULTILINE_INDICATOR = {|| "" }

$env.ENV_CONVERSIONS = {
    "PATH": {
        from_string: { |s| $s | split row (char esep) | path expand --no-symlink }
        to_string: { |v| $v | path expand --no-symlink | str join (char esep) }
    }
    "Path": {
        from_string: { |s| $s | split row (char esep) | path expand --no-symlink }
        to_string: { |v| $v | path expand --no-symlink | str join (char esep) }
    }
}

$env.NU_LIB_DIRS = [
    ($nu.default-config-dir | path join 'scripts') # add <nushell-config-dir>/scripts
    ($nu.data-dir | path join 'completions') # default home for nushell completions
]

$env.NU_PLUGIN_DIRS = [
    ($nu.default-config-dir | path join 'plugins') # add <nushell-config-dir>/plugins
]


