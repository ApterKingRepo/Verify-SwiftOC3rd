
Pod::Spec.new do |s|
  s.name             = 'Verify-SwiftOC3rd'
  s.version          = '0.1.1'
  s.summary          = '验证Swift中添加第三方库'

  s.homepage         = 'https://github.com/ApterKingRepo/Verify-SwiftOC3rd'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ApterKing' => 'wangcccong@outlook.com' }
  s.source           = { :git => 'https://github.com/ApterKingRepo/Verify-SwiftOC3rd.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  s.source_files = 'Verify-SwiftOC3rd/Classes/**/*'
  # s.public_header_files = 'Pod/Classes/**/*.h'

  s.subspec 'BaiduMapKit' do |ss|
    ss.frameworks   =  'CoreLocation', 'QuartzCore', 'OpenGLES', 'SystemConfiguration', 'CoreGraphics', 'Security', 'CoreTelephony'
    ss.libraries    = 'sqlite3.0', 'stdc++.6.0.9'

    ss.vendored_frameworks =  'Verify-SwiftOC3rd/Vendors/*.framework'
    ss.vendored_libraries = 'Verify-SwiftOC3rd/Vendors/thirdlibs/*.a'

    ss.preserve_paths = 'Verify-SwiftOC3rd/Vendors/*.framework', 'Verify-SwiftOC3rd/Vendors/thirdlibs/*.a'
    ss.pod_target_xcconfig = { 'LD_RUNPATH_SEARCH_PATHS' => '$(PODS_ROOT)/Verify-SwiftOC3rd/Vendors/' }
  end

end

