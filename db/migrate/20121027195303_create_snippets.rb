class CreateSnippets < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.text :code
      t.text :description

      t.timestamps
    end
  end
end
