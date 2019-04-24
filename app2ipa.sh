#!/bin/bash
#/Users/testdroid/Library/Developer/Xcode/DerivedData/calculator*/Build/Products/Debug-iphonesimulator
work_dir=$1
app_name=$2
rm -rf cd /tmp/Payload
mkdir /tmp/Payload
cd /tmp/Payload
cp -r "${work_dir}/${app_name}.app" .
cd ..
zip --symlinks -qr "${app_name}.ipa" Payload
ls -ltr $2.ipa
cp -r "${work_dir}/${app_name}UITests-Runner.app" .
zip -r "${app_name}Runner.zip" "${app_name}UITests-Runner.app"