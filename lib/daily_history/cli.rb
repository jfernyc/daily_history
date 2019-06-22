#Our CLI controller 
#This is where all the logic will be

class DailyHistory::CLI 

	def call
     
     puts "---Welcome to your Daily History---"

     welcome = DailyHistory::Scrape.scrape_title  
    
     puts welcome   #will puts On this day ex: June 22, 2019
		 list_headlines

     #goodbye
     
	end 

    
     def list_headlines
     headlines = DailyHistory::Scrape.scrape_headlines
     headlines.each_with_index do |hline, i|

     puts "#{i+1}. #{hline}"

      end  
     end 


     def menu 
      
      input = nil
      while input != "exit"  #while input is not exit
        puts " "
        puts "Enter the number of the history title you would like to read more about:"
        puts " "
        input = gets.strip.downcase

  

       case input  
       when "1"

       puts "More info on headline #1..."
 
        when "2"

       puts "More info on headline #2..."
     
        when "list"

       list_history

       else 

       puts "If you would like to see list again type --list-- or type --exit-- to end search "
       end 
    end 
  end 


   def goodbye 
     puts "See you tomorrow for more history!!!"
   end 
 
 end 

