class CreateSubreddits < ActiveRecord::Migration[7.1]
  def change
    create_table :subreddits do |t|
      t.string :name

      t.timestamps
    end
  end
end
