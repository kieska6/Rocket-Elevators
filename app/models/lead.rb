class Lead < ApplicationRecord
    has_one_attached:file
    before_save :generate_timestamp

    def generate_timestamp
      self.request_date = DateTime.now
    end
end
