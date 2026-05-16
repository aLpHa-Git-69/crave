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

git clone https://github.com/aLpHa-Git-69/device_xiaomi_camellia.git -b exp device/xiaomi/camellia
git clone https://github.com/aLpHa-Git-69/vendor-xiaomi-camellia.git vendor/xiaomi/camellia
git clone https://github.com/aLpHa-Git-69/kernel_xiaomi_mt6833.git kernel/xiaomi/mt6833
git clone https://github.com/xiaomi-mediatek-devs/android_vendor_mediatek_ims.git vendor/mediatek/ims

echo "---------------------"
echo "Tress clone completed"
echo "---------------------"

# build env

. b*/e*

echo "---------------------------"
echo "Build/envsetup.sh completed"
echo "---------------------------"

# signing script

gk -s

echo "----------------------------"
echo "Rom signed with private keys"
echo "----------------------------"

# boss

axion camellia va

ax -br

echo "----------"
echo "Done"
echo "----------"
