require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "rn-sprite-sheet"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  rn-sprite-sheet-1
                   DESC
  s.homepage     = "https://github.com/RedPillGroup/rn-sprite-sheet-1"
  s.license      = "MIT"
  # s.license    = { :type => "MIT", :file => "FILE_LICENSE" }
  s.authors      = { "alexandre" => "alexandre@redpill.paris" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/RedPillGroup/rn-sprite-sheet-1.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,swift}"
  s.requires_arc = true

  s.dependency "React"
  # ...
  # s.dependency "..."
end