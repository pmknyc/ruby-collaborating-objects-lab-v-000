require 'pry'
class MP3Importer
	attr_accessor :path, :files

# parses a directory of files
# sends the filenames to Song class
# to create a music library with
# artists that are unique

# path will be ./spec/fixtures/mp3s'
# code must respond to:

	def initialize(path)
	# path attribute that gets set on initialization
		@path = path
	end

# at #initialize, new importer has a path
# then when run #import, that method calls the #files method
# to look in object's path,parse out only the filename then import
# proceeds to create new Song from filename

  def files
		(Dir.glob("#{@path}/*.mp3")).map do |path_filename|
		  @files = File.basename(path_filename)
			end
	#	Dir.glob("#{@path}/*.mp3")
		#	@files =
#  Dir.glob(File.basename("#{@path}/*.mp3"),base:"#{@path}")
	end

	def import
		self.files.each do |filename|
      Song.new_by_filename
  	end
	end
#class end below
end
