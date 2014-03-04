require 'spec_helper'

describe Ride do
  describe '.count_of_rides_user_has_joined' do

    context 'when there are no rides' do
      it 'returns 0' do
        expect(Ride.count_of_rides_user_has_joined).to eq 0
      end
    end

    context 'when there is one ride' do
      it 'returns 1' do
        Ride.create!
        expect(Ride.count_of_rides_user_has_joined).to eq 1
      end
    end

  end
end
