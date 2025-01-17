
/**
 * This code was generated by [react-native-codegen](https://www.npmjs.com/package/react-native-codegen).
 *
 * Do not edit this file as changes may cause incorrect behavior and will be lost
 * once the code is regenerated.
 *
 * @generated by codegen project: GeneratePropsH.js
 */
#pragma once

#include <react/renderer/components/view/ViewProps.h>
#include <react/renderer/core/PropsParserContext.h>
#include <react/renderer/core/propsConversions.h>
#include <react/renderer/graphics/Color.h>

namespace facebook::react {

class RNSFullWindowOverlayProps final : public ViewProps {
 public:
  RNSFullWindowOverlayProps() = default;
  RNSFullWindowOverlayProps(const PropsParserContext& context, const RNSFullWindowOverlayProps &sourceProps, const RawProps &rawProps);

#pragma mark - Props

  
};

class RNSScreenContainerProps final : public ViewProps {
 public:
  RNSScreenContainerProps() = default;
  RNSScreenContainerProps(const PropsParserContext& context, const RNSScreenContainerProps &sourceProps, const RawProps &rawProps);

#pragma mark - Props

  
};

enum class RNSScreenSheetAllowedDetents { Large, Medium, All };

static inline void fromRawValue(const PropsParserContext& context, const RawValue &value, RNSScreenSheetAllowedDetents &result) {
  auto string = (std::string)value;
  if (string == "large") { result = RNSScreenSheetAllowedDetents::Large; return; }
  if (string == "medium") { result = RNSScreenSheetAllowedDetents::Medium; return; }
  if (string == "all") { result = RNSScreenSheetAllowedDetents::All; return; }
  abort();
}

static inline std::string toString(const RNSScreenSheetAllowedDetents &value) {
  switch (value) {
    case RNSScreenSheetAllowedDetents::Large: return "large";
    case RNSScreenSheetAllowedDetents::Medium: return "medium";
    case RNSScreenSheetAllowedDetents::All: return "all";
  }
}
enum class RNSScreenSheetLargestUndimmedDetent { Large, Medium, All };

static inline void fromRawValue(const PropsParserContext& context, const RawValue &value, RNSScreenSheetLargestUndimmedDetent &result) {
  auto string = (std::string)value;
  if (string == "large") { result = RNSScreenSheetLargestUndimmedDetent::Large; return; }
  if (string == "medium") { result = RNSScreenSheetLargestUndimmedDetent::Medium; return; }
  if (string == "all") { result = RNSScreenSheetLargestUndimmedDetent::All; return; }
  abort();
}

static inline std::string toString(const RNSScreenSheetLargestUndimmedDetent &value) {
  switch (value) {
    case RNSScreenSheetLargestUndimmedDetent::Large: return "large";
    case RNSScreenSheetLargestUndimmedDetent::Medium: return "medium";
    case RNSScreenSheetLargestUndimmedDetent::All: return "all";
  }
}
enum class RNSScreenStackPresentation { Push, Modal, TransparentModal, FullScreenModal, FormSheet, ContainedModal, ContainedTransparentModal };

static inline void fromRawValue(const PropsParserContext& context, const RawValue &value, RNSScreenStackPresentation &result) {
  auto string = (std::string)value;
  if (string == "push") { result = RNSScreenStackPresentation::Push; return; }
  if (string == "modal") { result = RNSScreenStackPresentation::Modal; return; }
  if (string == "transparentModal") { result = RNSScreenStackPresentation::TransparentModal; return; }
  if (string == "fullScreenModal") { result = RNSScreenStackPresentation::FullScreenModal; return; }
  if (string == "formSheet") { result = RNSScreenStackPresentation::FormSheet; return; }
  if (string == "containedModal") { result = RNSScreenStackPresentation::ContainedModal; return; }
  if (string == "containedTransparentModal") { result = RNSScreenStackPresentation::ContainedTransparentModal; return; }
  abort();
}

static inline std::string toString(const RNSScreenStackPresentation &value) {
  switch (value) {
    case RNSScreenStackPresentation::Push: return "push";
    case RNSScreenStackPresentation::Modal: return "modal";
    case RNSScreenStackPresentation::TransparentModal: return "transparentModal";
    case RNSScreenStackPresentation::FullScreenModal: return "fullScreenModal";
    case RNSScreenStackPresentation::FormSheet: return "formSheet";
    case RNSScreenStackPresentation::ContainedModal: return "containedModal";
    case RNSScreenStackPresentation::ContainedTransparentModal: return "containedTransparentModal";
  }
}
enum class RNSScreenStackAnimation { Default, Flip, Simple_push, None, Fade, Slide_from_right, Slide_from_left, Slide_from_bottom, Fade_from_bottom };

static inline void fromRawValue(const PropsParserContext& context, const RawValue &value, RNSScreenStackAnimation &result) {
  auto string = (std::string)value;
  if (string == "default") { result = RNSScreenStackAnimation::Default; return; }
  if (string == "flip") { result = RNSScreenStackAnimation::Flip; return; }
  if (string == "simple_push") { result = RNSScreenStackAnimation::Simple_push; return; }
  if (string == "none") { result = RNSScreenStackAnimation::None; return; }
  if (string == "fade") { result = RNSScreenStackAnimation::Fade; return; }
  if (string == "slide_from_right") { result = RNSScreenStackAnimation::Slide_from_right; return; }
  if (string == "slide_from_left") { result = RNSScreenStackAnimation::Slide_from_left; return; }
  if (string == "slide_from_bottom") { result = RNSScreenStackAnimation::Slide_from_bottom; return; }
  if (string == "fade_from_bottom") { result = RNSScreenStackAnimation::Fade_from_bottom; return; }
  abort();
}

static inline std::string toString(const RNSScreenStackAnimation &value) {
  switch (value) {
    case RNSScreenStackAnimation::Default: return "default";
    case RNSScreenStackAnimation::Flip: return "flip";
    case RNSScreenStackAnimation::Simple_push: return "simple_push";
    case RNSScreenStackAnimation::None: return "none";
    case RNSScreenStackAnimation::Fade: return "fade";
    case RNSScreenStackAnimation::Slide_from_right: return "slide_from_right";
    case RNSScreenStackAnimation::Slide_from_left: return "slide_from_left";
    case RNSScreenStackAnimation::Slide_from_bottom: return "slide_from_bottom";
    case RNSScreenStackAnimation::Fade_from_bottom: return "fade_from_bottom";
  }
}
enum class RNSScreenReplaceAnimation { Pop, Push };

static inline void fromRawValue(const PropsParserContext& context, const RawValue &value, RNSScreenReplaceAnimation &result) {
  auto string = (std::string)value;
  if (string == "pop") { result = RNSScreenReplaceAnimation::Pop; return; }
  if (string == "push") { result = RNSScreenReplaceAnimation::Push; return; }
  abort();
}

static inline std::string toString(const RNSScreenReplaceAnimation &value) {
  switch (value) {
    case RNSScreenReplaceAnimation::Pop: return "pop";
    case RNSScreenReplaceAnimation::Push: return "push";
  }
}
enum class RNSScreenSwipeDirection { Vertical, Horizontal };

static inline void fromRawValue(const PropsParserContext& context, const RawValue &value, RNSScreenSwipeDirection &result) {
  auto string = (std::string)value;
  if (string == "vertical") { result = RNSScreenSwipeDirection::Vertical; return; }
  if (string == "horizontal") { result = RNSScreenSwipeDirection::Horizontal; return; }
  abort();
}

static inline std::string toString(const RNSScreenSwipeDirection &value) {
  switch (value) {
    case RNSScreenSwipeDirection::Vertical: return "vertical";
    case RNSScreenSwipeDirection::Horizontal: return "horizontal";
  }
}
struct RNSScreenGestureResponseDistanceStruct {
  Float start{0.0};
  Float end{0.0};
  Float top{0.0};
  Float bottom{0.0};
};

static inline void fromRawValue(const PropsParserContext& context, const RawValue &value, RNSScreenGestureResponseDistanceStruct &result) {
  auto map = (std::unordered_map<std::string, RawValue>)value;

  auto tmp_start = map.find("start");
  if (tmp_start != map.end()) {
    fromRawValue(context, tmp_start->second, result.start);
  }
  auto tmp_end = map.find("end");
  if (tmp_end != map.end()) {
    fromRawValue(context, tmp_end->second, result.end);
  }
  auto tmp_top = map.find("top");
  if (tmp_top != map.end()) {
    fromRawValue(context, tmp_top->second, result.top);
  }
  auto tmp_bottom = map.find("bottom");
  if (tmp_bottom != map.end()) {
    fromRawValue(context, tmp_bottom->second, result.bottom);
  }
}

static inline std::string toString(const RNSScreenGestureResponseDistanceStruct &value) {
  return "[Object RNSScreenGestureResponseDistanceStruct]";
}
class RNSScreenProps final : public ViewProps {
 public:
  RNSScreenProps() = default;
  RNSScreenProps(const PropsParserContext& context, const RNSScreenProps &sourceProps, const RawProps &rawProps);

#pragma mark - Props

  RNSScreenSheetAllowedDetents sheetAllowedDetents{RNSScreenSheetAllowedDetents::Large};
  RNSScreenSheetLargestUndimmedDetent sheetLargestUndimmedDetent{RNSScreenSheetLargestUndimmedDetent::All};
  bool sheetGrabberVisible{false};
  Float sheetCornerRadius{-1.0};
  bool sheetExpandsWhenScrolledToEdge{false};
  bool customAnimationOnSwipe{false};
  bool fullScreenSwipeEnabled{false};
  bool homeIndicatorHidden{false};
  bool preventNativeDismiss{false};
  bool gestureEnabled{true};
  SharedColor statusBarColor{};
  bool statusBarHidden{false};
  std::string screenOrientation{};
  std::string statusBarAnimation{};
  std::string statusBarStyle{};
  bool statusBarTranslucent{false};
  RNSScreenGestureResponseDistanceStruct gestureResponseDistance{};
  RNSScreenStackPresentation stackPresentation{RNSScreenStackPresentation::Push};
  RNSScreenStackAnimation stackAnimation{RNSScreenStackAnimation::Default};
  int transitionDuration{350};
  RNSScreenReplaceAnimation replaceAnimation{RNSScreenReplaceAnimation::Pop};
  RNSScreenSwipeDirection swipeDirection{RNSScreenSwipeDirection::Horizontal};
  bool hideKeyboardOnSwipe{false};
  Float activityState{-1.0};
  SharedColor navigationBarColor{};
  bool navigationBarHidden{false};
  bool nativeBackButtonDismissalEnabled{false};
};

class RNSScreenNavigationContainerProps final : public ViewProps {
 public:
  RNSScreenNavigationContainerProps() = default;
  RNSScreenNavigationContainerProps(const PropsParserContext& context, const RNSScreenNavigationContainerProps &sourceProps, const RawProps &rawProps);

#pragma mark - Props

  
};

enum class RNSScreenStackHeaderConfigDirection { Rtl, Ltr };

static inline void fromRawValue(const PropsParserContext& context, const RawValue &value, RNSScreenStackHeaderConfigDirection &result) {
  auto string = (std::string)value;
  if (string == "rtl") { result = RNSScreenStackHeaderConfigDirection::Rtl; return; }
  if (string == "ltr") { result = RNSScreenStackHeaderConfigDirection::Ltr; return; }
  abort();
}

static inline std::string toString(const RNSScreenStackHeaderConfigDirection &value) {
  switch (value) {
    case RNSScreenStackHeaderConfigDirection::Rtl: return "rtl";
    case RNSScreenStackHeaderConfigDirection::Ltr: return "ltr";
  }
}

class RNSScreenStackHeaderConfigProps final : public ViewProps {
 public:
  RNSScreenStackHeaderConfigProps() = default;
  RNSScreenStackHeaderConfigProps(const PropsParserContext& context, const RNSScreenStackHeaderConfigProps &sourceProps, const RawProps &rawProps);

#pragma mark - Props

  SharedColor backgroundColor{};
  std::string backTitle{};
  std::string backTitleFontFamily{};
  int backTitleFontSize{0};
  bool backTitleVisible{true};
  SharedColor color{};
  RNSScreenStackHeaderConfigDirection direction{RNSScreenStackHeaderConfigDirection::Ltr};
  bool hidden{false};
  bool hideShadow{false};
  bool largeTitle{false};
  std::string largeTitleFontFamily{};
  int largeTitleFontSize{0};
  std::string largeTitleFontWeight{};
  SharedColor largeTitleBackgroundColor{};
  bool largeTitleHideShadow{false};
  SharedColor largeTitleColor{};
  bool translucent{false};
  std::string title{};
  std::string titleFontFamily{};
  int titleFontSize{0};
  std::string titleFontWeight{};
  SharedColor titleColor{};
  bool disableBackButtonMenu{false};
  bool hideBackButton{false};
  bool backButtonInCustomView{false};
  bool topInsetEnabled{false};
};

enum class RNSScreenStackHeaderSubviewType { Back, Right, Left, Title, Center, SearchBar };

static inline void fromRawValue(const PropsParserContext& context, const RawValue &value, RNSScreenStackHeaderSubviewType &result) {
  auto string = (std::string)value;
  if (string == "back") { result = RNSScreenStackHeaderSubviewType::Back; return; }
  if (string == "right") { result = RNSScreenStackHeaderSubviewType::Right; return; }
  if (string == "left") { result = RNSScreenStackHeaderSubviewType::Left; return; }
  if (string == "title") { result = RNSScreenStackHeaderSubviewType::Title; return; }
  if (string == "center") { result = RNSScreenStackHeaderSubviewType::Center; return; }
  if (string == "searchBar") { result = RNSScreenStackHeaderSubviewType::SearchBar; return; }
  abort();
}

static inline std::string toString(const RNSScreenStackHeaderSubviewType &value) {
  switch (value) {
    case RNSScreenStackHeaderSubviewType::Back: return "back";
    case RNSScreenStackHeaderSubviewType::Right: return "right";
    case RNSScreenStackHeaderSubviewType::Left: return "left";
    case RNSScreenStackHeaderSubviewType::Title: return "title";
    case RNSScreenStackHeaderSubviewType::Center: return "center";
    case RNSScreenStackHeaderSubviewType::SearchBar: return "searchBar";
  }
}

class RNSScreenStackHeaderSubviewProps final : public ViewProps {
 public:
  RNSScreenStackHeaderSubviewProps() = default;
  RNSScreenStackHeaderSubviewProps(const PropsParserContext& context, const RNSScreenStackHeaderSubviewProps &sourceProps, const RawProps &rawProps);

#pragma mark - Props

  RNSScreenStackHeaderSubviewType type{RNSScreenStackHeaderSubviewType::Left};
};

class RNSScreenStackProps final : public ViewProps {
 public:
  RNSScreenStackProps() = default;
  RNSScreenStackProps(const PropsParserContext& context, const RNSScreenStackProps &sourceProps, const RawProps &rawProps);

#pragma mark - Props

  
};

enum class RNSSearchBarAutoCapitalize { None, Words, Sentences, Characters };

static inline void fromRawValue(const PropsParserContext& context, const RawValue &value, RNSSearchBarAutoCapitalize &result) {
  auto string = (std::string)value;
  if (string == "none") { result = RNSSearchBarAutoCapitalize::None; return; }
  if (string == "words") { result = RNSSearchBarAutoCapitalize::Words; return; }
  if (string == "sentences") { result = RNSSearchBarAutoCapitalize::Sentences; return; }
  if (string == "characters") { result = RNSSearchBarAutoCapitalize::Characters; return; }
  abort();
}

static inline std::string toString(const RNSSearchBarAutoCapitalize &value) {
  switch (value) {
    case RNSSearchBarAutoCapitalize::None: return "none";
    case RNSSearchBarAutoCapitalize::Words: return "words";
    case RNSSearchBarAutoCapitalize::Sentences: return "sentences";
    case RNSSearchBarAutoCapitalize::Characters: return "characters";
  }
}

class RNSSearchBarProps final : public ViewProps {
 public:
  RNSSearchBarProps() = default;
  RNSSearchBarProps(const PropsParserContext& context, const RNSSearchBarProps &sourceProps, const RawProps &rawProps);

#pragma mark - Props

  bool hideWhenScrolling{false};
  RNSSearchBarAutoCapitalize autoCapitalize{RNSSearchBarAutoCapitalize::None};
  std::string placeholder{};
  bool obscureBackground{false};
  bool hideNavigationBar{false};
  std::string cancelButtonText{};
  SharedColor barTintColor{};
  SharedColor tintColor{};
  SharedColor textColor{};
  bool disableBackButtonOverride{false};
  std::string inputType{};
  SharedColor hintTextColor{};
  SharedColor headerIconColor{};
  bool shouldShowHintSearchIcon{true};
};

} // namespace facebook::react
