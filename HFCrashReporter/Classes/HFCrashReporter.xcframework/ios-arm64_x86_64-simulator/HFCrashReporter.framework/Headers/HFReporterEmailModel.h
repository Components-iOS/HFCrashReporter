//
//  HFReporterEmailModel.h
//  HFCrashReporter
//
//  Created by bizconf on 2025/3/12.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HFReporterEmailModel : NSObject

/// [Required] 要发送的电子邮件地址列表
@property(nonatomic, readwrite, copy) NSArray<NSString *> *recipients;

/// [Required] 电子邮件主题
/// Default: "Crash Report (YourBundleID)"
@property(nonatomic, readwrite, copy) NSString *subject;

/// [Optional] 报告附带的信息
/// Default: nil
@property(nonatomic, readwrite, copy, nullable) NSString *message;

@end

NS_ASSUME_NONNULL_END
