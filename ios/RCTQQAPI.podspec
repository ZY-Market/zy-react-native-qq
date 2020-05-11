# coding: utf-8
# Copyright (c) Facebook, Inc. and its affiliates.
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.

require "json"
package = JSON.parse(File.read(File.join(__dir__, "package.json")))
version = package['version']

source = { :git => 'https://github.com/ZY-Market/zy-react-native-qq.git' }
Pod::Spec.new do |s|
  s.name         = "react-native-qq"
  s.version      = version
  s.summary      = "A library for handling push notifications for your app, including permission handling and icon badge number."
  s.homepage     = "https://github.com/ZY-Market/react-native-qq"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = "tonyYo"
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/ZY-Market/react-native-qq.git", :tag => "master" }
  s.source_files  = "ios/RCTQQAPI/*.{h,m}"
  s.preserve_paths     = "package.json", "LICENSE", "LICENSE-docs"
  s.dependency "React"
  s.vendored_framework = "ios/RCTQQAPI/TencentOpenAPI.framework"
  s.libraries          = "iconv", "sqlite3", "z", "c++"

end
