# repo init rom
repo init -u https://github.com/RisingOS-Revived/android -b sixteen-los --git-lfs
#linux-x86 remove
rm -rf prebuilts/clang/host/linux-x86

#sync
/opt/crave/resync.sh

# clone dt
git clone https://github.com/aLpHa-Git-69/android_device_xiaomi_lavender.git -b Rising device/xiaomi/lavender
git clone https://github.com/aLpHa-Git-69/android_vendor_xiaomi_lavender.git -b 16 vendor/xiaomi/lavender
git clone https://github.com/aLpHa-Git-69/android_kernel_xiaomi_southwest-4.19.git -b main-dynamic kernel/xiaomi/sdm660
git clone https://github.com/aLpHa-Git-69/android_hardware_xiaomi.git -b lineage-22.2 hardware/xiaomi
git clone https://github.com/aLpHa-Git-69/android_device_xiaomi_sdm660-common.git -b 16 device/xiaomi/sdm660-common
git clone https://github.com/aLpHa-Git-69/android_vendor_xiaomi_sdm660-common.git -b 16 vendor/xiaomi/sdm660-common
git clone https://github.com/aLpHa-Git-69/android_hardware_qcom-caf_audio.git -b lineage-22.2-caf-sdm660 hardware/qcom-caf/sdm660/audio
git clone https://github.com/aLpHa-Git-69/android_hardware_qcom-caf_display -b lineage-22.2-caf-sdm660 hardware/qcom-caf/sdm660/display
#sign
#curl -sSf https://raw.githubusercontent.com/Trijal08/crDroid-build-signed-script-auto/main/create-signed-env.sh | bash
gk -f

# Setup the bubuilenvironment
. build/envsetup.sh

# Lunch
riseup lavender userdebug

# Build
rise sb
