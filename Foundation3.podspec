Pod::Spec.new do |s|
  s.name = 'Foundation3'
  s.version = '0.1.1'
  s.license = { :type => 'Apache 2.0', :file => 'LICENSE' }
  s.summary = 'Swift Foundation Shims that mimic Swift 3.0 API. For thous who wants to maintain Swift multiple versions compatibility'
  s.homepage = 'https://github.com/crossroadlabs/Foundation3'
  s.social_media_url = 'https://github.com/crossroadlabs/Foundation3'
  s.authors = { 'Daniel Leping' => 'daniel@crossroadlabs.xyz' }
  s.source = { :git => 'https://github.com/crossroadlabs/Foundation3.git', :tag => "#{s.version}" }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'

  s.source_files = 'Foundation3/*.swift'
  
  s.dependency 'Boilerplate', '~> 0.1'

  s.requires_arc = true
end
