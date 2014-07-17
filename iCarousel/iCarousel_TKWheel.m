//
//  iCarousel_TKWheel.m
//  Thinkr
//
//  Created by Dimas Gabriel on 7/17/14.
//  Copyright (c) 2014 Thinkr. All rights reserved.
//

#import "iCarousel_TKWheel.h"

@implementation iCarousel_TKWheel
+ (CATransform3D)carousel:(iCarousel *)_carousel itemTransformForOffset:(CGFloat)offset baseTransform:(CATransform3D)transform
{
    CGFloat count = _carousel.numberOfVisibleItems;
    CGFloat spacing = 1.5f;
    CGFloat arc = M_PI * 2.0f;
    CGFloat radius = _carousel.itemWidth * spacing * count / arc;
    CGFloat angle = arc / count * offset;
    
    return CATransform3DTranslate(transform, radius * sin(angle), radius - radius * cos(angle), 0.0f);
    
    /*CGFloat count = _carousel.numberOfVisibleItems;
    CGFloat spacing = 1.0f;
    CGFloat arc = M_PI * 2.0f;
    CGFloat radius = _carousel.itemWidth * spacing * count / arc;
    CGFloat angle = arc / count * offset;
    
    return CATransform3DTranslate(transform, radius - radius * cos(angle), radius * sin(angle), 0.0f);*/
}
@end
