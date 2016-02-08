class Profile < ActiveRecord::Base
	belongs_to :user
	validate :fname_lname_has_val, :male_not_sue
	validates :gender, inclusion: {in: %w(male female)}

	def fname_lname_has_val
		if first_name.nil? and last_name.nil?
			errors.add(:base,"First name and last name can't both be null")
		end
	end

	def male_not_sue
		if first_name == "Sue" and gender == "male"
			errors.add(:base,"Name can't be Sue if you're a guy")
		end
	end

	def self.get_all_profiles(min, max)
		profs = Profile.order(:birth_year).where("birth_year BETWEEN :min_yr AND :max_yr", min_yr: min, max_yr:max)
		return profs
	end
end
