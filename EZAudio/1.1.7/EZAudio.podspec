Pod::Spec.new do |s|
    s.name         = "EZAudio"
    s.version      = "1.1.7"
    s.summary      = "A simple, intuitive audio framework for iOS and OSX useful for anyone doing audio processing and/or audio-based visualizations."
    s.homepage     = "https://github.com/edTech-iOS/EZAudio"
    s.screenshots  = "https://camo.githubusercontent.com/f0f5de319083692669f5de4dc443c33e577b76ea/687474703a2f2f692e696d6775722e636f6d2f6c6c35713638722e706e67"
    s.license      = { :type => 'MIT', :file => 'LICENSE' }
    s.author       = { "Syed Haris Ali" => "syedhali07@gmail.com" }
    s.ios.deployment_target = '8.0'
    s.osx.deployment_target = '10.8'
    s.source       = { :git => "git@github.com:edTech-iOS/EZAudio.git", :tag => s.version }
    s.exclude_files = [ 'EZAudio/TPCircularBuffer.{h,c}', 'EZAudio/EZAudioiOS.h', 'EZAudio/EZAudioOSX.h' ]
    s.ios.frameworks = 'AudioToolbox','AVFoundation','GLKit', 'Accelerate'
    s.osx.frameworks = 'AudioToolbox','AudioUnit','CoreAudio','QuartzCore','OpenGL','GLKit', 'Accelerate'
    s.requires_arc = true;
    s.default_subspec = 'Full'
    s.subspec 'Core' do |core|
        core.source_files  = 'EZAudio/*.{h,m,c}'
    end

    s.subspec 'Full' do |full|
        full.dependency 'TPCircularBuffer', '1.1'
        full.dependency 'EZAudio/Core'
    end
end
