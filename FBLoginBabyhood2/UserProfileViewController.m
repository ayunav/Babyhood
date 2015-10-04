//
//  UserProfileViewController.m
//  FBLoginBabyhood2
//
//  Created by Ayuna Vogel on 10/3/15.
//  Copyright © 2015 Ayuna Vogel. All rights reserved.
//
#import <Firebase/Firebase.h>

#import "UserProfileViewController.h"
#import "NSFacebookClient.h"
#import "NSFirebaseClient.h"

#define kFirebaseBabyhoodNS @"https://glaring-inferno-5259.firebaseio.com"

@interface UserProfileViewController ()

@end

@implementation UserProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSDictionary *userInfo = [NSFacebookClient getProfileInfo:self.fbUserID];
    
    self.fbLinkLabel.text = [userInfo objectForKey:@"link"];
    self.usernameLabel.text = [userInfo objectForKey:@"name"];
    

    NSDictionary *databaseUserInfo = [NSFirebaseClient getProfileInfo:self.fbUserID];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveButtonTapped:(id)sender {
    
    NSString *firebaseDatabaseUsersString = [kFirebaseBabyhoodNS stringByAppendingString:@"/users/"];
    NSString *firebaseDatabaseFbIDUserString = [firebaseDatabaseUsersString stringByAppendingString:self.fbUserID];

    Firebase *myRootRef = [[Firebase alloc] initWithUrl:firebaseDatabaseFbIDUserString];
    
    NSDictionary *userProfileData = @{
                                      @"bio" : self.bioTextFieldInput.text,
                                    @"kidsInfo" : self.kidsInfoTextFieldInput.text
                                      };
    
    [myRootRef setValue:userProfileData]; 
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
