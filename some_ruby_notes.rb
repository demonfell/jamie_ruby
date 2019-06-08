sentence = IO.read('/Users/james/repos/jamie_ruby/jlp') - no

servers = File.readlines('/Users/james/repos/jamie_ruby/jlp') - better

servers.each do |node| BLOCK - no

servers.each do |node| puts node
end - iterated over the lines

def get_foo_only(servers)
  servers.select{ |i| i[/^foo-server.*/] }
end

def get_bar_only(servers)
  servers.select{ |i| i[/^bar-server.*/] }
end

def get_baz_only(servers)
  servers.select{ |i| i[/^baz-server.*/] }
end

irb(main):046:0> get_baz_only(servers)
=> ["baz-server-01001.node.my-test-1\n", "baz-server-01002.node.my-test-1\n", "baz-server-01003.node.my-test-1\n"]
irb(main):047:0> baz_only = get_baz_only(servers)
=> ["baz-server-01001.node.my-test-1\n", "baz-server-01002.node.my-test-1\n", "baz-server-01003.node.my-test-1\n"]
irb(main):048:0> baz_only[1].chomp
=> "baz-server-01002.node.my-test-1"
irb(main):049:0>

def get_parallel_ad(testvar)
  ad_num = testvar.split(".")[2].scan(/\d/).join
  region_id = testvar.split(".")[3]
  unless region_id == "us-testland-1"
    parallel_ad = region_id +"-ad-"+ad_num
  else
    parallel_ad = "bad-ad-"+ad_num
  end
  parallel_ad
end

irb(main):065:0> get_parallel_ad(testvar)
=> "my-test-1-ad-1"
irb(main):066:0> testvar="baz-server.node.poop1.us-testland-1"
=> "baz-server.node.poop1.us-testland-1"
irb(main):067:0> get_parallel_ad(testvar)
=> "bad-ad-1"
irb(main):068:0> testvar="baz-server.node.poop2.us-testland-1"
=> "baz-server.node.poop2.us-testland-1"
irb(main):069:0> get_parallel_ad(testvar)
=> "bad-ad-2"
