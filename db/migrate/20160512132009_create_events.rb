class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :location
      t.string :date_start
      t.string :date_end
      t.boolean :done

      t.timestamps null: false
    end
  end
end
