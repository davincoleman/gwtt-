class Identity < ActiveRecord::Base
  belongs_to :user

	def as_json(options={})
#          {:Email => self.email}
           {:only => [:email]}
	end
end
