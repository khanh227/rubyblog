class AddAttachmentToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :attachment, :string
  end
end
