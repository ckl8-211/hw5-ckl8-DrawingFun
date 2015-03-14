//
//  ShapeDraw.m
//  hw5-ckl8
//
//  Created by rlam on 3/13/15.
//  Copyright (c) 2015 ronl. All rights reserved.
//

#import "ShapeDraw.h"
IB_DESIGNABLE
@interface ShapeDraw()
@end

@implementation ShapeDraw

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    NSColor *blue = [NSColor blueColor];
    [blue set];
    NSBezierPath *path = [NSBezierPath bezierPathWithOvalInRect:self.frame];

    [path stroke];
    [path fill];
    // Drawing code here.
}

@end
