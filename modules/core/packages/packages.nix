{
  pkgs,
  inputs,
  lib,
  options,
  ...
}: {
  imports = [ 
    inputs.nix-flatpak.nixosModules.nix-flatpak 
  ];
  environment.systemPackages = with pkgs; [
    bash
    gamescope
    lshw
    f3d
  ] 
  ++ (lib.lists.optionals (hostname == "ShadowMoses") [
    davinci-resolve
  ]);

  services.flatpak = {
    enable = true;
    packages = [
      "com.github.tchx84.Flatseal"
      "com.steamgriddb.SGDBoop"
      "io.mrarm.mcpelauncher"
      "net.rpcs3.RPCS3"
      "camp.nook.nookdesktop"
      "org.freedesktop.Sdk/x86_64/23.08"
      "com.fightcade.Fightcade"
      "io.itch.itch"
      "io.github.lime3ds.Lime3DS"
      "com.dec05eba.gpu_screen_recorder"
    ];
  };
    fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    liberation_ttf
    fira-code
    fira-code-symbols
    mplus-outline-fonts.githubRelease
    dina-font
    proggyfonts
    nerdfonts
  ];
}
