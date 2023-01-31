#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "BEAlgorithmKey.h"
#import "BEAlgorithmTask.h"
#import "BEAlgorithmTaskFactory.h"
#import "BEAlgorithmResourceHelper.h"
#import "BEActionRecognitionAlgorithmTask.h"
#import "BEAnimojiAlgorithmTask.h"
#import "BEBachSkeletonAlgorithmTask.h"
#import "BEC1AlgorithmTask.h"
#import "BEC2AlgorithmTask.h"
#import "BECarDetectTask.h"
#import "BEChromaKeyingAlgorithmTask.h"
#import "BEConcentrationTask.h"
#import "BEDynamicGestureAlgorithmTask.h"
#import "BEFaceAlgorithmTask.h"
#import "BEFaceClusterAlgorithmTask.h"
#import "BEFaceVerifyAlgorithmTask.h"
#import "BEGazeEstimationTask.h"
#import "BEHairParserAlgorithmTask.h"
#import "BEHandAlgorithmTask.h"
#import "BEHeadSegmentAlgorithmTask.h"
#import "BEHumanDistanceAlgorithmTask.h"
#import "BELightClsAlgorithmTask.h"
#import "BEPetFaceAlgorithmTask.h"
#import "BEPortraitMattingAlgorithmTask.h"
#import "BESkeletonAlgorithmTask.h"
#import "BESkinSegmentationAlgorithmTask.h"
#import "BESkySegAlgorithmTask.h"
#import "BEStudentIdOcrTask.h"
#import "BEVideoClsAlgorithmTask.h"
#import "BEAvatarManager.h"
#import "BEGLUtils.h"
#import "Config.h"
#import "Core.h"
#import "BEEffectManager.h"
#import "BEEffectResourceHelper.h"
#import "BEAdaptiveSharpenTask.h"
#import "BEImageOpeartion.h"
#import "BEImageQualityProcessManager.h"
#import "BELensResourceHelper.h"
#import "BEPhotoNightSceneTask.h"
#import "BEVideoSRTask.h"
#import "BEHttpRequestProvider.h"
#import "BELicenseHelper.h"
#import "macro.h"
#import "BECommonUtils.h"
#import "BEGLTexture.h"
#import "BEImageUtils.h"
#import "BEOpenGLRenderHelper.h"
#import "BETimeRecoder.h"

FOUNDATION_EXPORT double EffectDivisionVersionNumber;
FOUNDATION_EXPORT const unsigned char EffectDivisionVersionString[];

