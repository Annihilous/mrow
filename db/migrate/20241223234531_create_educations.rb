class CreateEducations < ActiveRecord::Migration[7.2]
  def change
    create_table :educations do |t|
      t.references :worksheet, null: false, foreign_key: true
      t.integer :ews, default: 0, null: false
      t.integer :cns, default: 0, null: false
      t.integer :war_college, default: 0, null: false
      t.integer :graduate_degree, default: 0, null: false
      t.integer :self_study, default: 0, null: false
      t.integer :jpm_phase_i, default: 0, null: false
      t.integer :jpm_phase_ii, default: 0, null: false
      t.integer :other, default: 0, null: false
      t.string :other_school_name

      t.timestamps
    end
  end
end
