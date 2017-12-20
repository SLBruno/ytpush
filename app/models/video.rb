class Video < ApplicationRecord
  validates_uniqueness_of :url

  def self.YTCHID
    %w(UCDUdvPnNWjQCif_GnrhUE6Q)
  end

end