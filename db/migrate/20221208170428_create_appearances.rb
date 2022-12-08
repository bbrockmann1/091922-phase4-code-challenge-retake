class CreateAppearances < ActiveRecord::Migration[6.1]
  def change
    create_table :appearances do |t|
      t.integer :rating 
      t.belongs_to :episode
      t.belongs_to :guest
      
      t.timestamps
    end
  end
end
