class CreatePastLogs < ActiveRecord::Migration
  def change
    create_table :past_logs do |t|
      t.text :Workout
      t.text :Date

      t.timestamps null: false
    end
  end
end
