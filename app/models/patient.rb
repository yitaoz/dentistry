class Patient < ActiveRecord::Base

	has_attached_file :avatar, 
	:path => ":rails_root/public/system/:attachment/:id/:basename_:style.:extension",
	:url => "/system/:attachment/:id/:basename_:style.:extension",
	:storage => :s3,
	:bucket => 'dentistryid',
	:s3_credentials => S3_CREDENTIALS,
	:styles => {
	  :thumb    => ['100x100#',  :jpg, :quality => 70],
	  :preview  => ['480x480#',  :jpg, :quality => 70],
	  :large    => ['600>',      :jpg, :quality => 70],
	  :retina   => ['1200>',     :jpg, :quality => 30]
	},
	:convert_options => {
	  :thumb    => '-set colorspace sRGB -strip',
	  :preview  => '-set colorspace sRGB -strip',
	  :large    => '-set colorspace sRGB -strip',
	  :retina   => '-set colorspace sRGB -strip -sharpen 0x0.5'
	}
	do_not_validate_attachment_file_type :avatar
end
