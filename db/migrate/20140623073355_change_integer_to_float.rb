class ChangeIntegerToFloat < ActiveRecord::Migration
  def change
  	change_column :patients, :number, :float
  end
end
