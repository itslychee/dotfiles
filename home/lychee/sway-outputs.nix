{ hostname, ...}:
let 
  defaultOptions = {
    bg = "~/.wallpaper-image fill";
  };
  outputs = (
    if (hostname == "kremlin") then {
      "HDMI-A-1" = {
        resolution = "1920x1080@144.001Hz";
      };
    }
    else if (hostname == "laptop") then {
      "eDP-1" = {
        resolution = "1366x768@60.020Hz";
        adaptive_sync = "on";
      };
    }
    else builtins.abort "no output for hostname '${hostname}'"
  );
in {
  wayland.windowManager.sway.config.output = (
    builtins.mapAttrs (_: val: val // defaultOptions) outputs
  );
}
