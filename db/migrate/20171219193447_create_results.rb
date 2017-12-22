class CreateResults < ActiveRecord::Migration[5.1]
  def change
    create_table :results do |t|
      t.string :cet
      t.string :subject
      t.integer :userid
      t.integer :testcount
      t.integer :startcount
      t.integer :attempt
      t.integer :marks

      t.timestamps
    end
  end
end
