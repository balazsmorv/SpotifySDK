Pod::Spec.new do |s|

   s.name         = "SpotifySDK"
   s.version      = "2.0.1"
   s.summary      = "Spotify SDK for iOS"
   s.description  = <<-DESC
   The Spotify iOS SDK allows your iOS application to authenticate users, as well as interact and always stay in sync with the main Spotify application running on the user’s device in the background.
                    DESC

   s.homepage = "https://developer.spotify.com/documentation/ios/"
   s.license  = { :type => "MIT", :file => "Licenses/MPMessagePack-LICENSE.md" }
   s.authors  = { "jackfreeman" => "jackfreeman@google.com", "Arielle Vaniderstine" => "hack@ariari.io", "Konstantinos Karagiannis" => "konstantinosk@spotify.com" }

   s.platform              = :ios
   s.ios.deployment_target = '9.0'

   s.source = { :git => "https://github.com/spotify/ios-sdk.git", :tag => "v#{s.version}" }

   s.user_target_xcconfig = {
		'SWIFT_INCLUDE_PATHS' => '"\$(PODS_ROOT)/SpotifyiOS/SpotifyiOS.framework"'
	}

   s.source_files        = 'SpotifyiOS.framework/Versions/A/Headers/*{.h}'
   s.public_header_files = 'SpotifyiOS.framework/Versions/A/Headers/*{.h}'
   s.vendored_frameworks = 'SpotifyiOS.framework'
   s.exclude_files       = "DemoProjects"

 end