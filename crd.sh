# repo init rom
repo init -u https://github.com/RisingOS-Revived/android -b sixteen-los --git-lfs
#linux-x86 remove
rm -rf prebuilts/clang/host/linux-x86

#sync
/opt/crave/resync.sh

# clone dt
git clone https://github.com/aLpHa-Git-69/android_device_xiaomi_lavender.git -b Rising device/xiaomi/lavender

#sign
#curl -sSf https://raw.githubusercontent.com/Trijal08/crDroid-build-signed-script-auto/main/create-signed-env.sh | bash
gk -f

# Setup the bubuilenvironment
. build/envsetup.sh

# Lunch
riseup lavender userdebug

# Build
rise sb
