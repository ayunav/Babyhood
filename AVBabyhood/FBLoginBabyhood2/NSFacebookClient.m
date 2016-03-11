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
             [fbUserInfo setObject:[result objectForKey:@"name"] forKey:@"name"];
             [fbUserInfo setObject:[result objectForKey:@"link"] forKey:@"link"];
             [fbUserInfo setObject:[result objectForKey:@"gender"] forKey:@"gender"];
             [fbUserInfo setObject:[result objectForKey:@"picture"] forKey:@"picture"];
         }
     }];
    return fbUserInfo;
    
}

@end

