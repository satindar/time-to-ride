class CreateRides < ActiveRecord::Migration
  def change
    create_table :rides do |t|
      t.string :title

      t.timestamps
    end
  end
end
