//
//  Adbrix.h
//  DreamDNA
//
//  Created by mscbrain on 2016. 10. 6..
//
//

#import <UIKit/UIKit.h>
#import <Cordova/CDVPlugin.h>

@interface Adbrix : CDVPlugin

- (void) retention:(CDVInvokedUrlCommand*)command;
- (void) age:(CDVInvokedUrlCommand*)command;
- (void) gender:(CDVInvokedUrlCommand*)command;
- (void) member:(CDVInvokedUrlCommand*)command;
- (void) firstImp:(CDVInvokedUrlCommand*)command;
- (void) initSDK:(CDVInvokedUrlCommand *)command;
@end

