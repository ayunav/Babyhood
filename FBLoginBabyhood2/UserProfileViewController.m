//
//  UserProfileViewController.m
//  FBLoginBabyhood2
//
//  Created by Ayuna Vogel on 10/3/15.
//  Copyright © 2015 Ayuna Vogel. All rights reserved.
//

#import "UserProfileViewController.h"
#import "NSFacebookClient.h"

@interface UserProfileViewController ()

@end

@implementation UserProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSDictionary *userInfo = [NSFacebookClient getProfileInfo:self.fbUserID];
    
    self.fbLinkLabel.text = [userInfo objectForKey:@"link"];
    self.usernameLabel.text = [userInfo objectForKey:@"name"]; 



}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
