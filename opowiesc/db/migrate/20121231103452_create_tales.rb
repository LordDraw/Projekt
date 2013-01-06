class CreateTales < ActiveRecord::Migration
  def change
    create_table :tales do |t|
      t.string :title
      t.string :link
      t.integer :rating  
      t.timestamps
    end
  end
end
