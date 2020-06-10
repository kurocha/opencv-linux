
#
#  This file is part of the "Teapot" project, and is released under the MIT license.
#

teapot_version "3.0"

define_target "opencv-linux" do |target|
	target.provides 'Platform/opencv/linux' do
		append linkflags [
			"-ldc1394",
			"-lswscale",
			"-lv4l1",
			"-lv4l2",
			"-lavcodec",
			"-lavformat",
			"-lavutil"
		]
	end
	
	target.provides :opencv_platform => 'Platform/opencv/linux'
end
