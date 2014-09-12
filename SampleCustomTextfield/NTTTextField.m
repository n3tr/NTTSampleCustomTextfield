//
//  NTTTextField.m
//  SampleCustomTextfield
//
//  Created by Jirat K. on 9/12/2557 BE.
//  Copyright (c) 2557 OLX Thailand. All rights reserved.
//

#import "NTTTextField.h"

@implementation NTTTextField

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.layer.cornerRadius = 4.0f;
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.layer.cornerRadius = 4.0f;
    }
    return self;
}

#pragma mark - Rect

- (CGRect)textRectForBounds:(CGRect)bounds
{
    return [self calculateTextRectForBounds:bounds];
}

- (CGRect)editingRectForBounds:(CGRect)bounds
{
    return [self calculateTextRectForBounds:bounds];
}

- (CGRect)leftViewRectForBounds:(CGRect)bounds
{
    CGRect normalRect = [super leftViewRectForBounds:bounds];
    normalRect.origin.x += 8;
    return normalRect;
}

- (CGRect)clearButtonRectForBounds:(CGRect)bounds
{
    CGRect normalRect = [super clearButtonRectForBounds:bounds];
    return normalRect;
}

#pragma mark - Private

- (CGRect)calculateTextRectForBounds:(CGRect)bounds
{
    CGRect frame = CGRectInset(bounds, 8, 0);
    if (self.leftView) {
        frame.origin.x += ([self leftViewRectForBounds:bounds].size.width + [self leftViewRectForBounds:bounds].origin.x);
    }
    
    return frame;
}

@end
