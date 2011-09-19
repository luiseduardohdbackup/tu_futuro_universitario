require 'spec_helper'

describe Congress do
  let(:congress){Factory(:congress)}

  context 'Validations' do
    context 'Congress is valid' do
      it 'With all the attributes' do
        congress.should be_valid
      end
    end
    context 'Congress is not valid' do

      it 'Without a description' do
        congress.description = nil
        congress.should_not be_valid
      end

      it 'Without a title' do
        congress.title = nil
        congress.should_not be_valid
      end

      it 'Without a start_date' do
        congress.start_date = nil
        congress.should_not be_valid
      end

      it 'With a start date before the current date' do
        congress.start_date = Time.now - 1.day
        congress.should_not be_valid
      end

      it 'With a duplicated title' do
        Factory(:congress, :title => 'Super title')
        congress.title = 'Super title'
        congress.should_not be_valid
      end

    end
  end

end
