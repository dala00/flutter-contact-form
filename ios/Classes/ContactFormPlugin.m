#import "ContactFormPlugin.h"
#if __has_include(<contact_form/contact_form-Swift.h>)
#import <contact_form/contact_form-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "contact_form-Swift.h"
#endif

@implementation ContactFormPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftContactFormPlugin registerWithRegistrar:registrar];
}
@end
