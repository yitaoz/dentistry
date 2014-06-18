class AddImageToPatients < ActiveRecord::Migration
  def self.up
    add_attachment :patients, :avatar
  end

  def self.down
    remove_attachment :patients, :avatar
  end
end
