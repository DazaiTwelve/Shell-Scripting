#!/bin/bash

# Check if neofetch should run
if [ -z "$NO_NEOFETCH" ]; then
  export NO_NEOFETCH=1
  neofetch
  
	ps

	fortune | cowsay
fi

if [ -z "$NO_CAVA" ]; then
  export NO_CAVA=1

  gnome-terminal -- bash -c "cava; exec bash" &


  wmctrl -r :ACTIVE: -e 0,400,1000,-1,-1  
fi

