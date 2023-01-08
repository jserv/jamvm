ARCH=
case "$(uname -m)" in
  x86_64)
    ARCH=x64
    JARCH=amd64
    ;;
  aarch64)
    ARCH=aarch64
    JARCH=aarch64
    ;;
  *)
    exit 1
    ;;
esac
