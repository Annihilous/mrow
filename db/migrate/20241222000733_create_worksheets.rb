class CreateWorksheets < ActiveRecord::Migration[7.2]
  def change
    create_table :worksheets do |t|
      t.integer :mro_rank, default: 1, null: false
      t.string :mro_name
      t.string :mro_billet
      t.string :mro_unit
      t.string :mro_component
      t.integer :mro_status, default: 1, null: false
      t.integer :reporting_occasion, default: 1, null: false
      t.datetime :mmsb_due_date
      t.datetime :from_date
      t.datetime :to_date
      t.integer :rs_rank, default: 1, null: false
      t.string :rs_name
      t.string :rs_billet
      t.integer :ro_rank, default: 1, null: false
      t.string :ro_name
      t.string :ro_billet
      t.boolean :commendatory, default: false, null: false
      t.string :commendatory_description
      t.string :recommended_comments
      t.string :amplifying_information
      t.string :recommended_comparative_assessment

      t.timestamps
    end
  end
end
