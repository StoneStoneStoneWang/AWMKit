Pod::Spec.new do |spec|
  
  spec.name         = "AWMContainer"
  spec.version      = "0.0.1"
  spec.summary      = "A Lib For 某些界面."
  spec.description  = <<-DESC
  AWMContainer是欢迎界面
  DESC
  
  spec.homepage     = "https://github.com/StoneStoneStoneWang/AWMKit.git"
  spec.license      = { :type => "MIT", :file => "LICENSE.md" }
  spec.author             = { "StoneStoneStoneWang" => "yuanxingfu1314@163.com" }
  spec.platform     = :ios, "10.0"
  spec.ios.deployment_target = "10.0"
  
  spec.swift_version = '5.0'
  
  spec.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  
  spec.static_framework = true
  
  spec.frameworks = 'UIKit', 'Foundation'
  
  spec.source = { :git => "https://github.com/StoneStoneStoneWang/AWMKit.git", :tag => "#{spec.version}" }
  
  # 翻译
  spec.subspec 'Welcome' do |welcome|
    
    welcome.source_files = "Code/AWMContainer/Welcome/*.{h,m}"
    welcome.dependency 'AWMConfig'
    welcome.dependency 'AWMBridge/Welcome/Bridge'
    welcome.dependency 'SToolsKit'
    welcome.dependency 'Masonry'
  end
  
  # 协议 textview
  spec.subspec 'Protocol' do |protocol|
    
    protocol.source_files = "Code/AWMContainer/Protocol/*.{h,m}"
    protocol.dependency 'AWMConfig'
    protocol.dependency 'AWMBridge/Protocol/Bridge'
    protocol.dependency 'SToolsKit'
    protocol.dependency 'Masonry'
  end
  # 协议 webview
  spec.subspec 'Privacy' do |privacy|
    
    privacy.source_files = "Code/AWMContainer/Privacy/*.{h,m}"
    privacy.dependency 'AWMConfig'
    privacy.dependency 'AWMBridge/Protocol/Bridge'
    privacy.dependency 'SToolsKit'
    privacy.dependency 'Masonry'
  end
  
  # 登陆 login
  spec.subspec 'Login' do |login|
    
    login.source_files = "Code/AWMContainer/Login/*.{h,m}"
    login.dependency 'AWMConfig'
    login.dependency 'AWMBridge/Login/Bridge'
    login.dependency 'Masonry'
    login.dependency 'AWMTextField'
    login.dependency 'AWMTransition'
  end
  
  # 注册 reg
  spec.subspec 'Reg' do |reg|
    
    reg.source_files = "Code/AWMContainer/Reg/*.{h,m}"
    reg.dependency 'AWMConfig'
    reg.dependency 'AWMBridge/Reg/Bridge'
    reg.dependency 'Masonry'
    reg.dependency 'AWMTextField'
    reg.dependency 'AWMTransition'
  end
  
  # 密码 password
  spec.subspec 'Password' do |password|
    
    password.source_files = "Code/AWMContainer/Password/*.{h,m}"
    password.dependency 'AWMConfig'
    password.dependency 'AWMBridge/Password/Bridge'
    password.dependency 'Masonry'
    password.dependency 'AWMTextField'
    password.dependency 'AWMTransition'
  end
  
  # 轮播 carousel
  spec.subspec 'Carousel' do |carousel|
    
    carousel.source_files = "Code/AWMContainer/Carousel/*.{h,m}"
    carousel.dependency 'AWMConfig'
    carousel.dependency 'AWMBridge/Carousel/Bridge'
    carousel.dependency 'Masonry'
    carousel.dependency 'AWMCollection'
  end
  
  # 轮播 banner
  spec.subspec 'Banner' do |banner|
    
    banner.source_files = "Code/AWMContainer/Banner/*.{h,m}"
    banner.dependency 'AWMConfig'
    banner.dependency 'AWMBridge/Carousel/Bridge'
    banner.dependency 'Masonry'
    banner.dependency 'AWMCollection'
    banner.dependency 'SDWebImage'
  end
  
  # 设置 setting
  spec.subspec 'Setting' do |setting|
    
    setting.source_files = "Code/AWMContainer/Setting/*.{h,m}"
    setting.dependency 'AWMConfig'
    setting.dependency 'AWMBridge/Setting/Bridge'
    setting.dependency 'Masonry'
    setting.dependency 'AWMTable'
    setting.dependency 'SDWebImage'
  end
  
  # 关于我们 about
  spec.subspec 'About' do |about|
    
    about.source_files = "Code/AWMContainer/About/*.{h,m}"
    about.dependency 'AWMConfig'
    about.dependency 'AWMBridge/About/Bridge'
    about.dependency 'Masonry'
    about.dependency 'AWMTable'
  end
  
  # 意见建议 feedBack
  spec.subspec 'FeedBack' do |feedBack|
    
    feedBack.source_files = "Code/AWMContainer/FeedBack/*.{h,m}"
    feedBack.dependency 'AWMConfig'
    feedBack.dependency 'AWMBridge/FeedBack/Bridge'
    feedBack.dependency 'Masonry'
    feedBack.dependency 'AWMTransition'
    feedBack.dependency 'JXTAlertManager'
    feedBack.dependency 'AWMTextField'
  end
  
  # 昵称 Name
  spec.subspec 'Name' do |name|
    
    name.source_files = "Code/AWMContainer/Name/*.{h,m}"
    name.dependency 'AWMConfig'
    name.dependency 'AWMBridge/Name/Bridge'
    name.dependency 'Masonry'
    name.dependency 'AWMTextField'
    name.dependency 'AWMTransition'
  end
  
  # 个性签名 signature
  spec.subspec 'Signature' do |signature|
    
    signature.source_files = "Code/AWMContainer/Signature/*.{h,m}"
    signature.dependency 'AWMConfig'
    signature.dependency 'AWMBridge/Signature/Bridge'
    signature.dependency 'Masonry'
    signature.dependency 'AWMTransition'
  end
  
  # 个人中心 userinfo
  spec.subspec 'UserInfo' do |userInfo|
    userInfo.frameworks = 'UIKit', 'Foundation','CoreServices'
    userInfo.source_files = "Code/AWMContainer/UserInfo/*.{h,m}"
    userInfo.dependency 'AWMConfig'
    userInfo.dependency 'AWMBridge/UserInfo/Bridge'
    userInfo.dependency 'Masonry'
    userInfo.dependency 'AWMTable'
    userInfo.dependency 'ZDatePicker'
    userInfo.dependency 'SDWebImage'
    userInfo.dependency 'JXTAlertManager'
    userInfo.dependency 'WLToolsKit/Image'
  end
  
  # 意见建议 feedBack
  spec.subspec 'FeedBack' do |feedBack|
    
    feedBack.source_files = "Code/AWMContainer/FeedBack/*.{h,m}"
    feedBack.dependency 'AWMConfig'
    feedBack.dependency 'AWMBridge/FeedBack/Bridge'
    feedBack.dependency 'Masonry'
    feedBack.dependency 'AWMTransition'
    feedBack.dependency 'JXTAlertManager'
    feedBack.dependency 'AWMTextField'
  end
  
  #  # 黑名单 black
  #  spec.subspec 'Black' do |black|
  #
  #    black.source_files = "Code/AWMContainer/Black/*.{h,m}"
  #    black.dependency 'AWMConfig'
  #    black.dependency 'AWMBridge/Black/Bridge'
  #    black.dependency 'Masonry'
  #    black.dependency 'AWMTable'
  #    black.dependency 'SDWebImage'
  #    black.dependency 'JXTAlertManager'
  #  end
  #  # 关注 focus
  #  spec.subspec 'Focus' do |focus|
  #
  #    focus.source_files = "Code/AWMContainer/Focus/*.{h,m}"
  #    focus.dependency 'AWMConfig'
  #    focus.dependency 'AWMBridge/Focus/Bridge'
  #    focus.dependency 'Masonry'
  #    focus.dependency 'AWMTable'
  #    focus.dependency 'SDWebImage'
  #    focus.dependency 'JXTAlertManager'
  #  end
  
  #  # 举报 举报
  #  spec.subspec 'Report' do |report|
  #
  #    report.source_files = "Code/AWMContainer/Report/*.{h,m}"
  #    report.dependency 'AWMConfig'
  #    report.dependency 'AWMBridge/Report/Bridge'
  #    report.dependency 'Masonry'
  #    report.dependency 'AWMTable'
  #    report.dependency 'JXTAlertManager'
  #  end
  
  
  # 地址 address
  spec.subspec 'Address' do |address|
    
    address.source_files = "Code/AWMContainer/Address/*.{h,m}"
    address.dependency 'AWMConfig'
    address.dependency 'AWMBridge/Address/Bridge'
    address.dependency 'Masonry'
    address.dependency 'AWMTable'
    address.dependency 'JXTAlertManager'
  end
  # 地址 area
  spec.subspec 'Area' do |area|
    
    area.source_files = "Code/AWMContainer/Area/*.{h,m}"
    area.dependency 'AWMConfig'
    area.dependency 'AWMBridge/Area/Bridge'
    area.dependency 'Masonry'
    area.dependency 'AWMTable'
    area.dependency 'AWMCollection'
    area.dependency 'JXTAlertManager'
  end
  
  # 地址 area
  spec.subspec 'AMapViewOntroller' do |amap|
    amap.vendored_frameworks = 'Framework/AWMAMapViewController/AWMAMapViewController.framework'
    amap.dependency 'AWMTransition'
  end
  
end
