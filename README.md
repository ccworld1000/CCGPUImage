# CCGPUImage/GPUImage #

[CCGPUImage](https://github.com/ccworld1000/CCGPUImage) change for GPUImage, An open source iOS framework for GPU-based image and video processing.

# Pod Install

```sh
pod 'CCGPUImage'
```

# Add One key beauty [加入一键美颜], From 0.1.10

```objective-c
// @see CCGPUImageExample -> BeautifyFace
- (void)refresBottomImage {
    self.bottomImage.image = [UIImage imageWithCGImage:[[[GPUImageBeautifyFilter alloc] init] newCGImageByFilteringImage:self.topImage.image]];
}
```

# beauty effect

![BeautifyFace.png](https://github.com/ccworld1000/CCGPUImage/blob/master/Screenshots/BeautifyFace.png?raw=true)

