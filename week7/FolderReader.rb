def file_list_recurse(dir)
  Dir.foreach(dir) do |f|
    next if f == '.' or f == '..'
    f = dir + '/' + f
    if File.directory?(f)
      file_list_recurse(File.absolute_path(f) )
    else
      file = File.new(f)
      puts 'Name of the file:' + File.basename(file)
      puts 'Extension of the file' + File.extname(file)
      puts 'Path of the file' + File.dirname(file)
      puts '--------------------------------------------'
    end

  end

end

file_list_recurse("./")
