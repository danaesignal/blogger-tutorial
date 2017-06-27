class AddPaperclipFieldsToAttachment < ActiveRecord::Migration[5.1]
  def change
    add_column :attachments, :image_file_name,     :string
    add_column :attachments, :image_content_type,  :string
    add_column :attachments, :image_file_size,     :integer    
  end
end
