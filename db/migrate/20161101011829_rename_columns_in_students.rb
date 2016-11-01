class RenameColumnsInStudents < ActiveRecord::Migration[5.0]
  def change
    rename_column :students, :phone, :phone_number
    rename_column :students, :bio, :short_bio
    rename_column :students, :linked_in, :linkedin_url
    rename_column :students, :twitter, :twitter_handle
    rename_column :students, :blog, :personal_blog_website_url
    rename_column :students, :github, :github_url
    rename_column :students, :resume_link, :online_resume_url
  end
end
