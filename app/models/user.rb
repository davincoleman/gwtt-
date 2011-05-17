class User < ActiveRecord::Base
  has_many :identities

	def as_json(options={})
          	{:ID => self.id}.merge(serializable_hash({:except => [:id, :updated_at],
			:include => {
				:identities => {
					:exclude => [:id, :updated_at, user_id]
				}
			}}))
	end

end
