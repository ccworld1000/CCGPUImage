//
//  CC2ImageVCBase.m
//  CCGPUImageExample
//
//  Created by CC on 2021/1/5.
//  Copyright © 2021 - now youhua deng (deng you hua | CC) <ccworld1000@gmail.com>. All rights reserved.
//

#import "CC2ImageVCBase.h"

@interface CC2ImageVCBase ()

@end

@implementation CC2ImageVCBase

- (void) loadImageView {
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
    self.bottomImage = bottom;
}

- (void)refresBottomImage {
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRefresh target:self action:@selector(refresBottomImage)];
    
    [self loadImageView];
}

@end
