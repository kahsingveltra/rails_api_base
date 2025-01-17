module Types
    module Users
        class UserType < Types::BaseObject
            field :id, ID, null: false
            field :email, String, null: false
            field :username, String, null: false
            field :first_name, String, null: false
            field :last_name, String, null: false
        end
    end
end