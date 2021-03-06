
Pod::Spec.new do |spec|
  
  spec.name         = "AWMBean"
  spec.version      = "0.0.1"
  spec.summary      = "A Lib For Bean."
  spec.description  = <<-DESC
  AWMBean是所有模型的封装
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
  
  spec.dependency 'ObjectMapper'
  
  spec.subspec 'Gender' do |gender|
    gender.source_files = "Code/AWMBean/Gender/*.{swift}"
  end
  
  spec.subspec 'Account' do |account|
    account.source_files = "Code/AWMBean/Account/*.{swift}"
  end
  
  spec.subspec 'User' do |user|
    user.source_files = "Code/AWMBean/User/*.{swift}"
    user.dependency 'AWMBean/Gender'
  end
  spec.subspec 'Black' do |black|
    black.source_files = "Code/AWMBean/Black/*.{swift}"
    black.dependency 'AWMBean/User'
    black.dependency 'RxDataSources'
  end
  spec.subspec 'Focus' do |focus|
    focus.source_files = "Code/AWMBean/Focus/*.{swift}"
    focus.dependency 'AWMBean/User'
    focus.dependency 'RxDataSources'
  end
  
  spec.subspec 'KeyValue' do |keyValue|
    keyValue.source_files = "Code/AWMBean/KeyValue/*.{swift}"
    keyValue.dependency 'RxDataSources'
  end
  
  spec.subspec 'Circle' do |circle|
    circle.source_files = "Code/AWMBean/Circle/*.{swift}"
    circle.dependency 'AWMBean/KeyValue'
    circle.dependency 'AWMBean/User'
    circle.dependency 'WLToolsKit/JsonCast'
  end
  
  spec.subspec 'Commodity' do |commodity|
    commodity.source_files = "Code/AWMBean/Commodity/*.{swift}"
    commodity.dependency 'AWMBean/KeyValue'
    commodity.dependency 'AWMBean/User'
    commodity.dependency 'WLToolsKit/JsonCast'
  end
  spec.subspec 'Comment' do |comment|
    comment.source_files = "Code/AWMBean/Comment/*.{swift}"
    comment.dependency 'AWMBean/User'
    comment.dependency 'RxDataSources'
  end
  
  spec.subspec 'Area' do |area|
    area.source_files = "Code/AWMBean/Area/*.{swift}"
    area.dependency 'RxDataSources'
  end
  
  spec.subspec 'Address' do |address|
    address.source_files = "Code/AWMBean/Address/*.{swift}"
    address.dependency 'RxDataSources'
  end
  spec.subspec 'Message' do |message|
    message.source_files = "Code/AWMBean/Message/*.{swift}"
    message.dependency 'RxDataSources'
  end
end
