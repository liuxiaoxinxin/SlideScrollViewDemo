//
//  ViewController.m
//  SlideScrollViewDemo
//
//  Created by Topstech on 2018/10/22.
//  Copyright © 2018 Topstech. All rights reserved.
//

#import "ViewController.h"
#import <MapKit/MapKit.h>
#import "SlideScrollView/SlideScrollView.h"

@interface ViewController ()
@property (nonatomic, strong) MKMapView *mapView;
@property (nonatomic, strong) SlideScrollView *slideView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // test map background view
    self.mapView = [[MKMapView alloc] initWithFrame:self.view.bounds];
    MKCoordinateSpan span = MKCoordinateSpanMake(0.021251, 0.016093);
    CLLocationCoordinate2D location = CLLocationCoordinate2DMake(30.221034, 120.183252);
    [self.mapView setRegion:MKCoordinateRegionMake(location, span) animated:YES];
    [self.view addSubview:self.mapView];
    UIToolbar *stautsBar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, STATUS_BAR_HEIGHT)];
    [self.view addSubview:stautsBar];
    
    self.slideView = [[SlideScrollView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:self.slideView];
}

@end
