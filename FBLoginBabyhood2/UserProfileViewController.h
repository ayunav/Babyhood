//
//  UserProfileViewController.h
//  FBLoginBabyhood2
//
//  Created by Ayuna Vogel on 10/3/15.
//  Copyright © 2015 Ayuna Vogel. All rights reserved.
//

#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>
#import <UIKit/UIKit.h>

#import "ViewController.h"
#import "ViewController.h"

@interface UserProfileViewController : ViewController

@property (weak, nonatomic) IBOutlet FBSDKProfilePictureView *profilePicture;

@property (weak, nonatomic) IBOutlet UILabel *usernameLabel;

@property (weak, nonatomic) IBOutlet UILabel *userBioLabel;

@property (weak, nonatomic) IBOutlet UILabel *fbLinkLabel;

@end
