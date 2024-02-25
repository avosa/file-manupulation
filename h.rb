require 'fileutils'

def delete_files_with_extensions(root_folder, extensions)
  Dir.chdir(root_folder) do
    Dir.glob("**/*.{#{extensions.join(',')}}") do |file|
      next unless File.file?(file)

      puts "Deleting file: #{file}"
      FileUtils.rm(file)
    end
  end
end

root_folder = Dir.pwd
extensions = %w[srt url html txt]

delete_files_with_extensions(root_folder, extensions)
