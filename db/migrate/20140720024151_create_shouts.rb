class CreateShouts < ActiveRecord::Migration
  def change
    create_table :shouts do |t|
      t.string :text

      t.timestamps
    end
  end
end
