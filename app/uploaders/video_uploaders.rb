class VideoUploaders < CarrierWave::Uploader::Base
	include CarrierWave::Video

	process encode_video: [:mp4, resolution: "640x480"]

	version :mp4 do
		def full_filename(for_file)
			super.chomp(File.extname(super)) + '.mp4'
		end
	end
end