# sed $INSTALL_TYPE is using install type to check for MINIMAL installation, if it's true, stop
# stop the script and move on, not installing any more packages below that line
if [[ ! $DESKTOP_ENV == server ]]; then
  sed -n '/'$INSTALL_TYPE'/q;p' $HOME/ArchTitus/pkg-files/pacman-pkgs.txt | while read line
  do
    if [[ ${line} == '--END OF MINIMAL INSTALL--' ]]; then
      # If selected installation type is FULL, skip the --END OF THE MINIMAL INSTALLATION-- line
      continue
    fi
    echo "INSTALLING: ${line}"
    sudo pacman -S --noconfirm --needed ${line}
  done
fi