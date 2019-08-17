class CreateFirstBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :first_blogs do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
