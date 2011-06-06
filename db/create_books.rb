class CreateBooksTable < ActiveRecord::Migration
  def self.up
    create_table :books do |t|
      t.string :name
      t.text :description
    end
  end
  def self.down
    drop_table :books
  end
end