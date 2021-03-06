{ config, pkgs, ...}:
{
  
  config.programs.alacritty = {
    enable = true;
    settings = {
      title = "alacritty";
      dynamic_title = true;
      window = {
        dynamic_padding = true;
        opacity = 0.99;
        decorations = "none";
      };
      draw_bold_text_with_bright_colors = true;
      # alt_send_esc = false;
      font = {
        normal.family = "Iosevka";
        size = 12;
      };
      cursor = {
        style = {
          # shape = "Beam";
          blinking = "On";
        };
        blink_interval = 1000;
        thickness = 0.25;
      };
      live_config_reload = true;
    };
  };
}
