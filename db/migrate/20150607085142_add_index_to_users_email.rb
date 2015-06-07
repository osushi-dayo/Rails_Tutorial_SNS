class AddIndexToUsersEmail < ActiveRecord::Migration
  def change
      add_index "users", ["email"], name: "index_users_on_email", unique: true ###DBレベルで一意性を担保
  end
end
