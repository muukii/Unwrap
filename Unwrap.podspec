Pod::Spec.new do |s|
  s.name             = "Unwrap"
  s.version          = "1.0.0"
  s.summary          = "Syntax sugar for unwrapping while throwing error for nil"
  s.description      = <<-DESC
Syntax sugar for unwrapping while throwing error for nil

With this syntax sugar you can unwrap variables while throwing error for nil.
It's useful in closures/functions with throw.
                       DESC

  s.homepage         = "https://github.com/muukii/Unwrap"
  s.license          = 'MIT'
  s.author           = { "muukii" => "m@muukii.me" }
  s.source           = { :git => "https://github.com/muukii/Unwrap.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/muukii0803'

  s.ios.deployment_target = '8.0'
  s.tvos.deployment_target = '9.2'
  s.watchos.deployment_target = '2.0'

  s.source_files = 'Unwrap/Classes/**/*'
end
