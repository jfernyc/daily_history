#Our CLI controller 
#This is where all the logic will be

class DailyHistory::CLI 

	def initialize
     
     welcome 
     list_headlines  #list the headlines of the particular day 
     menu 
     goodbye
     
	end 
  

    def welcome
       puts " \033[1m\n ---Welcome to Daily History---\n\033[0m "

       welcome = DailyHistory::Scrape.scrape_title  
       puts "  \033[1m#{welcome} \n\033[0m  "  #will puts On this day ex: June 22, 2019
   end 

    
    def list_headlines
     headlines = DailyHistory::Scrape.scrape_headlines
     headlines.each_with_index do |hline, i|

      puts " #{i+1}. #{hline} \n"

   
    end 

end 

    def menu 

      input = nil 
      while input != "exit"
      puts "\n Enter the number of the Headline you would like to read more about, to see list again type --list-- or type --exit-- \n\n "

      input = gets.strip.downcase

      if input.to_i  > 0 

       headlines = DailyHistory::Scrape.scrape_headlines[input.to_i-1]
       summaries = DailyHistory::Scrape.scrape_summary[input.to_i-1]
        
        puts " \033[1mTitle:\033[0m  \n#{headlines} \n\n"
        
        puts " \033[1mHere is the summary:\033[0m \n#{summaries} \n\n"

       elsif input == "list"
         
          
          list_headlines
        
      else 
         puts ""
         puts "Goodbye!"

     end 
   end 
 end 

   def goodbye 
     puts "See you tomorrow for more history!!!"
     puts ""
   end 
end 
