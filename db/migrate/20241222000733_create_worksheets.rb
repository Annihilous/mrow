class CreateWorksheets < ActiveRecord::Migration[7.2]
  def change
    create_table :worksheets do |t|
      t.string :mro_rank
      t.string :mro_name
      t.string :mro_billet
      t.string :mro_unit
      t.string :mro_component
      t.string :mro_status
      t.string :reporting_occasion
      t.datetime :mmsb_due_date
      t.datetime :from_date
      t.datetime :to_date
      t.string :rs_rank
      t.string :rs_name
      t.string :rs_billet
      t.string :ro_rank
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
