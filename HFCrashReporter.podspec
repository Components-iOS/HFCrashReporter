#
# Be sure to run `pod lib lint HFCrashReporter.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HFCrashReporter'
  s.version          = '1.23.36'
  s.summary          = '崩溃日志收集显示上传'
  s.description      = <<-DESC
  崩溃日志收集显示上传
                       DESC

  s.homepage         = 'https://github.com/Components-iOS/HFCrashReporter'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'liuhongfei' => '13718045729@163.com' }
  s.source           = { :git => 'https://github.com/Components-iOS/HFCrashReporter.git', :tag => s.version.to_s }
  s.platform         = :ios
  s.ios.deployment_target = '12.0'
  s.vendored_frameworks = 'HFCrashReporter/Classes/HFCrashReporter.xcframework'
  
  s.resource_bundles = {
      'HFCrashReporter' => ['HFCrashReporter/Assets/*']
  }
end
