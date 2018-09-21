{
STATUS=0

# Check gcc
  GCCVER=$(gcc -dumpversion)
  if [[ $? != '0' ]]; then
    echo "PROBLEM:"
    echo "Need minimum of GCC 3.3!"
    echo
    STATUS=1
  fi

  MAJ=$(echo $GCCVER | awk '{ split($0,a,"."); print a[1] }')
  MIN=$(echo $GCCVER | awk '{ split($0,a,"."); print a[2] }')
  if (( $MAJ == 3 && $MIN < 3 )); then 
    echo "PROBLEM:"
    echo "Need minimum of GCC 3.3!"
    echo
    STATUS=1
  fi
  if (( $MAJ < 3 )); then 
    echo "PROBLEM:"
    echo "Need minimum of GCC 3.3!"
    echo
    STATUS=1
  fi


# Check binutils
  which ld &> /dev/null; LD=$?
  which objcopy &> /dev/null; OBJCOPY=$?
  if [[ $LD != '0' || $OBJCOPY != '0' ]]; then 
    echo "PROBLEM:"
    echo "Need GNU binutils, please run the following:"
    echo "  sudo apt-get install binutils"
    echo
    STATUS=1
  fi

# Check Perl
  $(perl -e 'use 5.6.1')
  if [[ $? != '0' ]]; then
    echo "PROBLEM:"
    echo "Need minimum of Perl 5.6.1, please run the following:"
    echo "  sudo apt-get update"
    echo "  sudo apt-get upgrade"
    echo "  sudo apt-get install perl"
    echo
    STATUS=1
  fi

# Check qemu-system-i386
  which qemu-system-i386 &> /dev/null
  if (( $? != 0 )); then
    echo "PROBLEM:"
    echo "Need qemu for i386, please run the following:"
    echo "  sudo apt-get install qemu"
    echo
    STATUS=1
  fi

  exit $STATUS
} 2> /dev/null
