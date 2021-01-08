//
//  BeautifyFace.m
//  CCGPUImageExample
//
//  Created by CC on 2021/1/4.
//  Copyright © 2021 - now youhua deng (deng you hua | CC) <ccworld1000@gmail.com>. All rights reserved.
//

#import "BeautifyFace.h"

@interface BeautifyFace ()

@end

@implementation BeautifyFace

- (void)refresBottomImage {
    self.bottomImage.image = [UIImage imageWithCGImage:[[[GPUImageBeautifyFilter alloc] init] newCGImageByFilteringImage:self.topImage.image]];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.topImage.image = [UIImage imageNamed:@"face"];
    [self refresBottomImage];
}

@end
