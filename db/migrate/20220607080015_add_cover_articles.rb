class AddCoverArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :cover, :string
  end
end