require_relative 'rolodex'
require_relative 'contact'
require 'sinatra' 

$rolodex= Rolodex.new

get '/' do  
	@crm_app_name = "My CRM"
	erb :index
end
# '/' # This block of code is route. It allows me to match 
# a particular request method in order to get a specific
#response for this request.

get "/contacts" do
  erb :contacts
end

get '/contacts_new' do
	erb :contacts_new
end

post '/contacts' do
  contacts_new = Contact.new(params[:id], params[:first_name], params[:last_name], params[:email], params[:note])
  $rolodex.add_contact(contacts_new)
  redirect to('/contacts')
end





