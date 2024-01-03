{ pkgs, ... }:

{
  programs.alacritty = {
    enable = true;
  };

  xdg.configFile."alacritty/nord.yaml".text =
    ''
      # Copyright (c) 2016-present Sven Greb <development@svengreb.de>
      # This source code is licensed under the MIT license found in the license file.

      colors:
        primary:
          background: "#2e3440"
          foreground: "#d8dee9"
          dim_foreground: "#a5abb6"
        cursor:
          text: "#2e3440"
          cursor: "#d8dee9"
        vi_mode_cursor:
          text: "#2e3440"
          cursor: "#d8dee9"
        selection:
          text: CellForeground
          background: "#4c566a"
        search:
          matches:
            foreground: CellBackground
            background: "#88c0d0"
          footer_bar:
            background: "#434c5e"
            foreground: "#d8dee9"
        normal:
          black: "#3b4252"
          red: "#bf616a"
          green: "#a3be8c"
          yellow: "#ebcb8b"
          blue: "#81a1c1"
          magenta: "#b48ead"
          cyan: "#88c0d0"
          white: "#e5e9f0"
        bright:
          black: "#4c566a"
          red: "#bf616a"
          green: "#a3be8c"
          yellow: "#ebcb8b"
          blue: "#81a1c1"
          magenta: "#b48ead"
          cyan: "#8fbcbb"
          white: "#eceff4"
        dim:
          black: "#373e4d"
          red: "#94545d"
          green: "#809575"
          yellow: "#b29e75"
          blue: "#68809a"
          magenta: "#8c738c"
          cyan: "#6d96a5"
          white: "#aeb3bb"
    '';

  xdg.configFile."alacritty/alacritty.yml".text =
    ''
      import:
        - ~/.config/alacritty/nord.yaml
      # Font configuration
      font:
        # Normal (roman) font face
        normal:
          family: "Maple Mono SC NF"
          #style: Regular

        # Bold font face
        bold:
          family: "Maple Mono SC NF"
          #style: Bold

        # Italic font face
        italic:
          family: "Maple Mono SC NF"
          #style: Italic

        # Bold italic font face
        bold_italic:
          family: "Maple Mono SC NF"
          #style: Bold Italic

        # Point size
        size: 10

        # Offset
        #offset:
        #  x: 0
        #  y: 0

        # Glyph offset
        #glyph_offset:
        #  x: 0
        #  y: 0

      env:
        TERM: alacritty
        WINIT_X11_SCALE_FACTOR: '1.0'

      ## Terminal window settings
      window:
        #  title: NixOS

        dimensions:
          columns: 110
          lines: 36

        padding:
          x: 4
          y: 1

        decorations: full
        startup_mode: Windowed
        dynamic_title: true

      ## scrolling
        history: 10000
        multiplier: 3

      ## Background opacity
        opacity: 0.8

      ## Cursor
      cursor:
        style:
          shape: Beam
          blinking: On

        unfocused_hollow: false

      # ## Live config reload
      # live_config_reload: true

      # ## Shell
      # shell:
      #   program: /run/current-system/sw/bin/nu
    '';
}
