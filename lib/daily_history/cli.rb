#Our CLI controller 

class DailyHistory::CLI 

	def call
		list_history
		menu
		goodbye
	end 
    
     def list_history
     	puts "Today in History:"
     	puts <<-DOC.gsub /^\s*/, ''
        1.List of history
        2.From most recent 1st to oldest last 
        DOC
        @history = DailyHistory::History.today 
     end 


    def menu
    	input = nil 
      while input != "exit"  #while input is not exit
      	puts "Enter the number of the history headline you would like more info on:"
     input = gets.strip.downcase
     case input  
     when "1"
     puts "More info on headline 1..."
     case input  
     when "2"
     puts "More info on headline 2..."
      when "list"
      	list_history
      else 
      	puts "Not sure what you want ? type list or exit "
       end 
     end 
   end 
 end 

   def goodbye 
     puts "See you tomorrow for more history!!!"
   end 

 end 