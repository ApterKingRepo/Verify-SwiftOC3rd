
Pod::Spec.new do |s|
  s.name             = 'Verify-SwiftOC3rd'
  s.version          = '0.1.1'
  s.summary          = '验证私有组件中使用Swift结合OC第三方.framework、.library库及OC文件组合打包构建私有Pod'

  s.homepage         = 'https://github.com/ApterKingRepo/Verify-SwiftOC3rd'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ApterKing' => 'wangcccong@outlook.com' }
  s.source           = { :git => 'https://github.com/ApterKingRepo/Verify-SwiftOC3rd.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'Verify-SwiftOC3rd/Classes/**/*'
  s.public_header_files = 'Verify-SwiftOC3rd/Classes/**/*.h'

  s.frameworks   =  'CoreLocation', 'QuartzCore', 'OpenGLES', 'SystemConfiguration', 'CoreGraphics', 'Security', 'CoreTelephony'
  s.libraries    = 'sqlite3.0', 'stdc++.6.0.9'

  s.vendored_frameworks =  'Verify-SwiftOC3rd/Vendors/*.framework'
  s.vendored_libraries = 'Verify-SwiftOC3rd/Vendors/thirdlibs/*.a'

  s.preserve_paths = 'Verify-SwiftOC3rd/Vendors/*.framework', 'Verify-SwiftOC3rd/Vendors/thirdlibs/*.a'
  s.pod_target_xcconfig = { 'LD_RUNPATH_SEARCH_PATHS' => '$(PODS_ROOT)/Verify-SwiftOC3rd/Vendors/' }

end

