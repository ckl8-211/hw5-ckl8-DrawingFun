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
//    [super drawRect:dirtyRect];
//    NSColor *blue = [NSColor blueColor];
//    [blue set];
//    
//    NSBezierPath *linePath = [NSBezierPath bezierPath];
//    CGPoint startPt = CGPointZero;
//    [linePath moveToPoint:startPt];
//    
//    // add points to line
//    CGFloat width  = CGRectGetWidth(self.bounds);
//    CGFloat height = CGRectGetHeight(self.bounds);
//    CGFloat segmentWidth = width / (self.numbers.count + 1);
//    [self.numbers enumerateObjectsUsingBlock:^(NSNumber *value, NSUInteger idx, BOOL *stop) {
//        CGPoint point = CGPointMake(segmentWidth * (idx+1), height * value.floatValue);
//        [linePath lineToPoint:point];
//    }];
//    
//    [linePath lineToPoint: CGPointMake(self.bounds.size.width, 0)];
//    [[NSColor colorWithPatternImage:[NSImage imageNamed:@"blue-plaid-pattern"]] set];
//    [linePath fill];
//    // Drawing code here.
    
//    [super drawRect:dirtyRect];
//    NSColor *blue = [NSColor blueColor];
//    [blue set];
//    NSBezierPath *path = [NSBezierPath bezierPathWithOvalInRect:self.frame];
//    
//    [path stroke];
//    [path fill];
}

@end
