#
#  Be sure to run `pod spec lint TXCategoryKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name         = "TXCategoryKit"
  spec.version      = "0.2.9"
  spec.summary      = "This is componentization with TXCategoryKit"

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  spec.description  = <<-DESC
    pod CJCategorykit private library
                   DESC

  spec.homepage     = "https://github.com/CJbenben/TXCategoryKit"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See https://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  spec.license      = "MIT"
  # spec.license      = { :type => "MIT", :file => "LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  spec.author             = { "chenxiaojie" => "chenjie003@qq.com" }
  # Or just: spec.author    = "chenxiaojie"
  # spec.authors            = { "chenxiaojie" => "chenjie003@qq.com" }
  # spec.social_media_url   = "https://twitter.com/chenxiaojie"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # spec.platform     = :ios
  spec.platform     = :ios, "9.0"

  #  When using multiple platforms
  spec.ios.deployment_target = "9.0"
  # spec.osx.deployment_target = "10.7"
  # spec.watchos.deployment_target = "2.0"
  # spec.tvos.deployment_target = "9.0"
  spec.requires_arc = true

  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  spec.source       = { :git => "https://github.com/CJbenben/TXCategoryKit.git", :tag => "#{spec.version}" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  #spec.exclude_files = "Classes/Exclude"

  spec.public_header_files = "TXCategoryKit/TXCategororyKit.h"
  spec.source_files  = "TXCategoryKit/TXCategororyKit.h"


    #Foundation
  spec.subspec 'Foundation' do |foundation|
#      foundation.source_files = 'JKCategories/Foundation/**/*.{h,m}'
#      foundation.source_files = 'JKCategories/Foundation/**/*.{h,m}'
      foundation.public_header_files = 'TXCategoryKit/Foundation/TXFoundation.h'
      foundation.source_files = 'TXCategoryKit/Foundation/TXFoundation.h'
      foundation.frameworks = 'Foundation','Security'
      #三级
      foundation.subspec 'NSString' do |string|
          string.source_files = 'TXCategoryKit/Foundation/NSString/*.{h,m}'
      end
  end

  #UIKit
  spec.subspec 'UIKit' do |uikit|
      # uikit.source_files = 'JKCategories/UIKit/**/*.{h,m}'
      uikit.public_header_files = 'TXCategoryKit/UIKit/TXUIKit.h'
      uikit.source_files = 'TXCategoryKit/UIKit/TXUIKit.h'
      uikit.frameworks = 'UIKit'

      uikit.subspec 'UIColor' do |color|
          color.source_files = 'TXCategoryKit/UIKit/UIColor/*.{h,m}'
      end
      uikit.subspec 'UIImage' do |image|
          image.source_files = 'TXCategoryKit/UIKit/UIImage/*.{h,m}'
      end
      uikit.subspec 'UIView' do |view|
          view.source_files = 'TXCategoryKit/UIKit/UIView/*.{h,m}'
      end
      # uikit.subspec 'UIViewController' do |viewcontroller|
      #     viewcontroller.source_files = 'TXCategoryKit/UIKit/UIViewController/*.{h,m}'
      # end
  end

  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # spec.resource  = "icon.png"
  # spec.resources = "Resources/*.png"

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # spec.framework  = "SomeFramework"
  # spec.frameworks = "SomeFramework", "AnotherFramework"

  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # spec.dependency "JSONKit", "~> 1.4"
  # spec.dependency "SDWebImage"

end
