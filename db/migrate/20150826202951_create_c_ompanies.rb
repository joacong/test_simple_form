class CreateCOmpanies < ActiveRecord::Migration
  def change
    create_table :c_ompanies do |t|
      t.string :name

      t.timestamps
    end
  end
end
