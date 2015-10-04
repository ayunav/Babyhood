//
//  NSFirebaseClient.h
//  FBLoginBabyhood2
//
//  Created by Ayuna Vogel on 10/3/15.
//  Copyright © 2015 Ayuna Vogel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Firebase/Firebase.h>



@interface NSFirebaseClient : NSObject

@property (nonatomic, strong) Firebase* firebase;

+ (NSDictionary *)getProfileInfo:(NSString *)fbUserID;

+ (NSDictionary *)getNearbyUsers:(NSString *)fbUserID;



@end
