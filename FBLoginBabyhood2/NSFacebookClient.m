//
//  NSFacebookClient.m
//  FBLoginBabyhood2
//
//  Created by Ayuna Vogel on 10/3/15.
//  Copyright © 2015 Ayuna Vogel. All rights reserved.
//

#import "NSFacebookClient.h"



@implementation NSFacebookClient

static FBSDKAccessToken *fbAccessToken  = nil;


+ (FBSDKAccessToken *) fbAccessToken {
    
    return fbAccessToken;
}

+ (void)setFBAccessToken:(FBSDKAccessToken *)accessToken; {
    
    fbAccessToken = accessToken;
}

+ (NSDictionary *)getProfileInfo:(NSString *)fbUserID {

    NSMutableDictionary *fbUserInfo = [[NSMutableDictionary alloc]init];
    
    [[[FBSDKGraphRequest alloc] initWithGraphPath:@"me" parameters:@{@"fields": @"email, gender, link, name, picture, bio"}]
     
     startWithCompletionHandler:^(FBSDKGraphRequestConnection *connection, id result, NSError *error) {
    
         if (!error) {
             NSLog(@"no error");
             fbUserInfo add
         }
     }];        
    return result;
}

@end
