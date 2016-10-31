class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.text :bio
      t.string :linked_in
      t.string :twitter
      t.string :blog
      t.string :resume_link
      t.string :github

      t.timestamps
    end
  end
end
