#
# Be sure to run `pod lib lint E1Framework.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "E1Framework"
  s.version          = "0.0.8"
  s.summary          = "iOS framework for E1."
  s.description      = <<-DESC
                       iOS framework for E1
                       DESC
  s.homepage         = "https://bitbucket.englishtown.cn/projects/ETG/repos/e1-framework-ios/browse"
  s.license          = 'Copyright EF. All rights reserved.'
  s.author           = { "canius.chu" => "canius.chu@ef.com" }
  s.source           = { :git => "ssh://git@bitbucket.englishtown.cn:7999/etg/e1-framework-ios.git", :tag => s.version.to_s }

  s.platform     = :ios, '9.0'
  s.requires_arc = true

  s.source_files = 'Sources/**/*.{h,m}'
  s.resource = 'Sources/Assets/*.*'

  s.dependency 'Bolts/Tasks'
  s.dependency 'SSZipArchive'
  s.dependency 'Realm'
end
