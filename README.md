# CCGPUImage/GPUImage/CCGPUImageExample #

[CCGPUImage](https://github.com/ccworld1000/CCGPUImage) change for GPUImage, An open source iOS framework for GPU-based image and video processing.

# Pod Install

```sh
pod 'CCGPUImage'
```

# CCGPUImageExample

CCGPUImageExample for CCGPUImage Example, [https://github.com/ccworld1000/CCGPUImageExample](https://github.com/ccworld1000/CCGPUImageExample).

# Add One key beauty [加入一键美颜], From 0.1.10

```objective-c
// @see CCGPUImageExample -> BeautifyFace
- (void)refresBottomImage {
    self.bottomImage.image = [[[GPUImageBeautifyFilter alloc] init] imageByFilteringImage:self.topImage.image];
}
```

# BeautifyFace effect

![BeautifyFace.jpg](https://raw.githubusercontent.com/ccworld1000/CCGPUImageExample/main/Screenshots/BeautifyFace.jpg)

# SimpleImageFilter effect

![SimpleImageFilter.jpg](https://raw.githubusercontent.com/ccworld1000/CCGPUImageExample/main/Screenshots/SimpleImageFilter.jpg)

# RGBFilter effect

![RGBFilter.jpg](https://raw.githubusercontent.com/ccworld1000/CCGPUImageExample/main/Screenshots//RGBFilter.jpg)
