//
//  GUMAppDelegate.m
//  Gumshoe
//
//  Created by Bradley Ringel on 6/10/14.
//  Copyright (c) 2014 Bradley Ringel. All rights reserved.
//

#import "GUMAppDelegate.h"
#import "AFNetworkActivityLogger.h"
#import "GUMUser.h"

@implementation GUMAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    [[AFNetworkActivityLogger sharedLogger] startLogging];
    
    UIColor *gumshoePurple = [UIColor colorWithRed:86.0/256.0 green:58.0/256.0 blue:146.0/256.0 alpha:1.0];
    [[UINavigationBar appearance] setBarTintColor:gumshoePurple];
    [[UINavigationBar appearance] setTintColor:[UIColor colorWithWhite:0.9 alpha:1.0]];
    [[UITabBar appearance] setTintColor:gumshoePurple];
    application.statusBarStyle = UIStatusBarStyleLightContent;
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    [[GUMUser currentUser] saveUser];
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    [[GUMUser currentUser] saveUser];
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    [[GUMUser currentUser] saveUser];
}

- (NSDictionary *)apiInfo{
    if(_apiInfo == nil){
        NSString *filePath = [[NSBundle mainBundle] pathForResource:@"apikeys" ofType:@"plist"];
        _apiInfo = [NSDictionary dictionaryWithContentsOfFile:filePath];
    }
    return _apiInfo;
}


@end
