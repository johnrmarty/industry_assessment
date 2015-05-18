class CreateIndustries < ActiveRecord::Migration
  def change
    create_table :industries do |t|
      t.string :name
      t.string :description
      t.datetime "created_at"
      t.datetime "updated_at"
    end
  end
end




