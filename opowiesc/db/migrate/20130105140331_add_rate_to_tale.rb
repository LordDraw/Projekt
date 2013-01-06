class AddRateToTale < ActiveRecord::Migration
  def change
    add_column :tales, :rate, :integer
  end
end
