//
//  AppDelegate.m
//  SegmentIntegration
//
//  Created by Yogesh on 02/12/16.
//  Copyright © 2016 Arpit. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //Initialise WebEngage SDK
    [[WebEngage sharedInstance] application:application didFinishLaunchingWithOptions:launchOptions];
    
    SEGAnalyticsConfiguration *configuration = [SEGAnalyticsConfiguration configurationWithWriteKey:@"tNrxedNhMyLMuU8MHmQhdjJau3F49ZoO"];
    configuration.trackApplicationLifecycleEvents = NO; // Enable this to record certain application events automatically!
    configuration.recordScreenViews = NO; // Enable this to record screen views automatically!
    [SEGAnalytics debug:YES];
    
    //Register WebEngage Integration With Segment
    [configuration use:[WEGSegmentIntegrationFactory sharedInstance]];
    
    [SEGAnalytics setupWithConfiguration:configuration];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
