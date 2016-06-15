Pod::Spec.new do |s|
  s.name     = 'VVGROAuth2SessionManager'
  s.version  = '0.3.1'
  s.license  = 'MIT'
  s.summary  = 'AFNetworking Extension for OAuth 2 Authentication.'
  s.homepage = 'https://github.com/Vivino/GROAuth2SessionManager'
  s.author   = { 'Gabriel Rinaldi' => 'gabriel@gabrielrinaldi.me', 'Mattt Thompson' => 'm@mattt.me' }
  s.source   = { :git => 'https://github.com/Vivino/GROAuth2SessionManager.git', :tag => s.version }
  s.source_files = 'GROAuth2SessionManager'
  s.requires_arc = true
  s.compiler_flags = '-Wnon-modular-include-in-framework-module'

  s.ios.deployment_target = '8.0'

  s.dependency 'AFNetworking', '~> 3.1.0'

  s.ios.frameworks = 'Security'

  s.prefix_header_contents = <<-EOS
#ifdef __OBJC__
  #import <Security/Security.h>
  #if __IPHONE_OS_VERSION_MIN_REQUIRED
    #import <SystemConfiguration/SystemConfiguration.h>
    #import <MobileCoreServices/MobileCoreServices.h>
  #else
    #import <SystemConfiguration/SystemConfiguration.h>
    #import <CoreServices/CoreServices.h>
  #endif
#endif /* __OBJC__*/
EOS
end
