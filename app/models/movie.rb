class Movie < ApplicationRecord
  validates :title, presence:true
  validates :title, format:{ with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
  validates :release_date, presence:true
  # Write in the format validation
  validates :overview, presence:true
  validates :overview, format:{ with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }

  validates :inventory, presence:true
  validates :inventory, numericality:true



  def valid_date?( str, format="%Y/%m/%d/" )
    format_ok = str.match(/\d{4}-\d{2}-\d{2}/)
    # parseable = Date.strptime(str, '%Y-%m-%d') rescue false

    if str == format_ok #&& parseable
      return true
    else
      return false
    end
  end
end
