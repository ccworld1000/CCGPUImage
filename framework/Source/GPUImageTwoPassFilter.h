#import "GPUImageFilter.h"

@interface GPUImageTwoPassFilter : GPUImageFilter
{
    GPUImageFramebuffer *secondOutputFramebuffer;

    GLProgram *secondFilterProgram;
    GLint secondFilterPositionAttribute, secondFilterTextureCoordinateAttribute;
    GLint secondFilterInputTextureUniform, secondFilterInputTextureUniform2;
    
    NSMutableDictionary *secondProgramUniformStateRestorationBlocks;
}

// Initialization and teardown
- (instancetype)initWithFirstStageVertexShaderFromString:(NSString *)firstStageVertexShaderString firstStageFragmentShaderFromString:(NSString *)firstStageFragmentShaderString secondStageVertexShaderFromString:(NSString *)secondStageVertexShaderString secondStageFragmentShaderFromString:(NSString *)secondStageFragmentShaderString;
- (instancetype)initWithFirstStageFragmentShaderFromString:(NSString *)firstStageFragmentShaderString secondStageFragmentShaderFromString:(NSString *)secondStageFragmentShaderString;
- (void)initializeSecondaryAttributes;

@end
