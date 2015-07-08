class Showsup < ActiveRecord::Base
  belongs_to :user

  extend SimpleCalendar
  has_calendar
end
