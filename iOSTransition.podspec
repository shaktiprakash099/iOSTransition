

Pod::Spec.new do |s|

  s.name         = "iOSTransition"
  s.version      = "0.0.1"
  s.summary      = "A new way of presenting viewcontroller from all directions "
  s.swift_version = '>= 4.0'
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }


  s.description  = "Normally while presenting a controller in ios there are two traditional ways from right and and from bottom but Now we can present controller from any directions  like top ,bottom ,left and right"

  s.homepage     = "https://github.com/shaktiprakash099/iOSTransition"
   s.screenshots  = "http://g.recordit.co/MRtDtMsJW4.gif"

  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }

  s.author             = "shaktiprakash"


  s.platform     = :ios, "10.0"



  s.source       = { :git => "https://github.com/shaktiprakash099/iOSTransition.git", :tag => "0.0.1" }
  s.source_files  = "iOSTransition", "iOSTransition/**/*.{h,m,swift}"
  s.exclude_files = "Classes/Exclude"


end
