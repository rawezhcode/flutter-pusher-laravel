#import "FlutterPusherPlugin.h"
#import <flutter_pusher_laravel/flutter_pusher_laravel-Swift.h>

@implementation FlutterPusherPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterPusherPlugin registerWithRegistrar:registrar];
}
@end
