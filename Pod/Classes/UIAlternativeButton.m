//
//  UIAlternativeButton.m
//  Pods
//
//  Created by Ilter Cengiz on 03/03/15.
//
//

#import "UIAlternativeButton.h"

/**
 The width of the image placed in the button.
 Also used for height.
 */
static CGFloat imageViewWidth = 64.0;

/**
 Margin for both the title and the image.
 */
static CGFloat margin = 6.0;

@implementation UIAlternativeButton

#pragma mark - NSObject UIKit Additions

- (void)awakeFromNib {
    
    [super awakeFromNib];
    
    self.imageView.contentMode = UIViewContentModeScaleAspectFill;
    self.imageView.clipsToBounds = YES;
    
    self.imageView.layer.cornerRadius = imageViewWidth / 2.0;
    
}

#pragma mark - Layout

- (void)layoutSubviews {
    
    [super layoutSubviews];
    
    self.imageView.frame = (CGRect){.origin = (CGPoint){.x = margin, .y = margin}, .size = (CGSize){.width = imageViewWidth, .height = imageViewWidth}};
    self.imageView.center = (CGPoint){.x = CGRectGetWidth(self.frame) / 2.0, .y = imageViewWidth / 2.0 + margin};
    
    [self.titleLabel sizeToFit];
    
    self.titleLabel.frame = (CGRect){.origin = (CGPoint){.x = margin, .y = imageViewWidth + 2 * margin}, .size = self.titleLabel.frame.size};
    self.titleLabel.center = (CGPoint){.x = CGRectGetWidth(self.frame) / 2.0, .y = CGRectGetHeight(self.frame) - CGRectGetHeight(self.titleLabel.frame) / 2.0 - margin};
    
}

- (CGSize)intrinsicContentSize {
    
    [self.titleLabel sizeToFit];
    
    CGFloat titleLabelWidth = CGRectGetWidth(self.titleLabel.frame) + margin * 2; // margin from both sides.
    CGFloat imageViewWidth = CGRectGetWidth(self.imageView.frame) + margin * 2; // margin from both sides.
    
    CGFloat height = CGRectGetHeight(self.imageView.frame) + CGRectGetHeight(self.titleLabel.frame) + margin * 3; // margin from top and bottom and distance between `imageView` and `titleLabel`.
    
    return CGSizeMake(MAX(titleLabelWidth, imageViewWidth), height);
    
}

#pragma mark - Setter

- (void)setImageViewRadius:(CGFloat)imageViewRadius {
    self.imageView.layer.cornerRadius = imageViewRadius;
}

@end
