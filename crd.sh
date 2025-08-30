# repo init rom
repo init -u https://github.com/DerpFest-AOSP/android_manifest.git -b 16 --git-lfs

#linux-x86 remove
rm -rf prebuilts/clang/host/linux-x86

#sync 
/opt/crave/resync.sh

# clone dt
git clone https://github.com/gty799/android_device_xiaomi_lavender.git -b derp device/xiaomi/lavender

#sign
curl -sSf https://raw.githubusercontent.com/Trijal08/crDroid-build-signed-script-auto/main/create-signed-env.sh | bash

# Setup the bubuilenvironment
. build/envsetup.sh

# Lunch
lunch lineage_lavender-bp2a-userdebug

# Build
mka derp
