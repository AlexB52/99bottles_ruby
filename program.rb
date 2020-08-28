# require 'open3'

# cmd = 'fswatch -0 . | xargs -0 -n 1'
# test_run = ARGV.join(' ')

# Open3.popen3(cmd) do |stdin, stdout, stderr, wait_thr|
#   while line = stdout.gets
#     test_file
#     test_run ||= 
#     system("clear") || system("cls")
#     system test_run
#   end
# end


require 'minitest/autorun'

class TheFileTest < Minitest::Test
  def test_file_found
    start = '/Users/alexandrebarret/Tests/99bottles_ruby/lib/bottles.rb'
    extname = File.extname(start)
    basename = File.basename(start, extname)
    puts basename
    puts extname
    result = Dir.glob File.join(".", "**", "#{basename}*?#{extname}")

    assert_equal 'test/bottles_test.rb', result
  end
end