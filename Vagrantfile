Vagrant::Config.run do |config|
  config.vm.define :web01 do |config|
    config.vm.box = "maverick64"
    config.vm.network "33.33.33.11"
    config.vm.host_name = "web01.domain.test"
  end

  config.vm.define :web02 do |config|
    config.vm.box = "maverick64"
    config.vm.network "33.33.33.12"
    config.vm.host_name = "web02.domain.test"
  end
end
