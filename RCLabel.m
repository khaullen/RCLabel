//
//  RCLabel.m
//  SouthwestTravelManager
//
//  Created by Colin Regan on 12/7/12.
//  Copyright (c) 2012 Red Cup. All rights reserved.
//

#import "RCLabel.h"

@interface RCLabel ()

@property (strong, nonatomic) UILabel *placeholderLabel;

@end


@implementation RCLabel

@synthesize placeholderLabel = _placeholderLabel;

- (UILabel *)placeholderLabel
{
    if (!_placeholderLabel) {
        _placeholderLabel = [[UILabel alloc] initWithFrame:self.frame];
        _placeholderLabel.textColor = [UIColor colorWithWhite:0.7 alpha:1.0];
        _placeholderLabel.backgroundColor = [UIColor clearColor];
        _placeholderLabel.opaque = NO;
        _placeholderLabel.hidden = YES;
        [self.superview addSubview:_placeholderLabel];
    }
    return _placeholderLabel;
}

- (NSString *)placeholder
{
    return self.placeholderLabel.text;
}

- (void)setPlaceholder:(NSString *)placeholder
{
    self.placeholderLabel.text = placeholder;
}

- (void)setText:(NSString *)text
{
    [super setText:text];
    self.placeholderLabel.hidden = text ? YES : NO;
}

@end
