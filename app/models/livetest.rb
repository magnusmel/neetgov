class Livetest < ApplicationRecord
	validates_presence_of :cet,:subject,:testcount,:status
	validate :subtest

	private
	def subtest
		if Livetest.where(:subject => self.subject, :testcount => self.testcount).count == 0
			# errors.add(:password, :invalid_character, not_allowed: "!")
		else
			errors.add(:subject, already_added: "already_added")
		end
	end
end
