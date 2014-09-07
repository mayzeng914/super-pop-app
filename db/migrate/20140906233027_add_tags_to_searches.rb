class AddTagsToSearches < ActiveRecord::Migration
  def change
  	add_column :searches, :tags, :string
  end
end
