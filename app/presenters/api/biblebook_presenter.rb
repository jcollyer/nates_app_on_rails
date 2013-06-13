class Api::BiblebookPresenter

  attr_reader :biblebook

  def initialize(biblebook)
    @biblebook = biblebook
  end

  def as_json(options = {})
    {
      :biblebook => biblebook_hash
    }
  end

  def biblebook_hash
    {
      :id => biblebook.id,
      :name => biblebook.name,
      :image_thumb_url => biblebook.image.url(:thumb),
      :image_medium_url => biblebook.image.url(:medium),
      :image_large_url => biblebook.image.url(:large)
    }
  end
end
