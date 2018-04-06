Pod::Spec.new do |s|

  s.name         = "PTPPlaceholderTextView"
  s.version      = "0.7.1"
  s.summary      = "A simple naive implementation of UITextView subclass to support placeholder text rendering in UITextView."
  s.description  = <<-DESC 
                   A simple naive implementation of UITextView subclass to support placeholder text rendering in UITextView.
                   This PTPPlaceholderTextView comes with IBDesignable, IBInspectable and also UIAppearance support.
                   DESC

  s.homepage     = "https://github.com/pitiphong-p/PTPPlaceholderTextView"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Pitiphong Phongpattranont" => "pitiphong.p@me.com" }
  s.social_media_url   = "http://twitter.com/pitiphong_p"
  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/pitiphong-p/PTPPlaceholderTextView.git", :tag => s.version }
  s.source_files  = "PTPPlaceholderTextView.swift"

end
