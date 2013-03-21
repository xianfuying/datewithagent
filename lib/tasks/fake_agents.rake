namespace :db do
  desc "Create fake agents"
  task fake_agents: :environment do
    10.times do |index|
      Agent.create!(name: "AGENT#{index}")
    end
  end
end