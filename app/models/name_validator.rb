class NameValidator < ActiveModel::EachValidator
	def validate_each(record, attribute, value)
		unless value.delete(" ").empty?
			record.errors[:name] << "Cannot contain only spaces" 
		end
	end
end