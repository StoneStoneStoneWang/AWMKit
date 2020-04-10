Pod::Spec.new do |spec|
  
  spec.name         = "AWMBridge"
  spec.version      = "0.0.1"
  spec.summary      = "A Lib For bridge."
  spec.description  = <<-DESC
  AWMBridge是oc swift 转换的封装呢
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
  
  spec.subspec 'Base' do |base|
    base.source_files = "Code/AWMBridge/Base/*.{swift}"
    base.dependency 'RxSwift'
  end
  
  #欢迎界面
  spec.subspec 'Welcome' do |welcome|
    
    welcome.subspec 'VM' do |vm|
      vm.source_files = "Code/AWMBridge/Welcome/VM/*.{swift}"
      vm.dependency 'WLToolsKit/Common'
      vm.dependency 'WLBaseViewModel'
      vm.dependency 'RxCocoa'
      vm.dependency 'RxSwift'
    end
    
    welcome.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/AWMBridge/Welcome/Bridge/*.{swift}"
      bridge.dependency 'AWMBridge/Welcome/VM'
      bridge.dependency 'AWMCollection'
      bridge.dependency 'AWMCocoa/SM'
      bridge.dependency 'AWMCocoa/Button'
      bridge.dependency 'AWMBridge/Base'
    end
  end
  
  # 协议
  spec.subspec 'Protocol' do |protocol|
    
    protocol.subspec 'VM' do |vm|
      vm.source_files = "Code/AWMBridge/Protocol/VM/*.{swift}"
      vm.dependency 'RxCocoa'
      vm.dependency 'RxSwift'
      vm.dependency 'WLBaseViewModel'
      vm.dependency 'AWMSign'
    end
    
    protocol.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/AWMBridge/Protocol/Bridge/*.{swift}"
      bridge.dependency 'AWMBridge/Protocol/VM'
      bridge.dependency 'AWMTextInner'
      bridge.dependency 'AWMBridge/Base'
    end
  end
  # 协议
  spec.subspec 'Privacy' do |privacy|
    
    privacy.subspec 'VM' do |vm|
      vm.source_files = "Code/AWMBridge/Privacy/VM/*.{swift}"
      vm.dependency 'RxCocoa'
      vm.dependency 'RxSwift'
      vm.dependency 'WLBaseViewModel'
      vm.dependency 'AWMSign'
    end
    
    privacy.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/AWMBridge/Privacy/Bridge/*.{swift}"
      bridge.dependency 'AWMBridge/Privacy/VM'
      bridge.dependency 'AWMInner'
      bridge.dependency 'AWMBridge/Base'
      
    end
  end
  
  # 登陆
  spec.subspec 'Login' do |login|
    
    login.subspec 'VM' do |vm|
      vm.source_files = "Code/AWMBridge/Login/VM/*.{swift}"
      vm.dependency 'RxCocoa'
      vm.dependency 'WLBaseViewModel'
      vm.dependency 'AWMCheck'
      vm.dependency 'AWMRReq'
      vm.dependency 'AWMApi'
    end
    
    login.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/AWMBridge/Login/Bridge/*.{swift}"
      bridge.dependency 'AWMBridge/Login/VM'
      bridge.dependency 'AWMHud'
      bridge.dependency 'AWMBase'
      bridge.dependency 'AWMBridge/Base'
    end
  end
  
  # 注册/登陆
  spec.subspec 'Reg' do |reg|
    
    reg.subspec 'VM' do |vm|
      vm.source_files = "Code/AWMBridge/Reg/VM/*.{swift}"
      vm.dependency 'RxCocoa'
      vm.dependency 'WLBaseViewModel'
      vm.dependency 'AWMCheck'
      vm.dependency 'AWMRReq'
      vm.dependency 'AWMApi'
    end
    
    reg.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/AWMBridge/Reg/Bridge/*.{swift}"
      bridge.dependency 'AWMBridge/Reg/VM'
      bridge.dependency 'AWMCocoa/Button'
      bridge.dependency 'AWMHud'
      bridge.dependency 'AWMBase'
      bridge.dependency 'AWMBridge/Base'
    end
  end
  
  # 密码
  spec.subspec 'Password' do |password|
    
    password.subspec 'VM' do |vm|
      vm.source_files = "Code/AWMBridge/Password/VM/*.{swift}"
      vm.dependency 'RxCocoa'
      vm.dependency 'WLBaseViewModel'
      vm.dependency 'AWMCheck'
      vm.dependency 'AWMRReq'
      vm.dependency 'AWMApi'
    end
    
    password.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/AWMBridge/Password/Bridge/*.{swift}"
      bridge.dependency 'AWMBridge/Password/VM'
      bridge.dependency 'AWMCocoa/Button'
      bridge.dependency 'AWMHud'
      bridge.dependency 'AWMBase'
      bridge.dependency 'AWMBridge/Base'
    end
  end
  
  # 设置
  spec.subspec 'Setting' do |setting|
    
    setting.subspec 'VM' do |vm|
      vm.source_files = "Code/AWMBridge/Setting/VM/*.{swift}"
      vm.dependency 'RxCocoa'
      vm.dependency 'WLBaseViewModel'
      vm.dependency 'AWMCache/Account'
      vm.dependency 'AWMSign'
    end
    
    setting.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/AWMBridge/Setting/Bridge/*.{swift}"
      bridge.dependency 'AWMBridge/Setting/VM'
      bridge.dependency 'AWMTable'
      bridge.dependency 'AWMCocoa/SM'
      bridge.dependency 'RxDataSources'
      bridge.dependency 'AWMBridge/Base'
    end
  end
  
  # 关于我们
  spec.subspec 'About' do |about|
    
    about.subspec 'VM' do |vm|
      vm.source_files = "Code/AWMBridge/About/VM/*.{swift}"
      vm.dependency 'RxCocoa'
      vm.dependency 'WLBaseViewModel'
      vm.dependency 'WLToolsKit/String'
    end
    
    about.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/AWMBridge/About/Bridge/*.{swift}"
      bridge.dependency 'AWMBridge/About/VM'
      bridge.dependency 'AWMTable'
      bridge.dependency 'AWMCocoa/SM'
      bridge.dependency 'RxDataSources'
      bridge.dependency 'AWMBridge/Base'
    end
  end
  # 昵称
  spec.subspec 'Name' do |name|
    
    name.subspec 'VM' do |vm|
      
      vm.source_files = "Code/AWMBridge/Name/VM/*.{swift}"
      vm.dependency 'RxCocoa'
      vm.dependency 'AWMCache/User'
      vm.dependency 'AWMRReq'
      vm.dependency 'AWMApi'
      vm.dependency 'WLBaseViewModel'
      vm.dependency 'WLBaseResult'
    end
    
    name.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/AWMBridge/Name/Bridge/*.{swift}"
      bridge.dependency 'AWMBridge/Name/VM'
      bridge.dependency 'AWMHud'
      bridge.dependency 'AWMBase'
      bridge.dependency 'AWMBridge/Base'
    end
  end
  # 个性签名
  spec.subspec 'Signature' do |signature|
    
    signature.subspec 'VM' do |vm|
      vm.source_files = "Code/AWMBridge/Signature/VM/*.{swift}"
      vm.dependency 'RxCocoa'
      vm.dependency 'AWMCache/User'
      vm.dependency 'AWMRReq'
      vm.dependency 'AWMApi'
      vm.dependency 'WLBaseViewModel'
      vm.dependency 'WLBaseResult'
    end
    
    signature.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/AWMBridge/Signature/Bridge/*.{swift}"
      bridge.dependency 'AWMBridge/Signature/VM'
      bridge.dependency 'AWMHud'
      bridge.dependency 'AWMBase'
      bridge.dependency 'AWMBridge/Base'
    end
  end
  
  # 我的资料
  spec.subspec 'UserInfo' do |userinfo|
    
    userinfo.subspec 'VM' do |vm|
      vm.source_files = "Code/AWMBridge/UserInfo/VM/*.{swift}"
      vm.dependency 'RxCocoa'
      vm.dependency 'WLBaseViewModel'
      vm.dependency 'WLBaseResult'
      vm.dependency 'AWMCache/User'
      vm.dependency 'AWMApi'
      vm.dependency 'AWMRReq'
    end
    
    userinfo.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/AWMBridge/UserInfo/Bridge/*.{swift}"
      bridge.dependency 'AWMBridge/UserInfo/VM'
      bridge.dependency 'AWMTable'
      bridge.dependency 'AWMCocoa/SM'
      bridge.dependency 'RxDataSources'
      bridge.dependency 'AWMHud'
      bridge.dependency 'AWMBridge/Base'
    end
  end
  
  # 评论
  spec.subspec 'Comment' do |comment|
    
    comment.subspec 'VM' do |vm|
      
      vm.source_files = "Code/AWMBridge/Comment/VM/*.{swift}"
      vm.dependency 'RxCocoa'
      vm.dependency 'AWMRReq'
      vm.dependency 'AWMApi'
      vm.dependency 'AWMBean/Comment'
      vm.dependency 'WLBaseResult'
      vm.dependency 'WLBaseViewModel'
    end
    
    comment.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/AWMBridge/Comment/Bridge/*.{swift}"
      bridge.dependency 'AWMBridge/Comment/VM'
      bridge.dependency 'AWMHud'
      bridge.dependency 'AWMTable'
      bridge.dependency 'AWMCocoa/ASM'
      bridge.dependency 'AWMCocoa/Refresh'
      bridge.dependency 'AWMBridge/Base'
    end
  end
  # 举报
  spec.subspec 'Report' do |report|
    
    report.subspec 'VM' do |vm|
      
      vm.source_files = "Code/AWMBridge/Report/VM/*.{swift}"
      vm.dependency 'RxCocoa'
      vm.dependency 'ObjectMapper'
      vm.dependency 'RxDataSources'
      vm.dependency 'AWMApi'
      vm.dependency 'AWMRReq'
      vm.dependency 'WLBaseResult'
      vm.dependency 'WLBaseViewModel'
    end
    
    report.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/AWMBridge/Report/Bridge/*.{swift}"
      bridge.dependency 'AWMBridge/Report/VM'
      bridge.dependency 'AWMTable'
      bridge.dependency 'AWMCocoa/SM'
      bridge.dependency 'RxDataSources'
      bridge.dependency 'AWMBridge/Base'
      bridge.dependency 'AWMHud'
    end
  end
  
  # 黑名单
  spec.subspec 'Black' do |black|
    
    black.subspec 'VM' do |vm|
      vm.source_files = "Code/AWMBridge/Black/VM/*.{swift}"
      vm.dependency 'RxCocoa'
      vm.dependency 'WLBaseViewModel'
      vm.dependency 'AWMBean/Black'
      vm.dependency 'AWMRReq'
      vm.dependency 'AWMApi'
      vm.dependency 'WLBaseResult'
    end
    
    black.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/AWMBridge/Black/Bridge/*.{swift}"
      bridge.dependency 'AWMBridge/Black/VM'
      bridge.dependency 'AWMHud'
      bridge.dependency 'AWMTable'
      bridge.dependency 'AWMCocoa/ASM'
      bridge.dependency 'AWMCocoa/Refresh'
      bridge.dependency 'AWMBridge/Base'
    end
  end
  # 我的关注
  spec.subspec 'Focus' do |focus|
    
    focus.subspec 'VM' do |vm|
      
      vm.source_files = "Code/AWMBridge/Focus/VM/*.{swift}"
      vm.dependency 'RxCocoa'
      vm.dependency 'WLBaseViewModel'
      vm.dependency 'AWMBean/Focus'
      vm.dependency 'AWMRReq'
      vm.dependency 'AWMApi'
      vm.dependency 'WLBaseResult'
    end
    
    focus.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/AWMBridge/Focus/Bridge/*.{swift}"
      bridge.dependency 'AWMBridge/Focus/VM'
      bridge.dependency 'AWMHud'
      bridge.dependency 'AWMTable'
      bridge.dependency 'AWMCocoa/ASM'
      bridge.dependency 'AWMCocoa/Refresh'
      bridge.dependency 'AWMBridge/Base'
    end
  end
  
  # 翻译
  spec.subspec 'Translate' do |translate|
    
    translate.subspec 'VM' do |vm|
      
      vm.source_files = "Code/AWMBridge/Translate/VM/*.{swift}"
      vm.dependency 'RxCocoa'
      vm.dependency 'WLBaseViewModel'
      vm.dependency 'ObjectMapper'
      vm.dependency 'AWMApi'
      vm.dependency 'AWMRReq'
      vm.dependency 'WLBaseResult'
    end
    
    translate.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/AWMBridge/Translate/Bridge/*.{swift}"
      bridge.dependency 'AWMBridge/Translate/VM'
      bridge.dependency 'AWMTransition'
      bridge.dependency 'AWMBridge/Base'
      bridge.dependency 'AWMHud'
    end
  end
  
  spec.subspec 'Video' do |video|
    
    video.subspec 'VM' do |vm|
      
      vm.source_files = "Code/AWMBridge/Video/VM/*.{swift}"
      vm.dependency 'RxCocoa'
      vm.dependency 'AWMApi'
      vm.dependency 'AWMRReq'
      vm.dependency 'WLBaseResult'
      vm.dependency 'WLBaseViewModel'
    end
    
    video.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/AWMBridge/Video/Bridge/*.{swift}"
      bridge.dependency 'AWMBridge/Video/VM'
      bridge.dependency 'AWMTransition'
      bridge.dependency 'AWMCache/Account'
      bridge.dependency 'AWMBridge/Base'
      bridge.dependency 'AWMHud'
    end
  end
  
  spec.subspec 'Profile' do |profile|
    
    profile.subspec 'VM' do |vm|
      
      vm.source_files = "Code/AWMBridge/Profile/VM/*.{swift}"
      vm.dependency 'RxCocoa'
      vm.dependency 'AWMApi'
      vm.dependency 'AWMRReq'
      vm.dependency 'AWMCache/User'
      vm.dependency 'WLBaseResult'
      vm.dependency 'WLBaseViewModel'
    end
    
    profile.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/AWMBridge/Profile/Bridge/*.{swift}"
      bridge.dependency 'AWMBridge/Profile/VM'
      bridge.dependency 'AWMTable'
      bridge.dependency 'AWMCache/Account'
      bridge.dependency 'AWMBridge/Base'
      bridge.dependency 'RxGesture'
      bridge.dependency 'AWMCocoa/SM'
    end
  end
  spec.subspec 'UserCenter' do |userCenter|
    
    userCenter.subspec 'VM' do |vm|
      
      vm.source_files = "Code/AWMBridge/UserCenter/VM/*.{swift}"
      vm.dependency 'RxCocoa'
      vm.dependency 'AWMApi'
      vm.dependency 'AWMRReq'
      vm.dependency 'AWMCache/User'
      vm.dependency 'WLBaseResult'
      vm.dependency 'WLBaseViewModel'
    end
    
    userCenter.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/AWMBridge/UserCenter/Bridge/*.{swift}"
      bridge.dependency 'AWMBridge/UserCenter/VM'
      bridge.dependency 'AWMCollection'
      bridge.dependency 'AWMCache/Account'
      bridge.dependency 'AWMBridge/Base'
      bridge.dependency 'RxGesture'
      bridge.dependency 'AWMCocoa/SM'
    end
  end
  # 个性签名
  spec.subspec 'FeedBack' do |feedBack|
    
    feedBack.subspec 'VM' do |vm|
      vm.source_files = "Code/AWMBridge/FeedBack/VM/*.{swift}"
      vm.dependency 'RxCocoa'
      vm.dependency 'AWMRReq'
      vm.dependency 'AWMApi'
      vm.dependency 'WLBaseViewModel'
      vm.dependency 'WLBaseResult'
    end
    
    feedBack.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/AWMBridge/FeedBack/Bridge/*.{swift}"
      bridge.dependency 'AWMBridge/FeedBack/VM'
      bridge.dependency 'AWMHud'
      bridge.dependency 'AWMBase'
      bridge.dependency 'AWMBridge/Base'
    end
  end
  
  # 评论 comment
  spec.subspec 'Comment' do |comment|
    
    comment.subspec 'VM' do |vm|
      vm.source_files = "Code/AWMBridge/Comment/VM/*.{swift}"
      vm.dependency 'RxCocoa'
      vm.dependency 'WLBaseViewModel'
      vm.dependency 'AWMBean/Comment'
      vm.dependency 'AWMRReq'
      vm.dependency 'AWMApi'
      vm.dependency 'WLBaseResult'
    end
    
    comment.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/AWMBridge/Comment/Bridge/*.{swift}"
      bridge.dependency 'AWMBridge/Comment/VM'
      bridge.dependency 'AWMHud'
      bridge.dependency 'AWMTable'
      bridge.dependency 'AWMBean/Circle'
      bridge.dependency 'AWMCocoa/ASM'
      bridge.dependency 'AWMCocoa/Refresh'
      bridge.dependency 'AWMBridge/Base'
    end
  end
  
  # Collections 列表
  spec.subspec 'Collections' do |collections|
    
    collections.subspec 'VM' do |vm|
      vm.source_files = "Code/AWMBridge/Collections/VM/*.{swift}"
      vm.dependency 'RxCocoa'
      vm.dependency 'WLBaseViewModel'
      vm.dependency 'AWMBean/Circle'
      vm.dependency 'AWMRReq'
      vm.dependency 'AWMApi'
      vm.dependency 'WLBaseResult'
    end
    
    collections.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/AWMBridge/Collections/Bridge/*.{swift}"
      bridge.dependency 'AWMBridge/Collections/VM'
      bridge.dependency 'AWMHud'
      bridge.dependency 'AWMCollection'
      bridge.dependency 'AWMCocoa/ASM'
      bridge.dependency 'AWMCocoa/Refresh'
      bridge.dependency 'AWMBridge/Base'
      bridge.dependency 'AWMCache/Account'
    end
  end
  
  # 黑名单
  spec.subspec 'Tables' do |tables|
    
    tables.subspec 'VM' do |vm|
      vm.source_files = "Code/AWMBridge/Tables/VM/*.{swift}"
      vm.dependency 'RxCocoa'
      vm.dependency 'WLBaseViewModel'
      vm.dependency 'AWMBean/Circle'
      vm.dependency 'AWMRReq'
      vm.dependency 'AWMApi'
      vm.dependency 'WLBaseResult'
    end
    
    tables.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/AWMBridge/Tables/Bridge/*.{swift}"
      bridge.dependency 'AWMBridge/Tables/VM'
      bridge.dependency 'AWMHud'
      bridge.dependency 'AWMTable'
      bridge.dependency 'AWMCocoa/ASM'
      bridge.dependency 'AWMCocoa/Refresh'
      bridge.dependency 'AWMBridge/Base'
      bridge.dependency 'AWMCache/Account'
    end
  end
  
  # 轮播
  spec.subspec 'Carousel' do |welcome|
    
    welcome.subspec 'VM' do |vm|
      vm.source_files = "Code/AWMBridge/Carousel/VM/*.{swift}"
      vm.dependency 'WLToolsKit/Common'
      vm.dependency 'WLBaseViewModel'
      vm.dependency 'RxCocoa'
      vm.dependency 'RxSwift'
      vm.dependency 'ObjectMapper'
    end
    
    welcome.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/AWMBridge/Carousel/Bridge/*.{swift}"
      bridge.dependency 'AWMBridge/Carousel/VM'
      bridge.dependency 'AWMCollection'
      bridge.dependency 'AWMCocoa/SM'
      bridge.dependency 'AWMBridge/Base'
      bridge.dependency 'RxDataSources'
    end
  end
  
  # 1
  spec.subspec 'CollectionSection' do |cs|
    
    cs.subspec 'VM' do |vm|
      vm.source_files = "Code/AWMBridge/CollectionSection/VM/*.{swift}"
      vm.dependency 'WLBaseViewModel'
      vm.dependency 'RxCocoa'
      vm.dependency 'RxSwift'
    end
    
    cs.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/AWMBridge/CollectionSection/Bridge/*.{swift}"
      bridge.dependency 'AWMBridge/CollectionSection/VM'
      bridge.dependency 'AWMCollection'
      bridge.dependency 'AWMCocoa/SM'
      bridge.dependency 'AWMBridge/Base'
      bridge.dependency 'RxDataSources'
    end
  end
  
  # 2
  spec.subspec 'TableSection' do |cs|
    
    cs.subspec 'VM' do |vm|
      vm.source_files = "Code/AWMBridge/TableSection/VM/*.{swift}"
      vm.dependency 'WLBaseViewModel'
      vm.dependency 'RxCocoa'
      vm.dependency 'RxSwift'
    end
    
    cs.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/AWMBridge/TableSection/Bridge/*.{swift}"
      bridge.dependency 'AWMBridge/TableSection/VM'
      bridge.dependency 'AWMTable'
      bridge.dependency 'AWMCocoa/SM'
      bridge.dependency 'AWMBridge/Base'
      bridge.dependency 'RxDataSources'
    end
  end
  
  spec.subspec 'Area' do |area|
    
    area.subspec 'Manager' do |manager|
      
      manager.source_files = "Code/AWMBridge/Area/Manager/*.{swift}"
      manager.dependency 'RxCocoa'
      manager.dependency 'WLBaseViewModel'
      manager.dependency 'AWMApi'
      manager.dependency 'AWMRReq'
      manager.dependency 'WLBaseResult'
      manager.dependency 'AWMYY'
      manager.dependency 'AWMBean/Area'
      manager.dependency 'AWMRReq'
    end
    area.subspec 'VM' do |vm|
      
      vm.source_files = "Code/AWMBridge/Area/VM/*.{swift}"
      vm.dependency 'RxCocoa'
      vm.dependency 'WLBaseViewModel'
      vm.dependency 'WLBaseResult'
      vm.dependency 'AWMBean/Area'
    end
    
    area.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/AWMBridge/Area/Bridge/*.{swift}"
      bridge.dependency 'AWMBridge/Area/VM'
      bridge.dependency 'AWMBridge/Area/Manager'
      bridge.dependency 'AWMTable'
      bridge.dependency 'AWMCollection'
      bridge.dependency 'AWMBridge/Base'
      bridge.dependency 'AWMCocoa/SM'
    end
  end
  
  spec.subspec 'AreaJson' do |areaJson|
    
    areaJson.source_files = "Code/AWMBridge/AreaJson/*.{swift}"
  end
  
  spec.subspec 'Address' do |address|
    
    address.subspec 'VM' do |vm|
      
      vm.source_files = "Code/AWMBridge/Address/VM/*.{swift}"
      vm.dependency 'RxCocoa'
      vm.dependency 'WLBaseViewModel'
      vm.dependency 'ObjectMapper'
      vm.dependency 'AWMApi'
      vm.dependency 'AWMRReq'
      vm.dependency 'WLBaseResult'
      vm.dependency 'AWMBean/Area'
      vm.dependency 'AWMBean/Address'
      vm.dependency 'WLToolsKit/String'
      
    end
    
    address.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/AWMBridge/Address/Bridge/*.{swift}"
      bridge.dependency 'AWMBridge/Address/VM'
      bridge.dependency 'BBQTable'
      bridge.dependency 'AWMBridge/Base'
      bridge.dependency 'AWMHud'
      bridge.dependency 'AWMCocoa/ASM'
      bridge.dependency 'AWMCocoa/SM'
      bridge.dependency 'AWMCocoa/Refresh'
    end
  end
end
