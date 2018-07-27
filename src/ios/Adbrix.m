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

@end
