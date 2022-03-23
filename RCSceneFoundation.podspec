
Pod::Spec.new do |s|
  
  # 1 - Info
  s.name             = 'RCSceneFoundation'
  s.version          = '0.0.1'
  s.summary          = 'Scene Foundation'
  s.description      = "All Utils For Scene."
  s.homepage         = 'https://www.rongcloud.cn/devcenter'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'shaoshuai' => 'shaoshuai@rongcloud.cn' }
  s.source           = { :git => 'https://github.com/rongcloud-community/rongcloud-scene-foundation-ios.git', :tag => s.version.to_s }
  
  # 2 - Mini Version
  s.ios.deployment_target = '13.0'
  s.swift_version = '5.0'
  
  # 3 - XCConfig
  s.pod_target_xcconfig = {
    'VALID_ARCHS' => 'arm64 x86_64'
  }
  
  # 4 - Source
  s.source_files = 'RCSceneFoundation/**/*'
  
  # 5 - Dependencies
  s.dependency 'SwiftyBeaver'
  
  #
  
end
