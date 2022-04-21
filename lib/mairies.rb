require 'rubocop'
require 'rspec'
require 'pry'
require 'dotenv'
require 'nokogiri'
require 'open-uri'


url_mairie_ableige = "https://www.annuaire-des-mairies.com/95/ableiges.html"
url_toutes_les_mairies = "https://www.annuaire-des-mairies.com/val-d-oise.html"

#METHODE 1 : GET EMAILS#

#def scrap_email_une_mairie(url)
  mairie_email_array = []
  page = Nokogiri::HTML(URI.open(url_mairie_ableige))
  page.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').each do |email|
    mairie_email_array << email.text
  end
#end

#METHODE 1 : GET EMAILS#

puts mairie_email_array




#METHODE 2 : GETS URLS FROM TOWNHALL


#def noms_mairies (page)
    page = Nokogiri::HTML(URI.open(url_toutes_les_mairies))
    array_1 = []
    page.xpath("//table//p/a").each do |i|
    array_1 << i.text
end


#def scrap_url_des_mairies(url)
  mairies_url_array = []
  page = Nokogiri::HTML(URI.open(url_toutes_les_mairies))
  page.xpath('//a[contains(@href, "95")]').each do |link|
  mairies_url_array << "https://www.annuaire-des-mairies.com/" + link['href'][1..-1]
  end
  #return mairies_url_array
#end


#METHODE 2 : GETS URLS FROM TOWNHALL



#def tableau_email_toutes_les_mairies
    #urldef = scrap_url_des_mairies(url_toutes_les_mairies)
   ( final_emails = []
    mairies_url_array.each do |email_def|
        pages = Nokogiri::HTML(URI.open(email_def))
        pages.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').each do |email|
            final_emails << email.text
         end
        end)
#end

Ma_liste_finale = Hash[array_1.zip(final_emails)]
puts Ma_liste_finale

#def perform 
   # puts scrap_email_une_mairie (url_mairie_ableige)
    #puts noms_mairies (url_toutes_les_mairies)
    #puts scrap_url_des_mairies (url_toutes_les_mairies)
    #puts tableau_email_toutes_les_mairies (url_toutes_les_mairies)
#end

#perform



### 2 EME APPROCHE --- PAS TERMINE ###

#page = Nokogiri::HTML(URI.open('http://annuaire-des-mairies.com/val-d-oise.html'))
#array_1 = []
#age.xpath('//table//a').each do |i|
#    if i.text.include? (" ")
 #       puts j = i.text.downcase.gsub!(" ","-")
  #  else
   #     puts k = i.text.downcase
    #end
    #array_1 << k
    #array_1 << j
#end


#array_1.each do |i|
#    array_2 << "http://annuaire-des-mairies.com/95/#{i}.html"
#end

#array_2 each do |i|
 #   page = Nokogiri::HTML(URI.open("#{i}"))
  #  page.xpath('//table//a')
#end

### 2 EME APPROCHE --- PAS TERMINE ###
        
