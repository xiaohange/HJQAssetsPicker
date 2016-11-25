Pod::Spec.new do |s|
s.name         = 'HJQAssetsPicker'
s.version      = '0.0.3'
s.license      = 'LICENSE'
s.homepage     = 'https://github.com/XiaoHanGe/HJQAssetsPicker'
s.authors        = { '韩俊强' => '532167805@qq.com' }
s.summary      = '仿微信单选复选图片'

s.platform     =  :ios, '7.0'
s.source       =  { git: 'https://github.com/XiaoHanGe/HJQAssetsPicker.git', :tag => s.version.to_s}
s.source_files = 'HJQAssetsPicker/**/*.{h,m}'
s.frameworks   =  'Photos','AddressBook'
s.requires_arc = true
s.resources    = 'HJQAssetsPicker/HJQAssetsPicker.bundle'
end
