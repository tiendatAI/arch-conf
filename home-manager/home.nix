# home-manager for multiple users

home-manager.users = {
  ${tiendat} = {
    imports = [
      ./home.nix
      ./hosts/tiendat.nix  
    ]
  };

  ${icslab} = {
    imports = [
     ./home.nix
     ./hosts/icslab.nix
    ];  
  };
};
