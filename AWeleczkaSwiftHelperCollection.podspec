Pod::Spec.new do |s|
  s.name = 'AWeleczkaSwiftHelperCollection'
  s.version = '0.0.1'
  s.summary = 'My "private" collection of helper-snippets I use way too often in projects'
  s.description = "This is an every growing collection of things I use, lookup or write too often. No guarantee it always works, no guarantee it'll grow in a steady pace"
  s.homepage = 'https://github.com/AWeleczka/AWeleczkaSwiftHelperCollection.git'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.author = { 'AWeleczka' => 'github@accounts.aweleczka.de' }
  s.source = { :git => 'https://github.com/AWeleczka/AWeleczkaSwiftHelperCollection.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/AWeleczka'
  s.ios.deployment_target = '8.0'
  s.source_files = 'AWeleczkaSwiftHelperCollection/**/*'
  s.exclude_files = 'AWeleczkaSwiftHelperCollection/**/*.plist'
end
