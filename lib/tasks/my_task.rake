namespace :my_task do
  desc "TODO"
  task hello: :environment do
    puts User.all.to_json
  end

end
