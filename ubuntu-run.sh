echo this can run commands in terminal tho
sudo apt-get update --fix-missing 
sudo apt-get install git curl
sudo curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo 
sudo chmod a+x ~/bin/repo 
repo init -u https://github.com/PitchBlackRecoveryProject/manifest_pb -b android-10.0 
repo sync
sudo apt-get install bc bison build-essential zstd clang flex gnupg gperf ccache liblz4-tool libncurses5-dev libsdl1.2-dev libstdc++6 libxml2 libxml2-utils lzop pngcrush schedtool squashfs-tools xsltproc zlib1g-dev libncurses5-dev bzip2 git gcc g++ libssl-dev openssl -y && sudo apt-get install gcc-aarch64-linux-gnu && sudo apt-get install gcc-arm-linux-gnueabihf && sudo apt-get install lld && sudo apt-get install gcc-arm-linux-gnueabi && sudo apt-get install llvm
