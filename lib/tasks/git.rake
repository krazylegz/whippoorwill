namespace :git do
  task :pull_krazylegz do
    unless sh "git remote show".include?("krazylegz") 
      sh "git remote add -f krazylegz git://github.com/krazylegz/whippoorwill.git"
      sh "git checkout krazylegz/master"
    end

    sh "git pull krazylegz master:e189d9f"
    sh "git merge krazylegz/master"
  end

  task :pull_markwilk do
    unless sh "git remote show".include?("markwilk")
      sh "git remote add -f markwilk git://github.com/markwilk/whippoorwill.git"
      sh "git checkout markwilk/master"
    end

    sh "git pull markwilk master:4f065d8"
    sh "git merge markwilk/master"
  end

  task :pull_fastone do
    puts "Useless use of task"
  end
end
