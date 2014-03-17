class CreateTrainings < ActiveRecord::Migration
  def change
    create_table :trainings do |t|
      t.string :comment
      t.float :distance
      t.timestamp :start
      t.timestamp :stop
      t.integer :username

      t.timestamps
    end
  end
end
