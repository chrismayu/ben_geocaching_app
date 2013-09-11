module Tokenable
  extend ActiveSupport::Concern

  included do
   
    after_validation :generate_geocache_code
    
   #  before_create :generate_qr_code
    
  end

  protected

  def generate_geocache_code
    self.random_code = loop do
       
       random_code = SecureRandom.hex(4)
      break random_code unless Geocach.where(random_code: random_code).exists?
    end
    
  end


  def generate_qr_code
    self.random_code = loop do
       
       random_code = SecureRandom.hex(4)
      break random_code unless Geocach.where(random_code: random_code).exists?
    end
    
  end
end