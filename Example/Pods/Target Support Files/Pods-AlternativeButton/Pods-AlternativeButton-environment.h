
// To check if a library is compiled with CocoaPods you
// can use the `COCOAPODS` macro definition which is
// defined in the xcconfigs so it is available in
// headers also when they are imported in the client
// project.


// AlternativeButton
#define COCOAPODS_POD_AVAILABLE_AlternativeButton
#define COCOAPODS_VERSION_MAJOR_AlternativeButton 0
#define COCOAPODS_VERSION_MINOR_AlternativeButton 1
#define COCOAPODS_VERSION_PATCH_AlternativeButton 0

// Debug build configuration
#ifdef DEBUG

  // Reveal-iOS-SDK
  #define COCOAPODS_POD_AVAILABLE_Reveal_iOS_SDK
  #define COCOAPODS_VERSION_MAJOR_Reveal_iOS_SDK 1
  #define COCOAPODS_VERSION_MINOR_Reveal_iOS_SDK 5
  #define COCOAPODS_VERSION_PATCH_Reveal_iOS_SDK 1

#endif
