def MusicLibraryController
  attr_accessor :path

  def initialize(path = "./db/mp3s")
  end
end
