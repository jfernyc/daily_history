# build a class called DailyHistory::Article

# for each of the five articles scraped,
# a new article instance should be created with a title and summary
# add a class variable @@all to hold all the Articles 
# add a class method to expose  @@all 
# The only Scraper reference from CLI should be to DailtyHistory::Article.all


class DailyHistory::Article

	attr_accessor  :date, :headline, :summary

	def initialize( headline, summary)
		@date = date
		@headline = headline
		@summary = summary 
	end 

   @@all = [] 

  
   def save
   	@@all << self 
   end 


   def self.all 
   	@@all[0..4]
   end 
  
   def self.date
   date = Time.new
   date = date.month.to_s + "/" + date.day.to_s + "/" + date.year.to_s
   puts " \033[1m\n____#{date}____ \n\033[0m "  
   end 
    
    def self.get_headlines
        @headline
    end 

    def self.get_summary
      @summary
    end 



end 