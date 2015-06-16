#my way...
require 'sinatra'

get '/' do  
	@crm_app_name = "My CRM"
	erb :index
end
# '/' # This block of code is route. It allows me to match 
# a particular request method in order to get a specific
#response for this request.

get '/contacts' do
	erb :contacts
end

get '/contacts/new' do
	erb :contacts_new
end






