class CreateDistributors < ActiveRecord::Migration[5.2]
  def change
    create_table :distributors do |t|
      t.string :name
      t.integer :parent_id
      t.boolean :status, default: true     

      t.timestamps
    end
  end
end
