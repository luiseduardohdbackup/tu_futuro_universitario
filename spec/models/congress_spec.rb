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

      it 'Without a user' do
        congress.user = nil
        congress.should_not be_valid
      end
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

  context 'Instance Methods' do
    describe 'set_address' do
      context 'When there is no default address' do
        it 'Assigns the text addres to the address' do
          congress.address = 'An address'
          congress.text_address = 'Some interesting address'
          congress.set_address.should eql('Some interesting address')
          congress.address.should eql('Some interesting address')
        end
      end
      context 'When there is a default address' do
        it 'Does not assigns the text addres to the address' do
          congress.address = 'auditorio_luis_elizondo'
          congress.set_address
          congress.address.should eql('auditorio_luis_elizondo')
        end
      end
    end
  
    describe 'text_address?' do
      it 'Returns true if there is a text address' do
        congress.text_address = 'Address'
        congress.text_address?.should be_true
      end
      it 'Returns false if there is no text address' do
        congress.text_address = ''
        congress.text_address?.should be_false
      end
    end

    # describe 'default_address?' do
    #   context 'Returns true with a default address' do
    #     congress = Factory(:congress)
    #     congress.address = 'auditorio_luis_elizondo'
    #     congress.default_address?.should be_true
    #   end

    #   context 'Returns true with a default address' do
    #     congress.address = 'an address'
    #     congress.default_address?.should be_false
    #   end
    # end

  end
end
