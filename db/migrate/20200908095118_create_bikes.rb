class CreateBikes < ActiveRecord::Migration[6.0]
  def change
    create_table :bikes do |t|
      t.string :name
      t.string :displacement
      t.string :power
      t.string :torque
      t.string :weight
      t.string :image

      t.timestamps
    end
  end
end
