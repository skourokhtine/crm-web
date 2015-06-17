class Rolodex
	attr_reader :contacts
		

	def initialize
		@contacts = []
		@@id = 1000
	end


	def add_contact(contact)
		@@id += 1		
		@contacts << contact
	end

	def all
		@contacts
	end

	def find_contact(id)
		found_index = @contacts.index {|contact| contact.id == id}
		@contacts[found_index]
	end


end