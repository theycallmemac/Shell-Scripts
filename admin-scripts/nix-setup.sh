curl -s https://gist.githubusercontent.com/theycallmemac/19ac8930570f2d88b645c3d5eab10169/raw/f726cb7c0d1f2dd3c87b89c2a131de845c38e799/configuration.nix > /etc/nixos/configuration.nix
nixos-rebuild switch
git clone https://github.com/theycallmemac/nix-configs /etc/nixos2
pushd /etc/nixos2
git checkout -b ec2 remotes/origin/ec2
cp -R /etc/nixos2/* /etc/nixos/
nixos-rebuild switch
rm -r /etc/nixos2
