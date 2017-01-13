class CreateDailies < ActiveRecord::Migration[5.0]
  def change
    create_table :dailies do |t|
      t.integer :project_id
      t.integer :word_count
      t.timestamps
    end
  end
end
