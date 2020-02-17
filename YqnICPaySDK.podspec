
Pod::Spec.new do |s|
  s.name             = 'YqnICPaySDK'
  s.version          = '1.5.2'
  s.summary          = 'YqnICPaySDK is an unique sdk to pay'
  s.description  = "ICPaySDK = wxpay + alipay. the api is unique"
  s.homepage         = 'https://github.com/yqnjsb/ICPaySDK'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'corkiios' => 'gjianbo@qq.com' }
  s.source           = { :git => 'https://github.com/yqnjsb/ICPaySDK.git', :tag => s.version.to_s }
  s.requires_arc = true
  s.ios.deployment_target = '8.0'


    s.subspec 'ICPayManager' do |mgr|


   mgr.source_files = 'ICPaySDK/ICManager/*.{h,m}'

    end

   s.subspec 'ICAliPay' do |ali|

    ali.dependency 'ICPaySDK/ICPayManager'
    ali.dependency 'AliPay_SDK'
    ali.source_files = 'ICPaySDK/ICAliPay/*.{h,m}'

   end

    s.subspec 'ICWxPay' do |wx|

    wx.dependency 'ICPaySDK/ICPayManager'
    wx.dependency 'mob_sharesdk/ShareSDKPlatforms/WeChatFull'
    wx.source_files = 'ICPaySDK/ICWxPay/*.{h,m}'

    end

    s.subspec 'UnionPay' do |un|

    un.dependency 'ICPaySDK/ICPayManager'
    un.dependency 'UnionPay'
    un.source_files = 'ICPaySDK/ICUnionpay/*.{h,m}'

    end

end