sudo tar --numeric-owner \
  --exclude=/proc \
  --exclude=/sys \
  --exclude=/dev \
  --exclude=/tmp \
  --exclude=/var/cache \
  --exclude=/var/log \
  -czf machine-rootfs.tar.gz /
