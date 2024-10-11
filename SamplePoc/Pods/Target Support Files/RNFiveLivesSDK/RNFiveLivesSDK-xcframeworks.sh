#!/bin/sh
set -e
set -u
set -o pipefail

function on_error {
  echo "$(realpath -mq "${0}"):$1: error: Unexpected failure"
}
trap 'on_error $LINENO' ERR


# This protects against multiple targets copying the same framework dependency at the same time. The solution
# was originally proposed here: https://lists.samba.org/archive/rsync/2008-February/020158.html
RSYNC_PROTECT_TMP_FILES=(--filter "P .*.??????")


variant_for_slice()
{
  case "$1" in
  "BVLinearGradient.xcframework/ios-arm64")
    echo ""
    ;;
  "BVLinearGradient.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "CoreModules.xcframework/ios-arm64")
    echo ""
    ;;
  "CoreModules.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "cxxreact.xcframework/ios-arm64")
    echo ""
    ;;
  "cxxreact.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "DoubleConversion.xcframework/ios-arm64")
    echo ""
    ;;
  "DoubleConversion.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "fmt.xcframework/ios-arm64")
    echo ""
    ;;
  "fmt.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "folly.xcframework/ios-arm64")
    echo ""
    ;;
  "folly.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "glog.xcframework/ios-arm64")
    echo ""
    ;;
  "glog.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "jsi.xcframework/ios-arm64")
    echo ""
    ;;
  "jsi.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "jsinspector_modern.xcframework/ios-arm64")
    echo ""
    ;;
  "jsinspector_modern.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "jsireact.xcframework/ios-arm64")
    echo ""
    ;;
  "jsireact.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "logger.xcframework/ios-arm64")
    echo ""
    ;;
  "logger.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "Lottie.xcframework/ios-arm64")
    echo ""
    ;;
  "Lottie.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "lottie_react_native.xcframework/ios-arm64")
    echo ""
    ;;
  "lottie_react_native.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "Pods_RNFiveLivesSDK.xcframework/ios-arm64")
    echo ""
    ;;
  "Pods_RNFiveLivesSDK.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "RCTAnimation.xcframework/ios-arm64")
    echo ""
    ;;
  "RCTAnimation.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "RCTBlob.xcframework/ios-arm64")
    echo ""
    ;;
  "RCTBlob.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "RCTDeprecation.xcframework/ios-arm64")
    echo ""
    ;;
  "RCTDeprecation.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "RCTFabric.xcframework/ios-arm64")
    echo ""
    ;;
  "RCTFabric.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "RCTImage.xcframework/ios-arm64")
    echo ""
    ;;
  "RCTImage.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "RCTLinking.xcframework/ios-arm64")
    echo ""
    ;;
  "RCTLinking.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "RCTNetwork.xcframework/ios-arm64")
    echo ""
    ;;
  "RCTNetwork.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "RCTSettings.xcframework/ios-arm64")
    echo ""
    ;;
  "RCTSettings.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "RCTText.xcframework/ios-arm64")
    echo ""
    ;;
  "RCTText.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "RCTTypeSafety.xcframework/ios-arm64")
    echo ""
    ;;
  "RCTTypeSafety.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "RCTVibration.xcframework/ios-arm64")
    echo ""
    ;;
  "RCTVibration.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "React.xcframework/ios-arm64")
    echo ""
    ;;
  "React.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "ReactCommon.xcframework/ios-arm64")
    echo ""
    ;;
  "ReactCommon.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "reactperflogger.xcframework/ios-arm64")
    echo ""
    ;;
  "reactperflogger.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "React_Codegen.xcframework/ios-arm64")
    echo ""
    ;;
  "React_Codegen.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "React_debug.xcframework/ios-arm64")
    echo ""
    ;;
  "React_debug.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "React_Fabric.xcframework/ios-arm64")
    echo ""
    ;;
  "React_Fabric.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "React_FabricImage.xcframework/ios-arm64")
    echo ""
    ;;
  "React_FabricImage.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "React_featureflags.xcframework/ios-arm64")
    echo ""
    ;;
  "React_featureflags.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "React_graphics.xcframework/ios-arm64")
    echo ""
    ;;
  "React_graphics.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "React_ImageManager.xcframework/ios-arm64")
    echo ""
    ;;
  "React_ImageManager.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "React_jsc.xcframework/ios-arm64")
    echo ""
    ;;
  "React_jsc.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "React_jserrorhandler.xcframework/ios-arm64")
    echo ""
    ;;
  "React_jserrorhandler.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "React_Mapbuffer.xcframework/ios-arm64")
    echo ""
    ;;
  "React_Mapbuffer.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "React_nativeconfig.xcframework/ios-arm64")
    echo ""
    ;;
  "React_nativeconfig.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "React_NativeModulesApple.xcframework/ios-arm64")
    echo ""
    ;;
  "React_NativeModulesApple.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "react_native_safe_area_context.xcframework/ios-arm64")
    echo ""
    ;;
  "react_native_safe_area_context.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "React_RCTAppDelegate.xcframework/ios-arm64")
    echo ""
    ;;
  "React_RCTAppDelegate.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "React_rendererdebug.xcframework/ios-arm64")
    echo ""
    ;;
  "React_rendererdebug.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "React_RuntimeApple.xcframework/ios-arm64")
    echo ""
    ;;
  "React_RuntimeApple.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "React_RuntimeCore.xcframework/ios-arm64")
    echo ""
    ;;
  "React_RuntimeCore.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "React_runtimescheduler.xcframework/ios-arm64")
    echo ""
    ;;
  "React_runtimescheduler.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "React_utils.xcframework/ios-arm64")
    echo ""
    ;;
  "React_utils.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "RNFiveLivesSDK.xcframework/ios-arm64")
    echo ""
    ;;
  "RNFiveLivesSDK.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "RNGestureHandler.xcframework/ios-arm64")
    echo ""
    ;;
  "RNGestureHandler.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "RNReactNativeHapticFeedback.xcframework/ios-arm64")
    echo ""
    ;;
  "RNReactNativeHapticFeedback.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "RNSound.xcframework/ios-arm64")
    echo ""
    ;;
  "RNSound.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "RNSVG.xcframework/ios-arm64")
    echo ""
    ;;
  "RNSVG.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "SocketRocket.xcframework/ios-arm64")
    echo ""
    ;;
  "SocketRocket.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  "yoga.xcframework/ios-arm64")
    echo ""
    ;;
  "yoga.xcframework/ios-arm64_x86_64-simulator")
    echo "simulator"
    ;;
  esac
}

archs_for_slice()
{
  case "$1" in
  "BVLinearGradient.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "BVLinearGradient.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "CoreModules.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "CoreModules.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "cxxreact.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "cxxreact.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "DoubleConversion.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "DoubleConversion.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "fmt.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "fmt.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "folly.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "folly.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "glog.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "glog.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "jsi.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "jsi.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "jsinspector_modern.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "jsinspector_modern.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "jsireact.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "jsireact.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "logger.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "logger.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "Lottie.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "Lottie.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "lottie_react_native.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "lottie_react_native.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "Pods_RNFiveLivesSDK.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "Pods_RNFiveLivesSDK.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "RCTAnimation.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "RCTAnimation.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "RCTBlob.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "RCTBlob.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "RCTDeprecation.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "RCTDeprecation.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "RCTFabric.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "RCTFabric.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "RCTImage.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "RCTImage.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "RCTLinking.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "RCTLinking.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "RCTNetwork.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "RCTNetwork.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "RCTSettings.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "RCTSettings.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "RCTText.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "RCTText.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "RCTTypeSafety.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "RCTTypeSafety.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "RCTVibration.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "RCTVibration.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "React.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "React.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "ReactCommon.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "ReactCommon.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "reactperflogger.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "reactperflogger.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "React_Codegen.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "React_Codegen.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "React_debug.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "React_debug.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "React_Fabric.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "React_Fabric.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "React_FabricImage.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "React_FabricImage.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "React_featureflags.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "React_featureflags.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "React_graphics.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "React_graphics.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "React_ImageManager.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "React_ImageManager.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "React_jsc.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "React_jsc.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "React_jserrorhandler.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "React_jserrorhandler.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "React_Mapbuffer.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "React_Mapbuffer.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "React_nativeconfig.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "React_nativeconfig.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "React_NativeModulesApple.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "React_NativeModulesApple.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "react_native_safe_area_context.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "react_native_safe_area_context.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "React_RCTAppDelegate.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "React_RCTAppDelegate.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "React_rendererdebug.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "React_rendererdebug.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "React_RuntimeApple.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "React_RuntimeApple.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "React_RuntimeCore.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "React_RuntimeCore.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "React_runtimescheduler.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "React_runtimescheduler.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "React_utils.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "React_utils.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "RNFiveLivesSDK.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "RNFiveLivesSDK.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "RNGestureHandler.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "RNGestureHandler.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "RNReactNativeHapticFeedback.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "RNReactNativeHapticFeedback.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "RNSound.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "RNSound.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "RNSVG.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "RNSVG.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "SocketRocket.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "SocketRocket.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  "yoga.xcframework/ios-arm64")
    echo "arm64"
    ;;
  "yoga.xcframework/ios-arm64_x86_64-simulator")
    echo "arm64 x86_64"
    ;;
  esac
}

copy_dir()
{
  local source="$1"
  local destination="$2"

  # Use filter instead of exclude so missing patterns don't throw errors.
  echo "rsync --delete -av "${RSYNC_PROTECT_TMP_FILES[@]}" --links --filter \"- CVS/\" --filter \"- .svn/\" --filter \"- .git/\" --filter \"- .hg/\" \"${source}*\" \"${destination}\""
  rsync --delete -av "${RSYNC_PROTECT_TMP_FILES[@]}" --links --filter "- CVS/" --filter "- .svn/" --filter "- .git/" --filter "- .hg/" "${source}"/* "${destination}"
}

SELECT_SLICE_RETVAL=""

select_slice() {
  local xcframework_name="$1"
  xcframework_name="${xcframework_name##*/}"
  local paths=("${@:2}")
  # Locate the correct slice of the .xcframework for the current architectures
  local target_path=""

  # Split archs on space so we can find a slice that has all the needed archs
  local target_archs=$(echo $ARCHS | tr " " "\n")

  local target_variant=""
  if [[ "$PLATFORM_NAME" == *"simulator" ]]; then
    target_variant="simulator"
  fi
  if [[ ! -z ${EFFECTIVE_PLATFORM_NAME+x} && "$EFFECTIVE_PLATFORM_NAME" == *"maccatalyst" ]]; then
    target_variant="maccatalyst"
  fi
  for i in ${!paths[@]}; do
    local matched_all_archs="1"
    local slice_archs="$(archs_for_slice "${xcframework_name}/${paths[$i]}")"
    local slice_variant="$(variant_for_slice "${xcframework_name}/${paths[$i]}")"
    for target_arch in $target_archs; do
      if ! [[ "${slice_variant}" == "$target_variant" ]]; then
        matched_all_archs="0"
        break
      fi

      if ! echo "${slice_archs}" | tr " " "\n" | grep -F -q -x "$target_arch"; then
        matched_all_archs="0"
        break
      fi
    done

    if [[ "$matched_all_archs" == "1" ]]; then
      # Found a matching slice
      echo "Selected xcframework slice ${paths[$i]}"
      SELECT_SLICE_RETVAL=${paths[$i]}
      break
    fi
  done
}

install_xcframework() {
  local basepath="$1"
  local name="$2"
  local package_type="$3"
  local paths=("${@:4}")

  # Locate the correct slice of the .xcframework for the current architectures
  select_slice "${basepath}" "${paths[@]}"
  local target_path="$SELECT_SLICE_RETVAL"
  if [[ -z "$target_path" ]]; then
    echo "warning: [CP] $(basename ${basepath}): Unable to find matching slice in '${paths[@]}' for the current build architectures ($ARCHS) and platform (${EFFECTIVE_PLATFORM_NAME-${PLATFORM_NAME}})."
    return
  fi
  local source="$basepath/$target_path"

  local destination="${PODS_XCFRAMEWORKS_BUILD_DIR}/${name}"

  if [ ! -d "$destination" ]; then
    mkdir -p "$destination"
  fi

  copy_dir "$source/" "$destination"
  echo "Copied $source to $destination"
}

install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/BVLinearGradient.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/CoreModules.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/cxxreact.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/DoubleConversion.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/fmt.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/folly.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/glog.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/jsi.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/jsinspector_modern.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/jsireact.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/logger.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/Lottie.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/lottie_react_native.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/Pods_RNFiveLivesSDK.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/RCTAnimation.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/RCTBlob.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/RCTDeprecation.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/RCTFabric.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/RCTImage.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/RCTLinking.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/RCTNetwork.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/RCTSettings.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/RCTText.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/RCTTypeSafety.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/RCTVibration.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/React.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/ReactCommon.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/reactperflogger.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/React_Codegen.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/React_debug.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/React_Fabric.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/React_FabricImage.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/React_featureflags.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/React_graphics.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/React_ImageManager.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/React_jsc.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/React_jserrorhandler.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/React_Mapbuffer.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/React_nativeconfig.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/React_NativeModulesApple.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/react_native_safe_area_context.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/React_RCTAppDelegate.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/React_rendererdebug.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/React_RuntimeApple.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/React_RuntimeCore.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/React_runtimescheduler.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/React_utils.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/RNFiveLivesSDK.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/RNGestureHandler.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/RNReactNativeHapticFeedback.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/RNSound.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/RNSVG.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/SocketRocket.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"
install_xcframework "${PODS_ROOT}/../SDKOutput/Frameworks/yoga.xcframework" "RNFiveLivesSDK" "framework" "ios-arm64" "ios-arm64_x86_64-simulator"

