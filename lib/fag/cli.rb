require 'fag'
require 'thor'

module Fag
  class CLI < Thor
    desc "ag", "aggregate folder separated files to numbered files."
    def a(indir, outdir)
      index = 1
      dirs = Dir.glob("#{indir}/*/").sort
      dirs.each do |dir|
        files = Dir.glob("#{dir}/*.*").sort
        files.each do |src|
          extname = File.extname(src)
          fn = sprintf("F%08d#{extname}", index)
          FileUtils.mv(src, "#{outdir}/#{fn}")
          index += 1
        end
      end
    end
  end
end
