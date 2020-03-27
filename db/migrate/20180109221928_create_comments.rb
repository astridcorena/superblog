class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.references :user, foreign_key: true
      t.references :blog, foreign_key: true
      t.string :comment_body

      t.timestamps
    end
  end
end
