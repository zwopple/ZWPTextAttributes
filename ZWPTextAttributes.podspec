Pod::Spec.new do |s|
  s.name = "ZWPTextAttributes"
  s.summary = "Block based text attributes builder to make attributed strings easy as."
  
  s.version = "1.0.0"
  s.license = { :type => "MIT", :file => "LICENSE" }
  s.homepage = "https://github.com/zwopple/ZWPTextAttributes"
  s.author = { "Zwopple | Creative Software" => "support@zwopple.com" }
  s.ios.deployment_target = "6.0"
  s.source = { :git => "https://github.com/zwopple/ZWPTextAttributes.git", :tag => "1.0.0" }
  s.requires_arc = true
  s.source_files = "ZWPTextAttributes/"
  s.frameworks = "Foundation"
  
end