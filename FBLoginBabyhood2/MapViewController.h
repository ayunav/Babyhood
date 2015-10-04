//
//  MapViewController.h
//  FBLoginBabyhood2
//
//  Created by Ayuna Vogel on 10/4/15.
//  Copyright © 2015 Ayuna Vogel. All rights reserved.
//

#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

#import "ViewController.h"
#import "NSFacebookClient.h"
#import "NSFirebaseClient.h"

@interface MapViewController : ViewController
    @property (weak, nonatomic) IBOutlet MKMapView *mapView;
@end
