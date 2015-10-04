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
    
    [[[FBSDKGraphRequest alloc] initWithGraphPath:fbUserID parameters:@{@"fields": @"email, gender, link, name, picture, bio"}]
     
     startWithCompletionHandler:^(FBSDKGraphRequestConnection *connection, id result, NSError *error) {
    
         if (!error) {
             NSLog(@"no error");
             [fbUserInfo setObject:[result objectForKey:@"name"] forKey:@"name"];
             [fbUserInfo setObject:[result objectForKey:@"link"] forKey:@"link"];
             [fbUserInfo setObject:[result objectForKey:@"gender"] forKey:@"gender"];
             [fbUserInfo setObject:[result objectForKey:@"picture"] forKey:@"picture"];
         }
     }];
    return fbUserInfo;
    
//    NSDictionary *fakeResult = @{
//                                 @"name" : @"Ayuna Moscow",
//                                 @"link" : @"https://www.facebook.com/app_scoped_user_id/10156027220050654/",
//                                 @"picture" : @"https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfa1/v/t1.0-1/c0.0.50.50/p50x50/10653689_10154569574155654_5543537069477805205_n.jpg?oh=8ffe1019ce9b875c50ce46aa1dfc1970&oe=5695B4C0&__gda__=1452655336_4fecedd27549e2a8ea4e0a202ebdc1ff"
//                                 };
//    return fakeResult;
}

@end

