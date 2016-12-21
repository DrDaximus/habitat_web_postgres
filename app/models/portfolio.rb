class Portfolio < ActiveRecord::Base

	has_attached_file :image1, styles: { medium: "498x332>", thumb: "100x100>", show: "150x150#" } 
  validates_attachment_content_type :image1, content_type: /\Aimage\/.*\z/

  has_attached_file :image2, styles: { medium: "498x332>", thumb: "100x100>" }
  validates_attachment_content_type :image2, content_type: /\Aimage\/.*\z/
  
  has_attached_file :image3, styles: { medium: "248x333>", thumb: "100x100>" }
  validates_attachment_content_type :image3, content_type: /\Aimage\/.*\z/
  
  has_attached_file :image4, styles: { medium: "598x400>", thumb: "100x100>" }
  validates_attachment_content_type :image4, content_type: /\Aimage\/.*\z/
  
  has_attached_file :image5, styles: { medium: "248x333#", thumb: "100x100>" }
  validates_attachment_content_type :image5, content_type: /\Aimage\/.*\z/

end
