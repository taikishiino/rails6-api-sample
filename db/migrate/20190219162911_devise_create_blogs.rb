# frozen_string_literal: true

class DeviseCreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :title, null: false, default: ""
      t.string :content, null: false, default: ""

      t.timestamps null: false
    end
  end
end
