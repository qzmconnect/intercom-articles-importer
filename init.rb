EXPORT_ACCESS_TOKEN = "dG9rOjYyYTJiYWU5X2U0ODRfNDRmZl84OTJhX2NkZDIzYmQ2ZDFlMToxOjA="
IMPORT_ACCESS_TOKEN = "dG9rOjY1MTgyZmMzXzhjYWRfNGE5MF85NTQwXzc4NmY0YWVjM2VkMToxOjA6ZXUtd2VzdC0x"
COLLECTION_NAME = "Some general questions we get asked"
AUTHOR_ID = "50021097"


#If you need to change URLS within your Articles that point to your old Helpcenter, fill in these fields. Otherwise, leave blank.
REPLACE_ARTICLE_URLS = true
EXPORT_CUSTOM_DOMAIN = "YOUR CUSTOM DOMAIN HERE"
IMPORT_CUSTOM_DOMAIN = "NEW CUSTOM DOMAIN HERE"

#commandthatexports-importsarticles
#List all articles that need to be published
#if needs to be copied -- create an ArticleIndex object. This will contain both the import_id AND the export_id



require 'intercom'
require 'nokogiri'
require 'mutations'
require 'pry'
require './fix_redirects.rb'
require './article.rb'
require './article_collection.rb'
require './article_importer.rb'


ExportWorkspace = Intercom::Client.new(token: EXPORT_ACCESS_TOKEN)
ImportWorkspace = Intercom::Client.new(token: IMPORT_ACCESS_TOKEN)
Collection = ImportWorkspace.collections.create(name: COLLECTION_NAME)
