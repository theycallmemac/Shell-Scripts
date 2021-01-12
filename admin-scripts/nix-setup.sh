### copy default config file with git to clone repository
curl -s https://gist.githubusercontent.com/theycallmemac/19ac8930570f2d88b645c3d5eab10169/raw/286b1bc05279c056d55a331a92970101132fbc69/configuration.nix > /etc/nixos/configuration.nix
nixos-rebuild switch

### clone repository and copy contents to nixos directory
git clone https://github.com/theycallmemac/nix-configs /etc/nixos2
pushd /etc/nixos2
cp -R /etc/nixos2/* /etc/nixos/
cp -R /etc/nixos2/.git /etc/nixos/.git

### add home manager channel
nix-channel --add https://github.com/nix-community/home-manager/archive/release-20.09.tar.gz home-manager
nix-channel --update
nixos-rebuild switch

### remove original cloned directory
rm -r /etc/nixos2
