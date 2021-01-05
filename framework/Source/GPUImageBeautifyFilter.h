//
//  GPUImageBeautifyFilter.h
//  BeautifyFaceDemo
//
//  Created by guikz on 16/4/28.
//  Copyright © 2016年 guikz. All rights reserved.
//

#import "GPUImageFilterGroup.h"

@class GPUImageCombinationFilter;

@interface GPUImageBeautifyFilter : GPUImageFilterGroup

#if TARGET_IPHONE_SIMULATOR || TARGET_OS_IPHONE
/// One key beauty
/// @param sourceImage source image
+ (UIImage *)beautifyWithImage: (UIImage *)sourceImage;
#endif

@end
