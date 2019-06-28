require './lib/DockingStation.rb'
describe DockingStation do
  #it { is_expected.to respond_to :release_bike } Check if there is a method
  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      station = DockingStation.new
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  describe '#release_bike' do
    it 'Message of broken bike' do
      bike = Bike.new
      bike.reported_broken(true)
      station = DockingStation.new
      station.dock(bike)
      expect {station.release_bike}.to raise_error 'Broken bike'
    end
  end

describe '#dock' do
  it 'If dock over 20 is full' do
    station = DockingStation.new
    20.times { station.dock(Bike.new)}
    expect {station.dock double(:bike)}.to raise_error 'Full dock'
  end
end

describe 'initialize' do
  it 'Checking default' do
    station = DockingStation.new
    expect(station.capacity).to eq 20
  end
end

describe '#release_bike' do
    let(:bike) { double :bike }
    it 'Message of broken bike' do
    allow(bike).to receive(:broken?).and_return(true)
    station = DockingStation.new
    station.dock(bike)
    expect {station.release_bike}.to raise_error 'Broken bike'
    end
  end
end
