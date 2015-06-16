require_relative 'rolodex.rb'
require_relative 'contact'
require 'sinatra' #my way...

get '/' do  
	@crm_app_name = "My CRM"
	erb :index
end
# '/' # This block of code is route. It allows me to match 
# a particular request method in order to get a specific
#response for this request.

# get '/contacts' do
# 	erb :contacts
# end

get '/contacts/new' do
	erb :contacts_new
end

get "/contacts" do
  @contacts = []
  @contacts << Contact.new(1000, "Serguei", "Kourokhtine", "skourokhtine@gmail.com", "Bitmaker")
  @contacts << Contact.new(1001,"Mark", "Zuckerberg", "mark@facebook.com", "CEO")
  @contacts << Contact.new(1002, "Sergey", "Brin", "sergey@google.com", "Co-Founder")

  erb :contacts
end






