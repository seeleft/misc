#!/bin/sh

#             DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#                     Version 2, December 2004
#
#  Copyright (C) 2019 Daniel Riegler <prnxchannel@gmail.com>
#
#  Everyone is permitted to copy and distribute verbatim or modified
#  copies of this license document, and changing it is allowed as long
#  as the name is changed.
#
#             DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#    TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
#
#   0. You just DO WHAT THE FUCK YOU WANT TO.

# Helper script which renews cerbot SSL certificates

# Locate certbot
CERTBOT=$(command -v certbot)

# Check if certbot location is empty
if test -z "$CERTBOT"; then
  printf "\033[0;31mCould not locate certbot executable.\n\033[0m"
  exit 1
fi

# Run certbot
$CERTBOT renew
