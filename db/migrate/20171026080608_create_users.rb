class CreateUsers < ActiveRecord::Migration

    def up
        create_table :users do |t|
            t.string "username"
            t.string "password_digest"
            t.string "email", default: '', null: false
            t.timestamps null: false
        end
    end

    def down
        drop_table :users
    end

end
