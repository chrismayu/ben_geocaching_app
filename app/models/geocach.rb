class Geocach < ActiveRecord::Base
    include Tokenable
  attr_accessible :cache_name, :email, :found, :random_code, :qr_code, :hide, :image, :lad, :lat, :name, :receive_email, :user_id

  def qr_name
    "#{ENV['URL']} #{self.random_code}"
     
  end

end
