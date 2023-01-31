//
//  BEPhotoNightSceneTask.h
//  Core
//
//  Created by Bytedance on 2022/4/6.
//

#ifndef BEPhotoNightSceneTask_h
#define BEPhotoNightSceneTask_h

#import "BEAlgorithmTask.h"
#import "BEImageUtils.h"
#import "bef_ai_image_quality_enhancement_photo_night_scene.h"

@protocol BEPhotoNightSceneResourceProvider <NSObject>

- (NSString *)licensePath;
-(const char*)skinSegPath;

@end

@interface BEPhotoNightSceneTask:NSObject

@property (nonatomic, strong) id<BELicenseProvider> provider;
@property (nonatomic, assign) bool inited;
-(int)initTaskWidth:(int)width height:(int)height imageNum:(int)imageNum;
-(CVPixelBufferRef)processMutilBuffer:(NSArray<NSValue*>*)buffer;
-(int)destroyTask;
@end


#endif /* BEPhotoNightSceneTask_h */
