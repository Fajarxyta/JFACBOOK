# JFACBOOK

## Installation

* [Linux](https://drive.google.com/file/d/1IbP1CHRwOzUKHyq0AZz9MbuzjQKhGdtL/view?usp=drivesdk) - [Termux](https://f-droid.org/repo/com.termux_118.apk)

  ```
  pkg update -y && pkg upgrade -y
  pkg install python-pip clang binutils git libffi openssl libsodium iproute2 build-essential
  SODIUM_INSTALL=system pip install pynacl
  apt install python-cryptography
  git clone --depth 1 https://github.com/Fajarxyta/JFACBOOK.git
  cd "JFACBOOK"
  chmod +x setup.sh
  ./setup.sh
  ```
  - Running on Termux

    ```
    cd "$HOME/JFACBOOK"
    Run.py
    ```
