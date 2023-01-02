{ config, pkgs, ... }:
let inherit (pkgs.lib) mkMerge mkIf;
in
{
  users.users.jade = mkMerge [
    {
      isNormalUser = true;
      extraGroups = [ "wheel" "video" ];

      initialPassword = "changeme";

      openssh.authorizedKeys.keys = [
        "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDNldAg4t13/i69TD786The+U3wbiNUdW2Kc9KNWvEhgpf4y4x4Sft0oYfkPw5cjX4H3APqfD+b7ItAG0GCbwHw6KMYPoVMNK08zBMJUqt1XExbqGeFLqBaeqDsmEAYXJRbjMTAorpOCtgQdoCKK/DvZ51zUWXxT8UBNHSl19Ryv5Ry5VVdbAE35rqs57DQ9+ma6htXnsBEmmnC+1Zv1FE956m/OpBTId50mor7nS2FguAtPZnDPpTd5zl9kZmJEuWCrmy6iinw5V4Uy1mLeZkQv+/FtozbyifCRCvps9nHpv4mBSU5ABLgnRRvXs+D41Jx7xloNADr1nNgpsNrYaTh hed-bot-ssh-tpm-rsa"
        "sk-ssh-ed25519@openssh.com AAAAGnNrLXNzaC1lZDI1NTE5QG9wZW5zc2guY29tAAAAIKYljH8iPMrH00lOb3ETxRrZimdKzPPEdsJQ5D5ovtOwAAAACnNzaDpzc2hrZXk= ssh:sshkey"
      ];

      shell = pkgs.zsh;
    }
    (mkIf config.networking.networkmanager.enable {
      extraGroups = ["networkmanager"];
    })
  ];
}
