class Api::BiblebooksPresenter

  attr_reader :biblebooks

  def initialize(biblebooks)
    @biblebooks = biblebooks
  end

  def as_json(options = {})
    {
      :biblebooks => biblebooks_array
    }
  end

  def biblebooks_array
    biblebooks.map do |biblebook|
      Api::BiblebookPresenter.new(biblebook).biblebook_hash
    end
  end
end
