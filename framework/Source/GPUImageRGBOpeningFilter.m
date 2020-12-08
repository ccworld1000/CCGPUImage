#import "GPUImageRGBOpeningFilter.h"
#import "GPUImageRGBErosionFilter.h"
#import "GPUImageRGBDilationFilter.h"

@implementation GPUImageRGBOpeningFilter

- (instancetype)init;
{
    if (!(self = [self initWithRadius:1]))
    {
		return nil;
    }
    
    return self;
}

- (instancetype)initWithRadius:(NSUInteger)radius;
{
    if (!(self = [super init]))
    {
		return nil;
    }
    
    // First pass: erosion
    erosionFilter = [[GPUImageRGBErosionFilter alloc] initWithRadius:radius];
    [self addFilter:erosionFilter];
    
    // Second pass: dilation
    dilationFilter = [[GPUImageRGBDilationFilter alloc] initWithRadius:radius];
    [self addFilter:dilationFilter];
    
    [erosionFilter addTarget:dilationFilter];
    
    self.initialFilters = [NSArray arrayWithObjects:erosionFilter, nil];
    self.terminalFilter = dilationFilter;
    
    return self;
}


@end
