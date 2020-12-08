#import "GPUImageOutput.h"

@interface GPUImageUIElement : GPUImageOutput

// Initialization and teardown
- (instancetype)initWithView:(UIView *)inputView;
- (instancetype)initWithLayer:(CALayer *)inputLayer;

// Layer management
- (CGSize)layerSizeInPixels;
- (void)update;
- (void)updateUsingCurrentTime;
- (void)updateWithTimestamp:(CMTime)frameTime;

@end
