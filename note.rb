require './database'
require 'securerandom'


class Note
    attr_reader :id 

    def initialize(text)
        @id= SecureRandom.uuid
        @text=text
        @date= Time.now
    end

    def to_s 
        "Date: #{@date.strftime("%y-%m-%d \n %H:%M:%S")} \nNote: #@text  "
    end
    def set_text(text)
        @text=text 
        @date=Time.now
    end
end 

class Manager 
    def initialize
        @database = Database.new
    end

    def store(note)
        @database.store(note)
    end
    def show_all
        entries= @database.get_all
        if entries.empty?
            puts "NO Entries Found".center(50,"-")
        end
        entries.each_with_index do |item, index|
            puts (index+1).to_s.center(50, "-")
            puts item
            puts "".center(50, "-")
        end
    end
    def get_all
        @database.get_all
    end
    def delete(note)
        @database.delete(note)
    end
    
end