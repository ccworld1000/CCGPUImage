#import <UIKit/UIKit.h>
#import "GPUImageOutput.h"


@interface GPUImagePicture : GPUImageOutput
{
    CGSize pixelSizeOfImage;
    BOOL hasProcessedImage;
    
    dispatch_semaphore_t imageUpdateSemaphore;
}

// Initialization and teardown
- (instancetype)initWithURL:(NSURL *)url;
- (instancetype)initWithImage:(UIImage *)newImageSource;
- (instancetype)initWithCGImage:(CGImageRef)newImageSource;
- (instancetype)initWithImage:(UIImage *)newImageSource smoothlyScaleOutput:(BOOL)smoothlyScaleOutput;
- (instancetype)initWithCGImage:(CGImageRef)newImageSource smoothlyScaleOutput:(BOOL)smoothlyScaleOutput;
- (instancetype)initWithImage:(UIImage *)newImageSource removePremultiplication:(BOOL)removePremultiplication;
- (instancetype)initWithCGImage:(CGImageRef)newImageSource removePremultiplication:(BOOL)removePremultiplication;
- (instancetype)initWithImage:(UIImage *)newImageSource smoothlyScaleOutput:(BOOL)smoothlyScaleOutput removePremultiplication:(BOOL)removePremultiplication;
- (instancetype)initWithCGImage:(CGImageRef)newImageSource smoothlyScaleOutput:(BOOL)smoothlyScaleOutput removePremultiplication:(BOOL)removePremultiplication;

// Image rendering
- (void)processImage;
- (CGSize)outputImageSize;

/**
 * Process image with all targets and filters asynchronously
 * The completion handler is called after processing finished in the
 * GPU's dispatch queue - and only if this method did not return NO.
 *
 * @returns NO if resource is blocked and processing is discarded, YES otherwise
 */
- (BOOL)processImageWithCompletionHandler:(void (^)(void))completion;
- (void)processImageUpToFilter:(GPUImageOutput<GPUImageInput> *)finalFilterInChain withCompletionHandler:(void (^)(UIImage *processedImage))block;

@end
