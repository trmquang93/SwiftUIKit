#
# Be sure to run `pod lib lint SwiftUIKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DeclarativeUI'
  s.version          = '0.1.0'
  s.summary          = 'Build awesome responsive UIs even simpler than with SwiftUI cause you already know everything.'
  s.description      = <<-DESC
  🚀❤️ YOU WILL LOVE UIKIT MORE THAN EVER ❤️🚀


  Nothing is impossible!
  
  Build awesome responsive UIs even simpler than with SwiftUI cause you already know everything.
                       DESC

  s.homepage         = 'https://github.com/trmquang93/SwiftUIKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'QuangTran' => 'quangtm@unitvn.com' }
  s.source           = { :git => 'https://github.com/trmquang93/SwiftUIKit.git', :tag => s.version.to_s }
  s.swift_version = '5'
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'SwiftUIKit/**/*.{swift}'
  
  # s.resource_bundles = {
  #   'SwiftUIKit' => ['SwiftUIKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
