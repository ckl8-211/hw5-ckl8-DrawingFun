//
//  PathDraw.m
//  hw5-ckl8
//
//  Created by rlam on 3/13/15.
//  Copyright (c) 2015 ronl. All rights reserved.
//

#import "PathDraw.h"
IB_DESIGNABLE
@interface PathDraw()
@property  (copy, nonatomic) NSArray *numbers;

@end


@implementation PathDraw

-(void)redrawForNumbers:(NSArray*)numbers
{
    self.numbers = numbers;
    [self setNeedsDisplay:YES];
}

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    NSColor *blue = [NSColor blueColor];
    [blue set];
    
    NSBezierPath *linePath = [NSBezierPath bezierPath];
    CGPoint startPt = CGPointZero;
    [linePath moveToPoint:startPt];
    
    // add points to line
    CGFloat width  = CGRectGetWidth(self.bounds);
    CGFloat height = CGRectGetHeight(self.bounds);
    CGFloat segmentWidth = width / (self.numbers.count + 1);
    [self.numbers enumerateObjectsUsingBlock:^(NSNumber *value, NSUInteger idx, BOOL *stop) {
        CGPoint point = CGPointMake(segmentWidth * (idx+1), height * value.floatValue);
        [linePath lineToPoint:point];
    }];
    
    [linePath lineToPoint: CGPointMake(self.bounds.size.width, 0)];
    [[NSColor colorWithPatternImage:[NSImage imageNamed:@"blue-plaid-pattern"]] set];
    [linePath fill];
//    NSBezierPath *path = [NSBezierPath bezierPathWithRect:<#(NSRect)#>:self.frame];
//    [path moveToPoint:CGPointMake(0, 0)];
//    [path lineToPoint:CGPointMake(20, 20)];
//    [path relativeLineToPoint:CGPointMake(100, 0)];
//    [path relativeLineToPoint:CGPointMake(20, -20)];
//    
//    [path stroke];
//    [path fill];
    // Drawing code here.
}

@end
