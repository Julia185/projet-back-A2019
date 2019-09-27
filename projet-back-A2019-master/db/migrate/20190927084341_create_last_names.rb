class CreateLastNames < ActiveRecord::Migration[5.2]
  def change
    create_table :last_names do |t|
      t.string :birthday

      t.timestamps
    end
  end
end
