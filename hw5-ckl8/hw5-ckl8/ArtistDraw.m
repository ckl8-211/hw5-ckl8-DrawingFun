//
//  ArtistDraw.m
//  hw5-ckl8
//
//  Created by rlam on 3/14/15.
//  Copyright (c) 2015 ronl. All rights reserved.
//
IB_DESIGNABLE
#import "ArtistDraw.h"

@interface  ArtistDraw ()
@property (copy, nonatomic) NSArray *numbers;
@end

@implementation ArtistDraw

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
//    [NSGraphicsContext saveGraphicsState];
    [[NSColor yellowColor] setFill];
    [[NSBezierPath bezierPathWithRect:[self bounds]] fill];
//    [NSGraphicsContext restoreGraphicsState];
    int width = (int)dirtyRect.size.width;
    int height = (int)dirtyRect.size.height/2;
    NSLog(@"width %d, height %d", width, height);
    
//    [NSGraphicsContext saveGraphicsState];
    [[NSColor greenColor] set];
    NSBezierPath *axisPath = [NSBezierPath bezierPath];
    [axisPath setLineWidth:2.0];
    [axisPath moveToPoint:NSMakePoint(0, height)];
    [axisPath lineToPoint:NSMakePoint(width, height)];
    [axisPath stroke];
//    [NSGraphicsContext restoreGraphicsState];
    
    //Sine Curves
    [[NSColor blueColor] set];
    NSBezierPath *sinePath = [NSBezierPath bezierPath];
    [sinePath setLineWidth:0.5];
    NSLog(@"height %d",height);
    for (int j=300; j<1200;)
    {
        for (int i=0; i<width;)
        {
            [sinePath moveToPoint:NSMakePoint(i, height)];
            i = i + 180;
            [sinePath curveToPoint:NSMakePoint(i, height) controlPoint1:NSMakePoint(i-120, height+j) controlPoint2:NSMakePoint(i-60, height-j)];
            [sinePath stroke];
        }
        j=j+25;
    }
    //Line Graphs
    [[NSColor redColor] set];
    NSBezierPath *bPath = [NSBezierPath bezierPath];
    [bPath setLineWidth:0.5];
    for (int i=0; i<width; )
    {
        [bPath moveToPoint:NSMakePoint(i, height)];
        [bPath lineToPoint:NSMakePoint(i, height+arc4random()%(height/2))];
        [bPath stroke];
        [bPath moveToPoint:NSMakePoint(i, height)];
        [bPath lineToPoint:NSMakePoint(i, height-arc4random()%(height/2))];
        [bPath stroke];
        i=i+3;
    }
}

@end
