//
//  Adbrix.m
//  DreamDNA
//
//  Created by mscbrain on 2016. 10. 6..
//
//
#import "Adbrix.h"
#import <Cordova/CDVPlugin.h>
#import <AdBrix/AdBrix.h>
#import <IgaworksCore/IgaworksCore.h>
#import <AdSupport/AdSupport.h>

@implementation Adbrix

-(void) retention :(CDVInvokedUrlCommand*)command
{
    NSString* menuName  = [command.arguments objectAtIndex:0];

    NSLog(@"menuName============!!==%@", menuName);
    [AdBrix retention:menuName];

}
-(void) age :(CDVInvokedUrlCommand*)command
{
    NSInteger* age  = [[command.arguments objectAtIndex:0] intValue];
 //   NSLog(@"menuName============!!==%@", [age stringValue]);
    [IgaworksCore setAge:age];

}
-(void) gender:(CDVInvokedUrlCommand *)command
{
    NSString* gender  = [command.arguments objectAtIndex:0];

    NSLog(@"menuName============!!==%@", gender);
    if([gender isEqualToString:@"M"]==YES)
        [IgaworksCore setGender:IgaworksCoreGenderMale];
    else
        [IgaworksCore setGender:IgaworksCoreGenderFemale];


}

-(void)firstImp :(CDVInvokedUrlCommand*)command
{
    NSString* str  = [command.arguments objectAtIndex:0];

    NSLog(@"firstImp============!!==%@", str);
    [AdBrix firstTimeExperience:str];

}

- (void)member:(CDVInvokedUrlCommand *)command {
    
}

- (void)initSDK:(CDVInvokedUrlCommand *)command
{
    if (NSClassFromString(@"ASIdentifierManager")){
        NSUUID *ifa =[[ASIdentifierManager sharedManager]advertisingIdentifier];
        BOOL isAppleAdvertisingTrackingEnalbed = [[ASIdentifierManager sharedManager]isAdvertisingTrackingEnabled];
        if (isAppleAdvertisingTrackingEnalbed && [ifa UUIDString]) {
            [IgaworksCore setAppleAdvertisingIdentifier:[ifa UUIDString] isAppleAdvertisingTrackingEnabled:isAppleAdvertisingTrackingEnalbed];
        }
    }
    NSString *adbrixKey = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"ADBRIX_KEY"];
    NSString *adbrixHashKey = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"ADBRIX_HASHKEY"];

    [IgaworksCore igaworksCoreWithAppKey:adbrixKey andHashKey:adbrixHashKey];
    
    CDVPluginResult *result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}
@end
