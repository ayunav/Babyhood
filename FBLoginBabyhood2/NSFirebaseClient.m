//
//  NSFirebaseClient.m
//  FBLoginBabyhood2
//
//  Created by Ayuna Vogel on 10/3/15.
//  Copyright © 2015 Ayuna Vogel. All rights reserved.
//

#import "NSFirebaseClient.h"

#define kFirebaseBabyhoodNS @"https://glaring-inferno-5259.firebaseio.com"

@implementation NSFirebaseClient

//- (id)init {
//    self = [super init];
//    if (self) {
//        self.firebase = [[Firebase alloc] initWithUrl:kFirebaseBabyhoodNS];
//    }
//    return self;
//}

+ (NSDictionary *)getProfileInfo:(NSString *)fbUserID {
    
    Firebase *myRootRef = [[Firebase alloc] initWithUrl:kFirebaseBabyhoodNS];
//
//    [myRootRef setValue:@"Do you have data? You'll love Firebase."];
    
    NSDictionary *fakeResult = @{
                                 @"bio" : @"sheHacker, mother of two",
                                 @"kidsInfo" : @"boy, 4, girl, 2",
                                 @"stageInfo" : @"Expecting! Due date: November 2015"
                                 };
    return fakeResult;
}

+ (NSDictionary *)getNearbyUsers:(NSString *)fbUserID {
    NSDictionary *testUsersIDs = @{@"101698526853283": @[@40.739066, @-73.991400],
                                   @"134805540207400": @[@40.742283, @-73.989004],
                                   @"100010216817965": @[@40.736562, @-73.988958],
                                   @"100010176079232": @[@40.740411, @-74.001911],
                                   @"157308164614254": @[@40.745396, @-73.994657],
                                   @"1018013349"     : @[@40.740825, @-73.985888],
                                   @"841495653"      : @[@40.742758, @-73.986613]
                                       };
    return testUsersIDs;
}



@end
