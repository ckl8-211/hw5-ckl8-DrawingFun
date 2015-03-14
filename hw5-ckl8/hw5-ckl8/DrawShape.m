//
//  DrawShape.m
//  hw5-ckl8
//
//  Created by rlam on 2/19/15.
//  Copyright (c) 2015 ronl. All rights reserved.
//

#import "DrawShape.h"

@implementation DrawShape

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    NSColor *blue = [NSColor blueColor];
    [blue set];
    NSBezierPath *path = [NSBezierPath bezierPathWithOvalInRect:self.frame];
    [path moveToPoint:CGPointMake(0, 0)];
    [path lineToPoint:CGPointMake(20, 20)];
    [path relativeLineToPoint:CGPointMake(100, 0)];
    [path relativeLineToPoint:CGPointMake(20, -20)];

    [path stroke];
    [path fill];
}

@end
