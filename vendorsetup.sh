#!/bin/bash

echo "Cloning All resources"

# Vendor
echo "Cloning vendor tree"
git clone -b lineage-23.0 --depth 1 https://github.com/Poco-F6-resources/proprietary_vendor_xiaomi_peridot.git vendor/xiaomi/peridot

echo "Cloning Old Kernel sources"
# Kernel sources
git clone -b lineage-23.0-old --depth 1 https://github.com/Poco-F6-resources/android_kernel_xiaomi_sm8635.git kernel/xiaomi/sm8635

rm -rf kernel/xiaomi/sm8635-modules
git clone -b lineage-23.0-old --depth 1 https://github.com/Poco-F6-resources/android_kernel_xiaomi_sm8635-modules.git kernel/xiaomi/sm8635-modules

rm -rf kernel/xiaomi/sm8635-devicetrees
git clone -b lineage-23.0-old --depth 1 https://github.com/Poco-F6-resources/android_kernel_xiaomi_sm8635-devicetrees.git kernel/xiaomi/sm8635-devicetrees

# Hardware xiaomi
echo "Cloning hardware xiaomi test branch"
rm -rf hardware/xiaomi
git clone -b test https://github.com/Poco-F6-resources/android_hardware_xiaomi.git hardware/xiaomi

# Dolby
echo "Cloning XiaomiDolby"
git clone -b lineage-23.0 https://github.com/Poco-F6-resources/android_packages_apps_XiaomiDolby.git packages/apps/XiaomiDolby

# Mi Cam
echo "cloning Mi Cam"
# Miuicamera
git clone -b aosp-15-qpr2 --depth 1 https://github.com/F6-test/vendor-xiaomi-peridot-miuicamera.git vendor/xiaomi/peridot-miuicamera
git clone -b aosp-15-qpr2 --depth 1 https://github.com/F6-test/device_xiaomi_peridot-miuicamera.git device/xiaomi/peridot-miuicamera