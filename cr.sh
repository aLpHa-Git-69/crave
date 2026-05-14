# Rom repo init

repo init -u https://github.com/AxionAOSP/android.git -b lineage-23.2 --git-lfs

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

git clone https://github.com/aLpHa-Git-69/device_xiaomi_camellia.git device/xiaomi/camellia
git clone https://github.com/aLpHa-Git-69/vendor-xiaomi-camellia.git vendor/xiaomi/camellia
git clone https://github.com/aLpHa-Git-69/kernel_xiaomi_mt6833.git kernel/xiaomi/mt6833

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

brunch camellia

echo "----------"
echo "Brunch done"
echo "----------"
