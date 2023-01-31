//
//  BELensResourceHelper.m
//  Lens
//
//  Created by qun on 2021/6/7.
//

#import "BELensResourceHelper.h"
#import "macro.h"

static NSString *LICENSE_PATH = @"LicenseBag";
static NSString *MODEL_PATH = @"ModelResource";
static NSString *BUNDLE = @"bundle";
static NSString *SKIN_SEGMENTATION_MODEL = @"/skin_segmentation/tt_skin_seg_v4.0.model";

@interface BELensResourceHelper () {
    NSString            *_licensePrefix;
}

@end

@implementation BELensResourceHelper

- (NSString *)licensePath {
    NSString *licenseName = [NSString stringWithFormat:@"/%s", LICENSE_NAME];
    if (!_licensePrefix) {
        _licensePrefix = [[NSBundle mainBundle] pathForResource:LICENSE_PATH ofType:BUNDLE];
    }
    return [_licensePrefix stringByAppendingString:licenseName];
}

- (NSString *)videoSRModelPath {
    return nil;
}

-(const char*)skinSegPath {
    return [self modelPath:SKIN_SEGMENTATION_MODEL];;
}

- (const char *)modelPath:(NSString *)model {
    return [[[self modelDirPath] stringByAppendingString:model] UTF8String];
}

- (NSString *)modelDirPath {
    return [[NSBundle mainBundle] pathForResource:MODEL_PATH ofType:BUNDLE];
}

@end
