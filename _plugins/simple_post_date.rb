# Simple Post Date Plugin for Jekyll
# 포스트에 date 필드가 없으면 자동으로 현재 시간 추가
module Jekyll
  class SimplePostDateGenerator < Generator
    safe true
    priority :low
    
    def generate(site)
      Dir.glob(File.join(site.source, '_posts', '*.md')).each do |post_file|
        content = File.read(post_file)
        
        # date 필드가 없으면 현재 시간 추가
        unless content.match(/^date:\s*.+$/m)
          add_current_time(post_file, content)
        end
      end
    end
    
    private
    
    def add_current_time(post_file, content)
      current_time = Time.now
      formatted_date = current_time.strftime('%Y-%m-%dT%H:%M:%S%z')
      
      # title 다음에 date 필드 추가
      if content.match(/^(title:\s*.+)$/m)
        content.gsub!(/^(title:\s*.+)$/m, "\\1\ndate: #{formatted_date}")
        File.write(post_file, content)
        puts "✅ #{File.basename(post_file)}에 자동으로 시간 추가: #{formatted_date}"
      end
    end
  end
end 