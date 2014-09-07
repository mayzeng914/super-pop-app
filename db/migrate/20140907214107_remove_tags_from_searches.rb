class RemoveTagsFromSearches < ActiveRecord::Migration
  def change
    remove_column :searches, :tags, :string
  end
end
