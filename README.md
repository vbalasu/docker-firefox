# Run Firefox in a Docker Container on Mac

You can run desktop applications within Docker!

#### listen.sh
```
# brew install xquartz
# (logout and login on Mac)
# open -a Xquartz
# Update X11 preferences to allow connections from network clients
# brew install socat
socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\"
```

#### run_xeyes.sh
```
docker run --rm -e DISPLAY=$(./get_ip_address.sh):0 gns3/xeyes
```

#### run_firefox.sh
```
docker run --rm -e DISPLAY=$(./get_ip_address.sh):0 firefox
```

#### get_ip_address.sh
```
ifconfig | grep "inet " | grep -v 127.0.0.1 | cut -d\  -f2
```


### Useful links

https://cntnr.io/running-guis-with-docker-on-mac-os-x-a14df6a76efc

http://fabiorehm.com/blog/2014/09/11/running-gui-apps-with-docker/
