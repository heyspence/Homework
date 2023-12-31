class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :password_digest, null: false
      t.string :username, null: false
      t.string :session_token, null: false
      t.timestamps
    end
    add_index :users, :password_digest
    add_index :users, :session_token
  end
end
