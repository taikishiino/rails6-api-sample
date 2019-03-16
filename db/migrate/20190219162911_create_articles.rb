# frozen_string_literal: true

class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.string :text, null: false
      t.integer :like_count, null: false, default: 0

      t.timestamps null: false
    end
  end
end
