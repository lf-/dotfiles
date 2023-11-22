{
  jade = {
    # this is a hashed long random pw only used here. chill
    hashedPassword = "$6$xdA/r73m$B66acdvSeL/ZnkoXb0Tgb1GF0AaVeHiOXA8xyOHZ59hJDmTPQfyFZVMqeloP0y4Y.KyX1RUtsW3SUu5ECImiu/";
    sshKeys = [
      "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDNldAg4t13/i69TD786The+U3wbiNUdW2Kc9KNWvEhgpf4y4x4Sft0oYfkPw5cjX4H3APqfD+b7ItAG0GCbwHw6KMYPoVMNK08zBMJUqt1XExbqGeFLqBaeqDsmEAYXJRbjMTAorpOCtgQdoCKK/DvZ51zUWXxT8UBNHSl19Ryv5Ry5VVdbAE35rqs57DQ9+ma6htXnsBEmmnC+1Zv1FE956m/OpBTId50mor7nS2FguAtPZnDPpTd5zl9kZmJEuWCrmy6iinw5V4Uy1mLeZkQv+/FtozbyifCRCvps9nHpv4mBSU5ABLgnRRvXs+D41Jx7xloNADr1nNgpsNrYaTh hed-bot-ssh-tpm-rsa"
      "sk-ssh-ed25519@openssh.com AAAAGnNrLXNzaC1lZDI1NTE5QG9wZW5zc2guY29tAAAAIKYljH8iPMrH00lOb3ETxRrZimdKzPPEdsJQ5D5ovtOwAAAACnNzaDpzc2hrZXk= ssh:sshkey"
    ];
  };

  hexchen = {
    sshKeys = [
      "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDI3T1eFS77URHZ/HVWkMOqx7W1U54zJtn9C7QWsHOtyH72i/4EVj8SxYqLllElh1kuKUXSUipPeEzVsipFVvfH0wEuTDgFffiSQ3a8lfUgdEBuoySwceEoPgc5deapkOmiDIDeeWlrRe3nqspLRrSWU1DirMxoFPbwqJXRvpl6qJPxRg+2IolDcXlZ6yxB4Vv48vzRfVzZNUz7Pjmy2ebU8PbDoFWL/S3m7yOzQpv3L7KYBz7+rkjuF3AU2vy6CAfIySkVpspZZLtkTGCIJF228ev0e8NvhuN6ZnjzXxVTQOy32HCdPdbBbicu0uHfZ5O7JX9DjGd8kk1r2dnZwwy/"
    ];
  };

  iris = {
    sshKeys = [
      "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCaV0grHU0dRdrPQHllJGLtEFJvPYgLXarvw564JLdDHczK7bB9gkfTbuuFffHnJddpVTp5P3kS7wXjcn3fd6K5PsyHtDWYMFvR/MdlYuRUieTWBtmAPp85YwNuxaaTEB09MKXK2RWInlBmkVoi3VlrVyS8brZ6trqgp8U2JSkZEvipoKsst1YsnK49JSmE2DlHzw+ghUo1kOW3L841Mg4P2KunsJgmV1w7fETewlJSdlOBhhuJ8xwpT38CWpUAvfAheDLuPS0Pdt51MR7L/6QLhtzyvlesK47YQJytDHJ2GpExC8xOK67iQulSSEK5KA2aO3S187iwZRQIS6ZuWB1ZLMuWsvaNWGW7wIHguQGY5Q2G2lZQSEljmMGXl9XE9BZHXJJ+VI3MLu7sSqGRLmAYKRt8ezh0nhSvVadCOF5BQubG4CrSxM7hXPtLxL3XRWWrONbeUznC9aS77tusUZa/8HWz3lc2QvqWS/9iah0lOhC4D6dqd+wIZdu0eT3umJU="
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBSp9Tyo5zys2tIi+ImpqcEkKu/TiAy7K4XKEZevwMAc"
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMFI90Q4txCojfukgHJ8bHheeukGGVwgo0W2z2M8YNwT"
    ];
  };

  machine = {
    tail-bot.autobackup.sshKeys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIA7VB1h/qYVrqwyEOzk+GlhgQlYFH9hgt834/QXyxklX zfsbackup@tail-bot"
    ];
  };
}
