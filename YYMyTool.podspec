

# /************ 配置说明 ***************/

Pod::Spec.new do |s|
    s.name         = 'YYMyTool'
    s.version      = '1.1.7'
    s.summary      = 'a common component'
    s.homepage     = 'https://github.com/ArrQing/YYMyTool'
    s.license      = 'MIT'
    s.authors      = { 'YY' => '3297509752@qq.com' }
    s.platform     = :ios, '8.0'
    s.framework = "UIKit"
    s.source       = { :git => 'https://github.com/ArrQing/YYMyTool.git', :tag => s.version }
    s.requires_arc = true

    s.source_files = 'YYTool/YYToolBase/YYBaseTools.h'
    s.subspec 'RequestTool' do |ss|
        ss.ios.deployment_target = '8.0'
        ss.source_files = 'YYTool/YYToolBase/RequestTool/RequestTool.h','YYTool/YYToolBase/RequestTool/**/**.{h,m}'
    end
    s.subspec 'YYMyTimeManager' do |ss|
        ss.ios.deployment_target = '8.0'
        ss.source_files = 'YYTool/YYToolBase/YYMyTimeManager/YYTimeTool.h','YYTool/YYToolBase/YYMyTimeManager/**/**.{h,m}'
    end
   
end


# Pod::Spec.new do |s|

#   s.name         = 'YYMyTool'
#   s.version      = '1.1.6'
#   s.summary      = 'An easy way to send request and upload file'
#   s.homepage     = 'https://github.com/ArrQing/YYMyTool'
#   s.license      = 'MIT'
#   s.author       = { 'YY' => '3297509752@qq.com' }
#   s.platform     = :ios, '8.0'
#   s.source       = { :git => 'https://github.com/ArrQing/YYMyTool.git', :tag => s.version }
#   s.requires_arc = true

#   # s.source_files = 'YYTool/YYTool/YYToolBase/**/*.{h,m}'

#   # s.source_files = 'YYTool/YYTool/YYToolBase/YYBaseTools.h','YYTool/YYTool/YYToolBase/RequestTool/**/*.{h,m}','YYTool/YYTool/YYToolBase/YYMyTimeManager/**/*.{h,m}'


#   # 如果超过两级 文件夹 这个 会 报错的 结构尚浅
#   # s.public_header_files = 'YYMyTool/YYTool/YYTool/YYToolBase/YYBaseTools.h'
#    # s.public_header_files = 'YYTool/YYTool/YYToolBase/* * /* * /*.h'


# # /三级文件夹以及 多个 子库 一定要把父文件夹的source_files给注释掉 /



# s.subspec 'YYToolBase' do |ss|
#         # t.source_files = 'YYTool/YYTool/Classes/YYToolBase/RequestTool/**/*'
      
#       ss.subspec 'BaseHeader' do |sss|
#         sss.source_files = 'YYTool/YYTool/YYToolBase/BaseHeader/**/*'
#         end

#       ss.subspec 'RequestTool' do |sss|
#         sss.source_files = 'YYTool/YYTool/YYToolBase/RequestTool/**/*.{h,m}'
#         end

#       ss.subspec 'YYMyTimeManager' do |sss|
#         sss.source_files = 'YYTool/YYTool/YYToolBase/YYMyTimeManager/**/*.{h,m}'
#         end
      

#       ss.subspec 'YYCheckVersion' do |sss|
#         sss.source_files = 'YYTool/YYTool/YYToolBase/YYCheckVersion/**/*.{h,m}'
#         sss.frameworks = 'UIKit', 'Foundation'  
#         end

#       ss.subspec 'YYAttributedString' do |sss|
#         sss.source_files = 'YYTool/YYTool/YYToolBase/YYAttributedString/**/*.{h,m}'
#         sss.frameworks = 'UIKit','Foundation'

#         end

#       # ss.subspec 'YYCategory' do |sss|
#       #   sss.source_files = 'YYTool/YYTool/YYToolBase/YYCategory/**/*.{h,m}'
#       #   sss.frameworks = 'UIKit','Foundation','AVFoundation','AudioToolbox','CommonCrypto','sys','objc'
#       #   end
        
      
#       ss.subspec 'YYIconImgManager' do |sss|
#         sss.source_files = 'YYTool/YYTool/YYToolBase/YYIconImgManager/**/*.{h,m}'
#         sss.frameworks = 'UIKit','Foundation'

#         end
      
        
     

#       ss.subspec 'YYNetWork' do |sss|
#               sss.source_files = 'YYTool/YYTool/YYToolBase/YYNetWork/**/*.{h,m}'
#               sss.dependency 'AFNetworking'
#               sss.frameworks = 'UIKit','Foundation'

#               end

#     end










# /******** 补充点 你想用的 三方库 ********/
  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }

  # s.library   = "iconv"
  # s.vendored_libraries = 'Classes/**.a', 'Classes/**.a'
  # s.resources          = "LPPushService/Images/*.png"


  # s.dependency "JSONKit", "~> 1.4"
  # s.dependency "AFNetworking", "~> 3.2.1"
  # s.frameworks = 'UIKit','Foundation'
 

# end



# /************ 版本更新维护 ***************/


# git tag 1.1.6

# git push origin 1.1.6

# pod lib lint YYMyTool.podspec --allow-warnings

# pod trunk push YYMyTool.podspec --allow-warnings



