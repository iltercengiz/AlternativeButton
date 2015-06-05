//
//  UIAlternativeButton.h
//  Pods
//
//  Created by Ilter Cengiz on 03/03/15.
//
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface UIAlternativeButton : UIButton

/**
 Amount of radius that will be applied to the image view of the button.
 Defaults to 0.0;
 */
@property (nonatomic) IBInspectable CGFloat imageViewRadius;

/**
 The width of the image placed in the button.
 Also used for height.
 Defaults to 64.0;
 */
@property (nonatomic) IBInspectable CGFloat imageViewWidth;

@end
