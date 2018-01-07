class CreateSubscribes < ActiveRecord::Migration[5.1]
  def change
    create_table :subscribes do |t|
      t.string :cet
      t.string :email
      t.string :hallticket
      t.string :state
      t.string :year

      t.timestamps
    end
  end
end
