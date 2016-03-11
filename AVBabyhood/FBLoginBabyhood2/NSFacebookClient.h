//
//  NSFacebookClient.h
//  FBLoginBabyhood2
//
//  Created by Ayuna Vogel on 10/3/15.
//  Copyright © 2015 Ayuna Vogel. All rights reserved.
//

#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>

#import <Foundation/Foundation.h>

@interface NSFacebookClient : NSObject


+ (FBSDKAccessToken *) fbAccessToken;
+ (void)setFBAccessToken:(FBSDKAccessToken *)accessToken; 

+ (NSDictionary *)getProfileInfo:(NSString *)fbUserID;

@end
