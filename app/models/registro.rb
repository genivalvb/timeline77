class Registro < ActiveRecord::Base
  has_one :evento, :dependent => :destroy
end
