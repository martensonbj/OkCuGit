require 'pry'

module OkCuGit
  class Finder

    def initialize(repo_name)
      @repo_name = repo_name
      @file_directory = repo_name.split('/')[-1]
      Dir.chdir("/Users/bmartenson/turing/1module/in-class/OkCuGit")
    end

    def master_execute
      clone_git_repo
      change_into_folder
      record_git_log
      back_up_a_level
      # delete_temp_repo_dump
      puts "DONE"
    end

    def clone_git_repo
      `git clone #{@repo_name}`
      puts "REPO CLONED"
    end

    def change_into_folder
      `cd #{@file_directory}`
      puts "change_into_folder"
      puts `pwd`
    end

    def record_git_log
      `git log`
    end

    def back_up_a_level
      `cd ..`
      puts "back_up"
      puts `ls`
    end

    # def delete_temp_repo_dump
    #   `rm -rf temp_repo_dump`
    #   puts "delete_temp"
    #   puts `ls`
    # end

  end
end

binding.pry
