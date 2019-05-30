class AddColumnToArticle < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :dispo, :boolean
  end
end
