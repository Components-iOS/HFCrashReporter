//
//  HFCrashReporter.h
//  HFCrashReporter
//
//  Copyright © 2025 liuhongfei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <HFCrashReporter/HFReporterEmailModel.h>

NS_ASSUME_NONNULL_BEGIN

@class HFReporterEmailModel;

@interface HFCrashReporter : NSObject

/// 最大日志数量
@property (nonatomic, assign) NSInteger maxCrashLogNum;

/// 日志的路径
@property(nonatomic, copy, nullable) NSString *logPath;

/// 是否展示文件路径
/// 用于写入文件错误时，无法解析到Crash文件列表的问题排查
@property(nonatomic, assign) BOOL isShowaActualFiles;

/// 是否上报到邮箱
@property(nonatomic, assign) BOOL isReportEmail;

/// 如果上报到邮箱，必须设置
@property(nonatomic, assign) HFReporterEmailModel *emailModel;

/// 启动日志收集
/// - Returns 是否启动成功
- (BOOL)startCrashLogger;

/// 获取崩溃日志列表数据
/// - Returns 崩溃日志列表数据
- (NSArray *)getCrashFiles;

/// 获取Crash文件路径
/// - Returns 文件路径
- (NSString *)getCrashFilesPath;

/// 展示崩溃日志页
/// - Parameter VC: 控制器
- (void)showCrashVC:(UIViewController *)VC;

/// 模式管理单例
+ (HFCrashReporter *)defaultManager;
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;

@end

//! Project version number for HFCrashReporter.
FOUNDATION_EXPORT double HFCrashReporterVersionNumber;

//! Project version string for HFCrashReporter.
FOUNDATION_EXPORT const unsigned char HFCrashReporterVersionString[];


NS_ASSUME_NONNULL_END
