class AddImageToPatients < ActiveRecord::Migration
  def self.up
    add_attachment :patient, :avatar
  end

  def self.down
    remove_attachment :patient, :avatar
  end
end
