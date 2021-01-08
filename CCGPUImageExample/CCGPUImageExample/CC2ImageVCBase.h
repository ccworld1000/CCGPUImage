//
//  CC2ImageVCBase.h
//  CCGPUImageExample
//
//  Created by CC on 2021/1/5.
//  Copyright © 2021 - now youhua deng (deng you hua | CC) <ccworld1000@gmail.com>. All rights reserved.
//

#import "CCViewControllerBase.h"

NS_ASSUME_NONNULL_BEGIN

@interface CC2ImageVCBase : CCViewControllerBase

@property (nonatomic, strong) UIImageView *topImage;
@property (nonatomic, strong) UIImageView *bottomImage;

- (void)refresBottomImage;

@end

NS_ASSUME_NONNULL_END
