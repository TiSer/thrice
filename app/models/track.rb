class Track < ActiveRecord::Base
  
  belongs_to :user

#  attr_accessor :musicfile_file_name

  CATEGORIES = [ ["Our", "our"], ["Other", "other"] ]

  has_attached_file :musicfile,
    :path => ':rails_root/public/assets/tracks/:id/:style/:basename.:extension',
    :url => ApplicationSettings.assets_host_url + '/assets/tracks/:id/:style/:basename.:extension'

end
