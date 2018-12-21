#
# Be sure to run `pod lib lint VIPhotoBrowser.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ViroyalPhotoBrowser'
  s.version          = '1.0.0'
  s.summary          = 'iOS Photos 框架的简单封装'
  s.module_name      = 'ViroyalPhotoBrowser'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                    一个查询数据的Data source
                    若干相关界面
                       DESC

  s.homepage         = 'https://github.com/NJDevTangQi/ViroyalPhotoBrowser'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'NJDevTangQi' => '824282017@qq.com' }
  s.source           = { :git => 'https://github.com/NJDevTangQi/ViroyalPhotoBrowser.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/guofengjd'

  s.ios.deployment_target = '8.1'
  s.requires_arc = true

  s.source_files = 'ViroyalPhotoBrowser/Classes/GFPhotoBrowser.h'

   s.resource_bundles = {
     'ViroyalPhotoBrowser' => ['ViroyalPhotoBrowser/Assets/*.png', 'ViroyalPhotoBrowser/Assets/*.lproj']
   }

  s.public_header_files = 'ViroyalPhotoBrowser/Classes/GFPhotoBrowser.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'MBProgressHUD'
  s.dependency 'Masonry'

  s.subspec 'Models' do |ss|
    ss.source_files = ['ViroyalPhotoBrowser/Classes/GFPhotosDataSource.{h,m}', 'ViroyalPhotoBrowser/Classes/NSBundle+GFPhotoBrowser.{h,m}']
  end

  s.subspec 'Cells' do |ss|
    ss.dependency 'ViroyalPhotoBrowser/Models'
    ss.source_files = 'ViroyalPhotoBrowser/Classes/GFPhotoCell.{h,m}', 'ViroyalPhotoBrowser/Classes/GFAlbumCell.{h,m}'
  end

  s.subspec 'Controllers' do |ss|
    ss.dependency 'ViroyalPhotoBrowser/Cells'
    ss.source_files = 'ViroyalPhotoBrowser/Classes/GFAlbumViewController.{h,m}', 'ViroyalPhotoBrowser/Classes/GFPhotoBrowserNavigationController.{h,m}', 'ViroyalPhotoBrowser/Classes/GFPhotoBrowserViewController.{h,m}', 'VIPhotoBrowser/Classes/GFPhotoCropViewController.{h,m}'
  end

end
