class AddAttachmentImage1Image2Image3Image4Image5ToPortfolios < ActiveRecord::Migration
  def self.up
    change_table :portfolios do |t|
      t.attachment :image1
      t.attachment :image2
      t.attachment :image3
      t.attachment :image4
      t.attachment :image5
    end
  end

  def self.down
    remove_attachment :portfolios, :image1
    remove_attachment :portfolios, :image2
    remove_attachment :portfolios, :image3
    remove_attachment :portfolios, :image4
    remove_attachment :portfolios, :image5
  end
end
