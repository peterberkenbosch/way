require 'helpers'

describe Way do
  class Test; include Way; end
  subject { Test.new }

  describe '#show_partial_path?' do
    context 'when a valid controller is passed' do
      context 'and _way is set' do
        let(:controller) do 
          stub('controller', :params => { '_way' => true })
        end

        it 'returns true' do
          subject.show_partial_path?(controller).should be_true
        end
      end
      
      context 'and _way is not set' do
        let(:controller) do 
          stub('controller', :params => {})
        end

        it 'returns false' do
          subject.show_partial_path?(controller).should be_false
        end
      end
    end

    context 'when an invalid controller is passed' do
      context 'that is nil' do
        let(:controller) { nil }

        it 'returns false' do
          subject.show_partial_path?(controller).should be_false
        end
      end

      context 'with no params' do
        let(:controller) { stub('controller') }

        it 'returns false' do
          subject.show_partial_path?(controller).should be_false
        end
      end
    end
  end
end
