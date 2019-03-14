# encoding: utf-8

# bundle exec rails unify:down

namespace :unify do

  task down: :environment do |task, args|
    if ENV['RAILS_ENV']=='production' then
      puts "Cannot run in produnction mode."
      next
    end
    Dir.chdir(Rails.root.join('public')) do
      fname = "unify2.6.2.tgz"
      `wget http://corp.yuknak.net/download/#{fname}`
      `tar xvzf #{fname} 1>&2`
    end 
  end
end
