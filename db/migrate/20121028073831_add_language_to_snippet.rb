class AddLanguageToSnippet < ActiveRecord::Migration
  def up
    add_column :snippets, :language, :string

    for snippet in Snippet.all do
      snippet.language = 'ruby'
      snippet.save
    end
  end

  def down
    remove_column :snippets, :language
  end
end
