#import "GPUImageOutput.h"

@interface GPUImageTextureInput : GPUImageOutput
{
    CGSize textureSize;
}

// Initialization and teardown
- (instancetype)initWithTexture:(GLuint)newInputTexture size:(CGSize)newTextureSize;

// Image rendering
- (void)processTextureWithFrameTime:(CMTime)frameTime;

@end
