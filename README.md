# rwall

rwall is a configurable random wallpaper chooser meant for use in standalone window managers.

## Configuration

Specify files by path in the `files` block.

```yaml
files:
  - wp1.jpg                      # wp1.jpg must be in the same directory as the executable
  - /home/mason/Pictures/wp2.jpg # It is recomendded to use full paths
```

Specify entire directories in the `directories` block.

```yaml
directories:
  - /home/mason/Pictures/wallpapers
  - /home/mason/Downloads
```

Define which commands should be executed when the program runs. `{wall}` will be replaced by the selected wallpaper path.

```yaml
commands:
  - 'hyprctl hyprpaper wallpaper "DP-1,{wall}"'
  - 'hyprctl hyprpaper wallpaper "HDMI-A-1,{wall}"'
```

By default, the latter two commands will have different values for `wall`, so the each monitor will get its own randomly selected wallpaper. If you would like to run multiple commands with the same `wall` value, put the commands in a list. For example:

```yaml
commands:
  - 'hyprctl hyprpaper unload all'
  - ['hyprctl hyprpaper preload {wall}', 'hyprctl hyprpaper wallpaper "DP-1,{wall}"']
  - ['hyprctl hyprpaper preload {wall}', 'hyprctl hyprpaper wallpaper "HDMI-A-1,{wall}"']
```

With this example, each monitor still gets its own wallpaper, but wallpapers don't have to be preloaded in the `hyprpaper` config file and, instead, can be loaded and unloaded on the fly.

rwall is built with wallpapers in mind, but can be used for other things such as a random fetch utility. For example:

```yaml
files:
 - pfetch
 - neofetch

commands:
 - '{wall}'
```

Now, whenever rwall is run, either `pfetch` or `neofetch` will be executed.
