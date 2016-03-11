//
//  MapViewController.m
//  FBLoginBabyhood2
//
//  Created by Ayuna Vogel on 10/4/15.
//  Copyright © 2015 Ayuna Vogel. All rights reserved.
//

#import "MapViewController.h"

@implementation MapViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self showMap]; 
}

- (void)showMap {
    
    CLLocationCoordinate2D center = CLLocationCoordinate2DMake(40.739916, -73.994389);
    MKCoordinateSpan span = MKCoordinateSpanMake(0.2, 0.2);
    [self.mapView setRegion:MKCoordinateRegionMake(center, span) animated:YES];
    
    // getting access to my current location
    /*
    self.locationManager = [[CLLocationManager alloc] init];
    
    if ([self.locationManager respondsToSelector:@selector(requestWhenInUseAuthorization)]) {
        [self.locationManager requestWhenInUseAuthorization];
    }
     */
    
}

- (void)addUsersToTheMapView {
    
    NSDictionary *testUsersIDs = @{@"101698526853283": @[@40.739066, @-73.991400],
                                   @"134805540207400": @[@40.742283, @-73.989004],
                                   @"100010216817965": @[@40.736562, @-73.988958],
                                   @"100010176079232": @[@40.740411, @-74.001911],
                                   @"157308164614254": @[@40.745396, @-73.994657],
                                   @"1018013349"     : @[@40.740825, @-73.985888],
                                   @"841495653"      : @[@40.742758, @-73.986613]
                                   };
    
    
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
