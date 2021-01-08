//
//  RGBFilter.m
//  CCGPUImageExample
//
//  Created by CC on 2021/1/8.
//  Copyright © 2021 - now youhua deng (deng you hua | CC) <ccworld1000@gmail.com>. All rights reserved.
//

#import "RGBFilter.h"

@interface RGBFilter ()

@end

@implementation RGBFilter

- (void)refresBottomImage {
    static NSInteger index = 0;
    
    GPUImageRGBFilter *rgbFilter = [[GPUImageRGBFilter alloc] init];
    CGFloat newValue = 0.5;
    if (index % 3 == 0) {
        [rgbFilter setRed:newValue];
    } else if (index % 2 == 0) {
        [rgbFilter setBlue:newValue];
    } else {
        [rgbFilter setGreen:newValue];
    }
    
    self.bottomImage.image = [UIImage imageWithCGImage:[rgbFilter newCGImageByFilteringImage:self.topImage.image]];
    
    index++;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.topImage.image = [UIImage imageNamed:@"haha"];
    [self refresBottomImage];
    
}

@end
