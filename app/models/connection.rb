class Connection < ApplicationRecord
  belongs_to :user
  belongs_to :contact

  def duration_work
    return if self.contact.end_date.nil? || self.contact.start_date.nil?
    if self.contact.end_date == Date.today
      return "From #{self.contact.start_date.strftime("%b %Y")}"
    else
      return "#{self.contact.start_date.strftime("%b %Y")} to #{self.contact.end_date.strftime("%b %Y")}"
    end
  end
end
