class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :title
      t.string :desc1
      t.string :desc2
      t.string :desc3
      t.string :desc4
      t.string :desc5

      t.timestamps null: false
    end
  end
end
