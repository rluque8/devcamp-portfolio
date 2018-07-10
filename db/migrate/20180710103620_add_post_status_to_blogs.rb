class AddPostStatusToBlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs, :status, :integer, default: 0 #default: 0 was added by us in order to give a default value to the int
  end
end
