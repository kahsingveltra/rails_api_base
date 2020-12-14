module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :users, [Users::UserType], null: false do
      description 'Find all users'
    end

    field :user, Users::UserType, null: false do
      description 'Find an user by ID'
      argument :id, ID, required: true
    end

    def users
      User.all
    end

    def user(id:)
      User.find(id)
    end
  end
end
