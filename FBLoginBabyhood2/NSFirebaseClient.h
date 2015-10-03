//
//  NSFirebaseClient.h
//  FBLoginBabyhood2
//
//  Created by Ayuna Vogel on 10/3/15.
//  Copyright © 2015 Ayuna Vogel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSFirebaseClient : NSObject

//+ Firebase *myRootRef [[Firebase alloc]initwithUrl:@""];

+ (NSDictionary *)getProfileInfo:(NSString *)fbUserID;

+ (NSDictionary *)getNearbyUsers:(NSString *)fbUserID;

@end
