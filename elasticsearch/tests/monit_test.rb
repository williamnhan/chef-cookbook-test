describe_recipe 'elasticsearch::monit' do

  include MiniTest::Chef::Assertions
  include MiniTest::Chef::Context
  include MiniTest::Chef::Resources

  it "saves the configuration file in the Monit directory" do
    if node.recipes.include?("elasticsearch::monit")
      file("/etc/monit/conf.d/elasticsearch.conf").must_exist
    end
  end

end
