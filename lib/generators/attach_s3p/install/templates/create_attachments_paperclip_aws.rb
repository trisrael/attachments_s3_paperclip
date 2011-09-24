class CreateAttachmentsPaperclipAws < ActiveRecord::Migration
  def self.up
    create_table :s3p_attachments do |t|
      t.string :attachee_file_name
      t.string :attachee_content_type
      t.integer  :attachee_file_size
      t.datetime :attachee_update_at
    end
  end

  def self.down
    drop_table :s3p_attachments
  end
  
end