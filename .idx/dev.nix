{ pkgs, ... }: {

  # Which nixpkgs channel to use.
  channel = "stable-23.11"; # or "unstable"

  # Use https://search.nixos.org/packages to find packages
  packages = [
    pkgs.hugo
  ];

  # Sets environment variables in the workspace
  ##env = {
  #  SOME_ENV_VAR = "hello";
  #};

  environment.systemPackages = [
    pkgs.nodejs_22
  ];

  # Search for the extensions you want on https://open-vsx.org/ and use "publisher.id"
  #idx.extensions = [
  #  "angular.ng-template"
  #];

  # Enable previews and customize configuration
  idx.previews = {
    enable = true;
    previews = {
      web = {
        command = [
          "npm"
          "run"
          "start"
          "--"
          "--port"
          "$PORT"
          "--host"
          "0.0.0.0"
          "--disable-host-check"
        ];
        manager = "web";
      };
    };
  };
}