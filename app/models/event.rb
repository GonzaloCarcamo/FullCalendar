class Event < ApplicationRecord
  validate :start_date_cannot_be_in_the_past, on: :update
  def editable?

    start > Date.today

  end

  def start_date_cannot_be_in_the_past
    if start.present? && start < Date.today
      errors.add(:start, 'nonono')

    end

  end

end
