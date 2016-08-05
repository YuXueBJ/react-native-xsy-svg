require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name             = 'RNSVG'
  s.version          = package['version']
  s.summary          = package['description']
  s.license          = package['license']
  s.homepage         = 'https://github.com/YuXueBJ/react-native-xsy-svg'
  s.authors          = 'Horcrux Chen'
  s.source           = { :git => 'https://github.com/YuXueBJ/react-native-xsy-svg.git', :tag => "v#{s.version}" }
  s.source_files     = 'ios/**/*.{h,m}'
  s.framework        = 'React'
  s.requires_arc     = true
end
