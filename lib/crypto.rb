require 'rubocop'
require 'rspec'
require 'pry'
require 'dotenv'
require 'nokogiri'
require 'open-uri'


page = Nokogiri::HTML(URI.open('https://coinmarketcap.com/all/views/all/'))

#def scrap_names (noms, page)
    noms = []
    page.xpath('//tr/td[@class="cmc-table__cell cmc-table__cell--sortable cmc-table__cell--left cmc-table__cell--hide-sm cmc-table__cell--sort-by__symbol"]').each do |hashes|
        noms << hashes.text
    end
        #return noms
#end

#def scrap_values (valeurs,page)
    valeurs = []
    page.xpath('//tr/td[@class="cmc-table__cell cmc-table__cell--sortable cmc-table__cell--right cmc-table__cell--sort-by__price"]').each do |hashess|
        valeurs << hashess.text
    end
#end

#def hash_crypto (crypto, scrap_names, scrap_values)
    cry = Hash[noms.zip(valeurs)]
    crypto = cry.map {|cry| {cry[0] => cry[1]}}
        #return cry
#end

 #(page = 'https://coinmarketcap.com/all/views/all/')


puts cry 