//
//  ViewController.m
//  FBLoginBabyhood2
//
//  Created by Ayuna Vogel on 9/28/15.
//  Copyright © 2015 Ayuna Vogel. All rights reserved.
//

#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>

#import "AppDelegate.h"
#import "ViewController.h"
#import "UserProfileViewController.h"
#import "NSFacebookClient.h"
#import "User.h"


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.loginButton.delegate = self;
    self.loginButton.readPermissions =
    @[@"public_profile", @"email", @"user_friends"];


}

- (void)loginButton:(FBSDKLoginButton *)loginButton didCompleteWithResult:(FBSDKLoginManagerLoginResult *)result error:(NSError *)error {
    
    if ([FBSDKAccessToken currentAccessToken]) {

        [NSFacebookClient setFBAccessToken:[FBSDKAccessToken currentAccessToken]]; 
        
        [[[FBSDKGraphRequest alloc] initWithGraphPath:@"me" parameters:@{@"fields": @"picture, email, name, gender, link, bio"}]
         startWithCompletionHandler:^(FBSDKGraphRequestConnection *connection, id result, NSError *error) {
             if (!error) {
                 NSLog(@"fetched user:%@", result);
                 AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
                 appDelegate.userInfo = result;

             }
         }];
    }
    
    [self performSegueWithIdentifier:@"TabBarSegue" sender:self];
}

- (void)loginButtonDidLogOut:(FBSDKLoginButton *)loginButton {
    NSLog(@"logged out");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    UserProfileViewController *userVC = segue.destinationViewController;
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
    //userVC.fbUserID = @"me";
    //userVC.userInfo = self.userInfo;
}

@end
