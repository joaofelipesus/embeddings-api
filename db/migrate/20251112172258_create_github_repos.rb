class CreateGithubRepos < ActiveRecord::Migration[8.1]
  def change
    create_table :github_repos do |t|
      t.string :name
      t.string :url
      t.text :description
      t.text :languages, array: true, default: []

      t.timestamps
    end
  end
end
