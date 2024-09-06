#!/bin/bash

# Check if neofetch should run
if [ -z "$NO_NEOFETCH" ]; then
  export NO_NEOFETCH=1
  neofetch
  
# Display running processes
	ps

# Display fortune with cowsay
	fortune | cowsay
fi

# Run cava in a separate terminal to avoid blocking
if [ -z "$NO_CAVA" ]; then
  export NO_CAVA=1

  # Open a new terminal window for cava, minimized and at a fixed location
  gnome-terminal -- bash -c "cava; exec bash" &
  
  # Wait for a moment to let the terminal window open

  

  wmctrl -r :ACTIVE: -e 0,400,1000,-1,-1  # Move to position (100,100)
fi

