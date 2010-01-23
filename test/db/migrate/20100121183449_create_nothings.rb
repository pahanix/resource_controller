class CreateNothings < ActiveRecord::Migration
  def self.up
    create_table :nothings do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :nothings
  end
end
