class Question < ActiveRecord::Base
  belongs_to :user

  validates :body, presence: true, length: {in: 5..255}
  validates :solved, inclusion: {in: [true, false]}

	def self.unsolved(params)
		where(solved: false).paginate(page: params[:page], order: 'created_at DESC', per_page: 3)
	end  
end
