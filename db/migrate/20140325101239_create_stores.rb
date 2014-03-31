class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.references :product, index: true

      t.timestamps
    end
  end
end
