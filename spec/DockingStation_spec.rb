require './lib/DockingStation.rb'
describe DockingStation do
  it { is_expected.to respond_to :release_bike } #Check if there is a method
    it 'releases a bike' do
      bike = subject.release_bike
      expect(bike).to be_working
    end
  it { is_expected.to respond_to(:dock_bike).with(1).argument }
  it 'docks some bike' do
    bike = Bike.new
    expect(subject.dock_bike(bike)).to eq bike
  end
  it { is_expected.to respond_to(:bike) }
  it 'return docked bikes' do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.bike).to eq bike
  end 
end
