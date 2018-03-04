class CreateOkrs < ActiveRecord::Migration
  def change
    create_table :okrs do |t|
      t.integer :Objects_num
      t.string :Objects
      t.string :KR1
      t.string :KR2
      t.string :KR3
      t.integer :KR_COMPLETENESS
      t.integer :WEIGHT
      t.string :COF_INDEX
      t.string :Objects_G
      t.string :KR1_G
      t.string :KR2_G
      t.integer :KR_G_COMPLETENESS
      t.integer :KR_G_WEIGHT
      t.string :KR_G_COF_INDEX
      t.string :Objects_T
      t.string :KR1_T
      t.string :KR2_T
      t.integer :KR_T_COMPLETENESS
      t.integer :KR_T_WEIGHT
      t.string :KR_T_COF_INDEX
      t.string :VISION
      t.string :MISSION
      t.string :STRATEGY

      t.timestamps null: false
    end
  end
end
