//
//  BEPhotoNightSceneTask.m
//  BECore
//
//  Created by Bytedance on 2022/4/6.
//

#import <Foundation/Foundation.h>
#import "BEPhotoNightSceneTask.h"
#import "BELensResourceHelper.h"
#import "BEImageOpeartion.h"

@interface BEPhotoNightSceneTask()
@property(nonatomic, assign) bef_image_quality_enhancement_handle handle;
@property(nonatomic, assign) CVPixelBufferRef resultPixelBuffer;
@property(nonatomic, assign) int width;
@property(nonatomic, assign) int height;
@property(nonatomic, assign) int inputNum;
@end


@implementation BEPhotoNightSceneTask

- (instancetype)init{
    if (self = [super init]) {
        self.inited = false;
    }
    return self;
}
-(int)initTaskWidth:(int)width height:(int)height imageNum:(int)imageNum
{
    BELensResourceHelper *resourceHelper = [BELensResourceHelper new];
    int ret = bef_ai_image_quality_enhancement_photo_night_scene_create(&_handle, resourceHelper.skinSegPath, width, height, imageNum, BEF_AI_LENS_NV12);
    CHECK_RET_AND_RETURN(bef_ai_image_quality_enhancement_photo_night_scene_create, ret)
    
    if (self.provider.licenseMode == OFFLINE_LICENSE) {
        ret = bef_ai_image_quality_enhancement_photo_night_scene_check_license(_handle, self.provider.licensePath);
    } else {
        ret = bef_ai_image_quality_enhancement_photo_night_scene_check_online_license(_handle, self.provider.licensePath);
    }
    
    CHECK_RET_AND_RETURN(bef_ai_image_quality_enhancement_photo_night_scene_check_license, ret)
    _width = width;
    _height = height;
    _inputNum = imageNum;
    _inited = true;
    return ret;
}


-(CVPixelBufferRef)processMutilBuffer:(NSArray<NSValue*>*)buffers
{
    void* input[buffers.count];
    for (int i = 0; i < _inputNum; i ++) {
        input[i] = [buffers[i] pointerValue];
    }
    
    void* output = NULL;
    int ret = bef_ai_image_quality_enhancement_photo_night_scene_process(_handle, input, (int)_inputNum, &output);
    CHECK_RET_AND_RETURN_RESULT(bef_ai_image_quality_enhancement_photo_night_scene_process, ret, nil)
    CVPixelBufferRef result = output;
    return result;
}


- (int)destroyTask{
    if (_resultPixelBuffer != nil) {
        CFRelease(_resultPixelBuffer);
        _resultPixelBuffer = nil;
    }
    return bef_ai_image_quality_enhancement_photo_night_scene_destroy(_handle);
}
@end
