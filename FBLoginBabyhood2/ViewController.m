//
//  ViewController.m
//  FBLoginBabyhood2
//
//  Created by Ayuna Vogel on 9/28/15.
//  Copyright © 2015 Ayuna Vogel. All rights reserved.
//

#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>

#import "ViewController.h"

@interface ViewController ()



-(void)toggleHiddenState:(BOOL)shouldHide;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self toggleHiddenState:YES];
    
    self.loginButton.delegate = self;
    self.loginButton.readPermissions =
    @[@"public_profile", @"email", @"user_friends"];


}

-(void)toggleHiddenState:(BOOL)shouldHide {
    self.usernameLabel.hidden = shouldHide;
    self.userBioLabel.hidden = shouldHide;
    self.profilePicture.hidden = shouldHide;
    self.fbLinkLabel.hidden = shouldHide;
}


- (void)loginButton:(FBSDKLoginButton *)loginButton didCompleteWithResult:(FBSDKLoginManagerLoginResult *)result error:(NSError *)error {
    
    if ([FBSDKAccessToken currentAccessToken]) {
        [[[FBSDKGraphRequest alloc] initWithGraphPath:@"me" parameters:@{@"fields": @"picture, email, name, gender, link, bio"}]
         startWithCompletionHandler:^(FBSDKGraphRequestConnection *connection, id result, NSError *error) {
             if (!error) {
                 NSLog(@"fetched user:%@", result);
                 self.usernameLabel.text = [result objectForKey:@"name"];
                 self.userBioLabel.text = [result objectForKey:@"bio"];
                 self.fbLinkLabel.text = [result objectForKey:@"link"];
                              }
         }];
    }
    
    [self toggleHiddenState:NO];
}

- (void)loginButtonDidLogOut:(FBSDKLoginButton *)loginButton {
    [self toggleHiddenState:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
