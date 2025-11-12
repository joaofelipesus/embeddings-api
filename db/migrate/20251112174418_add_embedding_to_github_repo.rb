class AddEmbeddingToGithubRepo < ActiveRecord::Migration[8.1]
  def change
    add_column :github_repos, :embedding, :vector, limit: 5
  end
end
