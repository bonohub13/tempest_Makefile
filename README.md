# Install script for tempest theme for xscreensaver

## Install
1. Download the tempest theme from [here](https://www.pling.com/p/1124050)
2. Extract the tar file
``` bash
mkdir -p ./tempest && tar xzvf 53056-tempest.tar.gz -C ./tempest
```
3. To install, run the make command as the following
    - For KDE users
    ``` bash
    make install-KDE
    ```
    - For xscreensaver
        - Add `  GL: tempest -root \n\` to ~/.xscreensaver
        - And then run
        ``` bash
        mkdir install
        ```
