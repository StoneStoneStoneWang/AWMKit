Pod::Spec.new do |spec|
  
  spec.name         = "AWMTextField"
  spec.version      = "0.0.1"
  spec.summary      = "A Lib For textfield."
  spec.description  = <<-DESC
  AWMTextField是地图
  DESC
  
  spec.homepage     = "https://github.com/StoneStoneStoneWang/ZStoreKit.git"
  spec.license      = { :type => "MIT", :file => "LICENSE.md" }
  spec.author             = { "StoneStoneStoneWang" => "yuanxingfu1314@163.com" }
  spec.platform     = :ios, "10.0"
  spec.ios.deployment_target = "10.0"
  
  spec.swift_version = '5.0'
  
  spec.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  
  spec.static_framework = true
  
  spec.frameworks = 'UIKit', 'Foundation'
  
  spec.source = { :git => "https://github.com/StoneStoneStoneWang/ZStoreKit.git", :tag => "#{spec.version}" }
  
  spec.subspec 'Setting' do |setting|
    setting.source_files = "Code/AWMTextField/Setting/*.{swift}"
  end
  spec.subspec 'Base' do |base|
    base.source_files = "Code/AWMTextField/Base/*.{swift}"
    base.dependency 'WLToolsKit/Then'
    base.dependency 'AWMTextField/Setting'
  end
  
  spec.subspec 'LeftTitle' do |leftTitle|
    leftTitle.source_files = "Code/AWMTextField/LeftTitle/*.{swift}"
    leftTitle.dependency 'AWMTextField/Base'
    leftTitle.dependency 'WLToolsKit/Color'
  end
  spec.subspec 'LeftImage' do |leftImage|
    leftImage.source_files = "Code/AWMTextField/LeftImg/*.{swift}"
    leftImage.dependency 'AWMTextField/Base'
  end
  spec.subspec 'NickName' do |nickName|
    nickName.source_files = "Code/AWMTextField/NickName/*.{swift}"
    nickName.dependency 'AWMTextField/Base'
  end
  
  spec.subspec 'Password' do |password|
    password.source_files = "Code/AWMTextField/Password/*.{swift}"
    password.dependency 'AWMTextField/LeftImage'
    password.dependency 'AWMTextField/LeftTitle'
  end
  
  spec.subspec 'Vcode' do |vcode|
    vcode.source_files = "Code/AWMTextField/Vcode/*.{swift}"
    vcode.dependency 'AWMTextField/LeftImage'
    vcode.dependency 'AWMTextField/LeftTitle'
  end
  
end
