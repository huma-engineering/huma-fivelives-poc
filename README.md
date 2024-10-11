## SamplePoc
This is a small proof-of-concept app demonstrating the loading of FiveLive's SDK game view. It's using the newly written wrapper called RNViewManager. RNViewManager is added on top of the existing React Native-based FiveLivesSDK.

**Important notes**
- Added a local RNFivesLivesSDK pod in Podfile
- Created RNFivesLivesSDK.podspecs to import RNFiveLivesSDK library

## FivesLivesSDK
This is existing FiveLives' React Native-based SDK.

**Important notes**
- created two scripts inside `/scripts` folder: `bundle-ios.sh` and `build-fw-ios.sh`
- the new scripts are added to package.json as new run command `build-sdk-ios`
- `bundle-ios.sh` creates index.js
- `build-fw-ios.sh` generates resources and frameworks from RN library

**New native wrapper**
- `RNFivesLivesSDK` is the new native-based wrapper SDK where it exposes RNViewManager. The latter exposes the game view from RN JS bundle.
- This new wrapper SDK will be imported as local development pod in SamplePoc app
