SCRIPT=`realpath -s $BASH_SOURCE[0]`
SCRIPTPATH=`dirname $SCRIPT`

run () {
  ./.check_reqs.sh
  if [[ $? != '0' ]]; then
    echo 'FATAL: Requirements not met, please follow recommended installation'
    echo 'commands before continuing.'
    return 1
  fi

  # Install pintos
  which pintos &> /dev/null
  if [[ $? != '0' ]]; then
    echo 'Installing pintos to PATH ...'

    echo "export PATH=\$PATH:$SCRIPTPATH/utils" > .PINTOS_PATH

    # No bashrc yet? Just make a blank
    touch ~/.bashrc
    # Backup bashrc
    cp ~/.bashrc ~/.bashrc.PINTOS.BAK
    echo >> ~/.bashrc
    echo "# Put pintos in PATH" >> ~/.bashrc
    echo "source $SCRIPTPATH/.PINTOS_PATH" >> ~/.bashrc

    # alias pintos-gdb while we're at it
    MACROS_PATH=$SCRIPTPATH/misc/gdb-macros
    echo "alias pintos-gdb='GDBMACROS=$MACROS_PATH pintos-gdb'" >> ~/.bashrc

    source ~/.bashrc
    if [[ $? != '0' ]]; then
      echo "Installing pintos to PATH failed!"
      cp -f ~/.bashrc.PINTOS.BAK ~/.bashrc
      return 1
    fi

    source .PINTOS_PATH
    which pintos &> /dev/null
    if [[ $? != '0' ]]; then
      echo "Installing pintos to PATH failed!"
      cp -f ~/.bashrc.PINTOS.BAK ~/.bashrc
      return 1
    fi

    echo "DONE"
    echo
  fi

  # Build pintos utils
  echo "Making pintos utils ..." 

  pushd utils &> /dev/null
  make &> /dev/null
  if [[ $? != '0' ]]; then
    echo "Building pintos utils failed!"
    popd &> /dev/null
    return 1
  fi
  popd &> /dev/null

  echo "DONE"
  echo

  # Install QEMU
  which qemu &> /dev/null
  if [[ $? != '0' ]]; then
    echo 'Symlinking qemu-system-i386 -> qemu ...'

    QEMU_SYSTEM=`which qemu-system-i386`
    QEMU_PATH=`dirname $QEMU_SYSTEM`
    ln -s $QEMU_SYSTEM utils/qemu 

    which qemu &> /dev/null
    if [[ $? != '0' ]]; then
      echo "Symlinking qemu failed!"
      return 1
    fi
    echo "DONE"
  fi
}

run
