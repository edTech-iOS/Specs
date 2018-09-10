Pod::Spec.new do |s|
  s.name         = "SwiftWebViewBridge"
  s.summary      = "A bridge to send messages between Swift and JS in UIWebViews"
  s.description  = <<-DESC
            Swift version of WebViewJavascriptBridge with more simplified, friendly methods to send messages between Swift and JS in UIWebViews
                   DESC
  s.version      = "0.3.2"
  s.license      = "MIT"
  s.author       = { "canius.chu" => "canius.chu@ef.com" }
  s.homepage     = "https://github.com/edTech-iOS/SwiftWebViewBridge"
  s.source       = { :git => "git@github.com:edTech-iOS/SwiftWebViewBridge.git", :tag => s.version }
  s.frameworks   = "UIKit"
  s.source_files = "SwiftWebViewBridge/*.{swift}"
  s.requires_arc = true
  s.platform     = :ios
  s.ios.deployment_target = '9.0'
end
