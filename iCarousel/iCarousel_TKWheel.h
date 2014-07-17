//
//  iCarousel_TKWheel.h
//  Thinkr
//
//  Created by Dimas Gabriel on 7/17/14.
//  Copyright (c) 2014 Thinkr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>
#import "iCarousel.h"

@interface iCarousel_TKWheel : NSObject
+ (CATransform3D)carousel:(iCarousel *)_carousel itemTransformForOffset:(CGFloat)offset baseTransform:(CATransform3D)transform;
@end
