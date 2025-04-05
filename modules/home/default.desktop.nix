{
  inputs,
  username,
  host,
  ...
}:
{
  imports = [
    ./default.nix
    ./windows.nix
    # ./rider.nix                     # C# JetBrain editor
    # ./unity.nix
  ];
}
