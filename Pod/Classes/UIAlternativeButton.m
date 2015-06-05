//
//  UIAlternativeButton.m
//  Pods
//
//  Created by Ilter Cengiz on 03/03/15.
//
//

#import "UIAlternativeButton.h"

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
}

- (instancetype)init {
    self = [super init];
    if (self) {
        _imageViewRadius = 0.0;
        _imageViewWidth = 64.0;
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        _imageViewRadius = 0.0;
        _imageViewWidth = 64.0;
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        _imageViewRadius = 0.0;
        _imageViewWidth = 64.0;
    }
    return self;
}

#pragma mark - Layout

- (void)layoutSubviews {
    [super layoutSubviews];
    self.imageView.frame = (CGRect){.origin = (CGPoint){.x = margin, .y = margin}, .size = (CGSize){.width = self.imageViewWidth, .height = self.imageViewWidth}};
    self.imageView.center = (CGPoint){.x = CGRectGetWidth(self.frame) / 2.0, .y = self.imageViewWidth / 2.0 + margin};
    [self.titleLabel sizeToFit];
    self.titleLabel.frame = (CGRect){.origin = (CGPoint){.x = margin, .y = self.imageViewWidth + 2 * margin}, .size = self.titleLabel.frame.size};
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
    _imageViewRadius = imageViewRadius;
    self.imageView.layer.cornerRadius = imageViewRadius;
}

- (void)setImageViewWidth:(CGFloat)imageViewWidth {
    _imageViewWidth = imageViewWidth;
    self.imageView.layer.cornerRadius = imageViewWidth / 2.0;
    [self setNeedsLayout];
    [self invalidateIntrinsicContentSize];
}

@end
