#
# Be sure to run `pod lib lint HFCrashReporter.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HFCrashReporter'
  s.version          = '0.1.2'
  s.summary          = '崩溃日志收集显示上传'
  s.description      = <<-DESC
  崩溃日志收集显示上传
                       DESC

  s.homepage         = 'https://github.com/Components-iOS'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'liuhongfei' => 'hongfei_liu@bizconf.cn' }
  s.source           = { :git => 'https://github.com/Components-iOS/HFCrashReporter.git', :tag => s.version.to_s }
  s.ios.deployment_target = '12.0'
  s.platform         = :ios
  s.xcconfig              = { "BUILD_LIBRARY_FOR_DISTRIBUTION" => "YES" }
  s.pod_target_xcconfig   = { "VALID_ARCHS" => "arm64 armv7 x86_64", "DEFINES_MODULE" => "YES" }
  s.user_target_xcconfig  = { "VALID_ARCHS" => "arm64 armv7 x86_64", "DEFINES_MODULE" => "YES" }
  s.vendored_frameworks = 'HFCrashReporter/Classes/HFCrashReporter.xcframework'
end
