require 'rails/generators/migration'

module AttachS3P
  module Generators
    class InstallGenerator < PaperclipGenerator
      include Rails::Generators::Migration
      source_root File.expand_path('../templates', __FILE__)
      desc "add the migrations"

      def self.next_migration_number(path)
        unless @prev_migration_nr
          @prev_migration_nr = Time.now.utc.strftime("%Y%m%d%H%M%S").to_i
        else
          @prev_migration_nr += 1
        end
        @prev_migration_nr.to_s
      end

      def copy_migrations
        migration_template "create_attachments_paperclip_aws.rb", "db/migrate/create_attachments_paperclip_aws.rb"
      end
    end
  end
end