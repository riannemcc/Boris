require './lib/DockingStation.rb'
describe DockingStation do
  it { is_expected.to respond_to :release_bike } #Check if there is a method
    it 'releases a bike' do
      bike = subject.release_bike
      expect(bike).to be_working
    end
  it { is_expected.to respond_to(:dock_bike).with(1).argument }


  end
