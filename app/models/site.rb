class Site < ActiveRecord::Base
  
  belongs_to :type
  belongs_to :user
  has_many   :visits
  has_many :comments, :dependent => :destroy
  has_many   :trips,   :through  =>  :visits
  has_attached_file    :image

  
  # Debe estar protegido para evitar accesos indeseados
  attr_protected :user_id    

  # Se añaden estas definiciones 
  validates :name, :type_id,:latitud_geo, :longitud_geo, :zoom_geo,     :presence => true   # campo obligatorio
end
