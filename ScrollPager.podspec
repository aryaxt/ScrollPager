Pod::Spec.new do |s|
    s.name = 'ScrollPager'
    s.version = '1.0.0'
    s.summary = 'A fully featured scroll pager similar to the one in flipboard, fully configurable through storyboard'
    s.homepage = 'https://github.com/aryaxt/ScrollPager'
    s.license = {
      :type => 'MIT',
      :file => 'License.txt'
    }
    s.author = {'Aryan Ghassemi' => 'https://github.com/aryaxt/ScrollPager'}
    s.source = {:git => 'https://github.com/eddy-lau/ScrollPager.git', :tag => '1.0.0'}
    s.swift_version = '5.0'
    s.platform = :ios, '8.0'
    s.source_files = 'ScrollPager/Source/*.{swift}'
    s.framework = 'Foundation', 'UIKit'
    s.requires_arc = true
end
