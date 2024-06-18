#import <Cordova/CDV.h>
#import <UIKit/UIKit.h>

@interface DetectSpoofing : CDVPlugin
- (void)isSimulatedBySoftware:(CDVInvokedUrlCommand*)command;
@end

@implementation DetectSpoofing

- (void)isSimulatedBySoftware:(CDVInvokedUrlCommand*)command {
    BOOL isSimulated = NO;

    #if TARGET_IPHONE_SIMULATOR
    isSimulated = YES;
    #endif

    CDVPluginResult* result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:isSimulated];
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

@end
