#!/bin/bash
echo "Building MobileMessaging.xcframework with Carthage started..."

# Navigate to the Carthage directory
cd plugins/com-infobip-plugins-mobilemessaging/libs/ios/ || exit

# Set the iOS deployment target to 13.0
export IPHONEOS_DEPLOYMENT_TARGET=13.0

# Update Carthage with cache builds and xcframeworks
# Add the specific platform to avoid building for unwanted platforms
carthage update --platform iOS --cache-builds --use-xcframeworks

echo "Building MobileMessaging.xcframework with Carthage finished."

# Navigate back to the original directory
cd - || exit
