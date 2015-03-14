//
//  PathDrawController.m
//  hw5-ckl8
//
//  Created by rlam on 3/13/15.
//  Copyright (c) 2015 ronl. All rights reserved.
//

#import "PathDrawController.h"
#import "PathDraw.h"
#import "RandomPercentGenerator.h"

@interface PathDrawController ()
@property (weak) IBOutlet PathDraw *pathDraw;
@end

@implementation PathDrawController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self PathRefresh:nil];
    // Do view setup here.
}
- (IBAction)PathRefresh:(id)sender {


    NSArray *percents = [RandomPercentGenerator arrayOfPercents:10];
    [self.pathDraw redrawForNumbers:percents];
}

@end
