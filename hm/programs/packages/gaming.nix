{
  default, pkgs, inputs, outputs, config, lib, ...
}:
{

  home.packages =
    let
      nix-gaming = inputs.nix-gaming.packages.${pkgs.system};
    in
    with pkgs;
    [
      cemu
      #citra-canary
      discord-canary
      dolphin-emu
      glfw-wayland
      lutris
      parsec-bin
      prismlauncher
      vkbasalt
      vkbasalt-cli
      steam
      steam-run
      tetrio-desktop
      yuzu-early-access
      nix-gaming.osu-lazer-bin
      nix-gaming.proton-ge
    ];

}
