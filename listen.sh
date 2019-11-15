# brew install xquartz
# (logout and login on Mac)
# open -a Xquartz
# Update X11 preferences to allow connections from network clients
# brew install socat
socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\"
