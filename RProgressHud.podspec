Pod::Spec.new do |spec|
  spec.name         = 'RProgressHud'
  spec.version      = '0.1.0'
  spec.authors      = { 
    'RahulMaithani' => 'r.maithani12@gmail.com'
  }
  spec.license      = { 
    :type => 'MIT',
    :file => 'LICENSE' 
  }
  spec.homepage     = 'https://github.com/RahulMaithani/RProgressHud'
  spec.source       = { 
    :git => 'https://github.com/RahulMaithani/RProgressHud.git', 
    :branch => 'master',
    :tag => spec.version.to_s 
  }
  spec.summary      = 'RProgressHud is flexible and lightweight progress indicator for Swift 4 & Swift 5.'
  spec.source_files = '**/*.swift', '*.swift'
  spec.swift_versions = '5.0'
  spec.ios.deployment_target = '13.0'
end