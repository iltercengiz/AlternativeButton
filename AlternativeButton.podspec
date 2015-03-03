Pod::Spec.new do |s|
  s.name             = "AlternativeButton"
  s.version          = "0.1.0"
  s.summary          = "An image above the title button for iOS."
  s.description      = <<-DESC
                       A UIButton subclass that places the image view of the button above the title.
                       DESC
  s.homepage         = "https://github.com/iltercengiz/AlternativeButton"
  s.license          = 'MIT'
  s.author           = { "Ilter Cengiz" => "iltercengiz@yahoo.com" }
  s.source           = { :git => "https://github.com/iltercengiz/AlternativeButton.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/iltercengiz'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  
  s.public_header_files = 'Pod/Classes/**/*.h'
end
