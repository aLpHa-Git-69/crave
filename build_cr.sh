# Rom repo init

repo init -u https://github.com/crdroidandroid/android.git -b 16.0 --git-lfs --no-clone-bundle

echo "-----------------------------"
echo "Repo init cloned successfully"
echo "-----------------------------"

# sycning

echo "-----------------------"
echo "Starting to sync source"
echo "-----------------------"

/opt/crave/resync.sh

/opt/crave/resync.sh

/opt/crave/resync.sh

echo "------------------------"
echo "Source syncing comppeted"
echo "------------------------"


# Dt

git clone https://github.com/aLpHa-Git-69/device_xiaomi_lavender -b crd device/xiaomi/lavender
git clone https://github.com/Amritorock/vendor_xiaomi_lavender vendor/xiaomi/lavender
git clone https://github.com/Amritorock/kernel_xiaomi_lavender -b android-16 kernel/xiaomi/lavender --depth=1
git clone https://github.com/LineageOS/android_hardware_xiaomi hardware/xiaomi
git clone https://github.com/Amritorock/hardware_dolby hardware/dolby


echo "---------------------"
echo "Tress clone completed"
echo "---------------------"

# build env

. b*/e*

echo "---------------------------"
echo "Build/envsetup.sh completed"
echo "---------------------------"

# signing script

curl -sSf https://raw.githubusercontent.com/Trijal08/crDroid-build-signed-script-auto/main/create-signed-env.sh | bash

echo "----------------------------"
echo "Rom signed with private keys"
echo "----------------------------"

# lunch

brunch lavender

echo "----------"
echo "Brunch done"
echo "----------"
