#
# Be sure to run `pod lib lint BinderSQL.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BinderSQL'
  s.version          = '0.1.0'
  s.summary          = 'A short description of BinderSQL.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  This is a dynamic binding framework with the Swift version of the sqlite database. Through subscription binding, it can help us bind changing data in real time.
                       DESC

  s.homepage         = 'https://github.com/VientianeArtery/BinderSQL'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'artery' => 'vientiane.artery@outlook.com' }
  s.source           = { :git => 'https://github.com/VientianeArtery/BinderSQL.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '13.0'

  s.source_files = 'BinderSQL/Classes/**/*'
  
#   s.resource_bundles = {
#     'BinderSQL' => ['BinderSQL/Assets/*']
#   }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
#   s.dependency 'AFNetworking', '~> 2.3'
    s.dependency 'SQLite.swift', '~> 0.14.0'
end
