class RenameBlogTagsToArticleTags < ActiveRecord::Migration[5.2]
  def change
    rename_table :blog_tags, :article_tags
  end
end
