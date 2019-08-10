#Our CLI controller 
#This is where all the logic will be
require 'pry'
require 'date'
class DailyHistory::CLI 

	def call
     #self # the instance, not the whole class (instance method)

      puts " \033[1m\n Welcome to Today in History for the date of:\n\033[0m " 
      puts DailyHistory::Article.date
       
     DailyHistory::Scrape.scrape_all
     list_headlines  
     menu 
  
     
	end 
  

    #def welcome
       #puts " \033[1m\n ---Welcome to Daily History---\n\033[0m "

       #welcome = DailyHistory::Scrape.scrape_title  
       #puts "  \033[1m #{welcome} \n\033[0m  "  
   #end 

    
    def list_headlines
        DailyHistory::Article.all.each_with_index do |hline, i|
        puts " #{i+1}. #{hline.headline} \n"
    end 
end 

    def menu 

    

      input = " " 
      while input != "exit" 
      puts "\n Enter the number of the Headline you would like to read more about, to see list again type --list-- or type --exit-- \n\n "

      input = gets.strip.downcase
            

      #if input.to_i-1 <= DailyHistory::Article.all.size
         #article = DailyHistory::Article.all[input.to_i-1]
         #binding.pry

         if input.to_i > 0 && input.to_i-1 <= DailyHistory::Article.all.size
         article = DailyHistory::Article.all[input.to_i-1]
        
       puts "Headline: #{article.headline}"
       puts " "
       puts "Summary: #{article.summary}" 

   
      
      elsif input == "list"
         list_headlines
       
          else 
          goodbye
     
     end 
   end 
 end 


  def goodbye 
    puts " Goodbye! See you tomorrow for more history!!!"
    puts ""
   end 
  end 

