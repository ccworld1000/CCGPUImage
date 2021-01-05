//
//  BeautifyFace.m
//  CCGPUImageExample
//
//  Created by CC on 2021/1/4.
//  Copyright © 2021 - now youhua deng (deng you hua | CC) <ccworld1000@gmail.com>. All rights reserved.
//

#import "BeautifyFace.h"

@interface BeautifyFace ()

@property (nonatomic, strong) UIImageView *topImage;
@property (nonatomic, strong) UIImageView *bottomImage;

@end

@implementation BeautifyFace

- (void) loadImageView {
    UIImage *image = [UIImage imageNamed:@"face"];

    CGRect frame = self.view.frame;
    CGPoint center = self.view.center;

    CGSize size = frame.size;
    CGFloat x, width, height;

    width = size.width / 2.0;
    height = size.height / 2.0;
    
    x = center.x - width / 2;
    
    CGFloat y = center.y - height / 2.0;
    UIImageView *top = [[UIImageView alloc] initWithFrame: CGRectMake(0, y, width, height)];
    UIImageView *bottom = [[UIImageView alloc] initWithFrame:CGRectMake(width, y, width, height)];

    top.contentMode = UIViewContentModeScaleAspectFit;
    bottom.contentMode = UIViewContentModeScaleAspectFit;
    
    [self.view addSubview:top];
    [self.view addSubview:bottom];
    
    self.topImage = top;
    self.topImage.image = image;
    self.bottomImage = bottom;
}

- (void)refresBottomImage {
    self.bottomImage.image = [UIImage imageWithCGImage:[[[GPUImageBeautifyFilter alloc] init] newCGImageByFilteringImage:self.topImage.image]];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRefresh target:self action:@selector(refresBottomImage)];
    
    [self loadImageView];
    [self refresBottomImage];
}

@end
