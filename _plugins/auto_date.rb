# Auto Date Plugin for Jekyll
# Automatically updates last_modified_at in front matter

require 'fileutils'

module Jekyll
  class AutoDateGenerator < Generator
    safe true
    priority :low

    def generate(site)
      # Update about.md with current date
      about_file = File.join(site.source, '_pages', 'about.md')
      
      if File.exist?(about_file)
        content = File.read(about_file)
        current_date = Time.now.strftime('%Y-%m-%d')
        
        # Update last_modified_at if it exists, or add it if it doesn't
        if content.include?('last_modified_at:')
          content.gsub!(/last_modified_at: .*/, "last_modified_at: #{current_date}")
        else
          content.gsub!(/^---\s*$/, "---\nlast_modified_at: #{current_date}")
        end
        
        File.write(about_file, content)
        puts "Updated last_modified_at to #{current_date} in about.md"
      end
    end
  end
end 