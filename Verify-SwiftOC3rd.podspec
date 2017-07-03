
Pod::Spec.new do |s|
  s.name             = 'Verify-SwiftOC3rd'
  s.version          = '0.1.2'
  s.summary          = '验证私有组件中使用Swift结合OC第三方.framework、.library库及OC文件组合打包构建私有Pod'

  s.homepage         = 'https://github.com/ApterKingRepo/Verify-SwiftOC3rd'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ApterKing' => 'wangcccong@outlook.com' }
  s.source           = { :git => 'https://github.com/ApterKingRepo/Verify-SwiftOC3rd.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'Verify-SwiftOC3rd/Classes/**/*', 'Verify-SwiftOC3rd/Vendors/*.framework/Headers/**.h'
  s.public_header_files = 'Verify-SwiftOC3rd/Classes/**/*.h', 'Verify-SwiftOC3rd/Vendors/BadiduMapAPI_Base.framework/Headers/BMKBaseComponent.h', 'Verify-SwiftOC3rd/Vendors/BadiduMapAPI_Map.framework/Headers/BMKMapComponent.h'
  s.resources = 'Verify-SwiftOC3rd/Vendors/BaiduMapAPI_Map.framework/Resources/mapapi.bundle'
#s.module_name = 'BaiduMapKit'

  s.frameworks   =  'CoreLocation', 'QuartzCore', 'OpenGLES', 'SystemConfiguration', 'CoreGraphics', 'Security', 'CoreTelephony'
  s.libraries    = 'sqlite3.0', 'stdc++.6.0.9'

  s.vendored_frameworks =  'Verify-SwiftOC3rd/Vendors/*.framework'
  s.vendored_libraries = 'Verify-SwiftOC3rd/Vendors/thirdlibs/*.a'

  s.preserve_paths = 'Verify-SwiftOC3rd/Vendors/*.framework', 'Verify-SwiftOC3rd/Vendors/thirdlibs/*.a'
  s.pod_target_xcconfig = {
#'FRAMEWORK_SEARCH_PATHS' => '${PODS_ROOT}/Verify-SwiftOC3rd/Vendors',
            'HEADER_SEARCH_PATHS' => '$(PODS_ROOT)/Verify-SwiftOC3rd/Vendors/*.framework/Headers',
            'LD_RUNPATH_SEARCH_PATHS' => '$(PODS_ROOT)/Verify-SwiftOC3rd/Vendors/',
            'OTHER_LDFLAGS' => '-ObjC'
  }


end

