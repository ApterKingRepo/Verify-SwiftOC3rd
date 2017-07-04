
Pod::Spec.new do |s|
  s.name             = 'Verify-SwiftOC3rd'
  s.version          = '0.1.4'
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

  s.prepare_command = <<-EOF

    # 业务Module
    rm -rf Verify-SwiftOC3rd/Classes/Modules
    mkdir Verify-SwiftOC3rd/Classes/Modules
    touch Verify-SwiftOC3rd/Classes/Modules/module.modulemap
    cat <<-EOF > Verify-SwiftOC3rd/Classes/Modules/module.modulemap
    framework module Verify {
      umbrella header "Verify_SwiftOC3rd.h"
      export *
      link "sqlite3.0"
      link "stdc++.6.0.9"
    }
    \EOF


    # 创建Base Module
    rm -rf Verify-SwiftOC3rd/Vendors/BaiduMapAPI_Base.framework/Modules
    mkdir Verify-SwiftOC3rd/Vendors/BaiduMapAPI_Base.framework/Modules
    touch Verify-SwiftOC3rd/Vendors/BaiduMapAPI_Base.framework/Modules/module.modulemap
    cat <<-EOF > Verify-SwiftOC3rd/Vendors/BaiduMapAPI_Base.framework/Modules/module.modulemap
    framework module BaiduMapAPI_Base {
      umbrella header "BMKBaseComponent.h"
      export *
      link "sqlite3.0"
      link "stdc++.6.0.9"
    }
    \EOF

    # 创建Map Module
    rm -rf Verify-SwiftOC3rd/Vendors/BaiduMapAPI_Map.framework/Modules
    mkdir Verify-SwiftOC3rd/Vendors/BaiduMapAPI_Map.framework/Modules
    touch Verify-SwiftOC3rd/Vendors/BaiduMapAPI_Map.framework/Modules/module.modulemap
    cat <<-EOF > Verify-SwiftOC3rd/Vendors/BaiduMapAPI_Map.framework/Modules/module.modulemap
    framework module BaiduMapAPI_Map {
      umbrella header "BMKMapComponent.h"
      export *
      link "sqlite3.0"
      link "stdc++.6.0.9"
    }
    \EOF

  EOF

end

