class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :article_id
      t.integer :category_id

      t.timestamps
    end
  end
end
