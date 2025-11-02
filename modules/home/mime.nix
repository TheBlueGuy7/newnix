{ ... }:
{
  xdg.mimeApps = {
    enable = true;
    defaultApplications = {
      "default-web-browser"           = [ "brave.desktop" ];
      "text/html"                     = [ "brave.desktop" ];
      "x-scheme-handler/http"         = [ "brave.desktop" ];
      "x-scheme-handler/https"        = [ "brave.desktop" ];
      "x-scheme-handler/about"        = [ "brave.desktop" ];
      "x-scheme-handler/unknown"      = [ "brave.desktop" ];
    };
  };
}