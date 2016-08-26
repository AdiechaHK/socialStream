class CreateSocialPosts < ActiveRecord::Migration
  def change
    create_table :social_posts do |t|
      t.string :type
      t.text :post
      t.timestamps null: false
    end
  end
end
