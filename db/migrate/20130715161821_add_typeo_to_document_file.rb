class AddTypeoToDocumentFile < ActiveRecord::Migration
  def change
    add_column :docuent_files, :typeo, :string, :default => 'file'

  end
end
