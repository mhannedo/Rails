class CreateJoinTagPotins < ActiveRecord::Migration[5.2]
  def change
    create_table :join_tag_potins do |t|

      t.timestamps
      t.belongs_to :tag, index:true
      t.belongs_to :potin, index:true 
    end
  end
end
