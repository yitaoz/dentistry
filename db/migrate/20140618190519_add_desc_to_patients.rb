class AddDescToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :description, :string
  end
end
