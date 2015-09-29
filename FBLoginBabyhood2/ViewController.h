//
//  ViewController.h
//  FBLoginBabyhood2
//
//  Created by Ayuna Vogel on 9/28/15.
//  Copyright © 2015 Ayuna Vogel. All rights reserved.
//

#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>
#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<FBSDKLoginButtonDelegate>

@property (weak, nonatomic) IBOutlet FBSDKLoginButton *loginButton;

@property (weak, nonatomic) IBOutlet FBSDKProfilePictureView *profilePicture;

@property (weak, nonatomic) IBOutlet UILabel *usernameLabel;

@property (weak, nonatomic) IBOutlet UILabel *userBioLabel;

@property (weak, nonatomic) IBOutlet UILabel *fbLinkLabel;

@end

