### proxy info

     If apt-get update fails with Error 407 related to Proxy


* [X] Place the [`apt.conf`](./apt.conf) file in the path `/etc/apt/`    
* [X] Change the contents in the [`apt.conf`](./apt.conf) wrt 'username', 'password', and actual 'proxy address'.
* [X] `man apt.conf` says, if `http::Proxy` is NOT set, `http_proxy` environment variable will be used. 

##### Proxy server address from .pac
* How to get the proxy server address, to be used in Virtual Machine env. when Host is Windows?


    Look for the .pac (proxy automatic Configuration) file, can be found from IE settings
    Check for the proxy server name
    From a command prompt/Linux terminal `ping company-proxy-.name.com`
    Read the output [zz.yy.xx.vv], that is the proxy server IP address
     