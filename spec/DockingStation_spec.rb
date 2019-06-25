require './lib/DockingStation.rb'
describe DockingStation do
  it 'release_bike' do
    expect(release_bike).to eq "Please take your bike, enjoy the ride"
  end
end
