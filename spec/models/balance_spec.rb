require 'spec_helper'

describe Balance do
  describe 'database schema' do
    it { should have_db_column(:user_id)   .of_type(:integer) }
    it { should have_db_column(:type)      .of_type(:string) }
    it { should have_db_column(:amount)    .of_type(:integer) }
    it { should have_db_column(:created_at).of_type(:datetime).with_options(null: false) }
    it { should have_db_column(:updated_at).of_type(:datetime).with_options(null: false) }
  end

  describe 'relationships' do
    it { should belong_to(:user) }
  end

  describe 'getter methods' do
    it { should respond_to(:user_id) }
    it { should respond_to(:type) }
    it { should respond_to(:amount) }
    it { should respond_to(:created_at) }
    it { should respond_to(:updated_at) }
  end

  describe 'setter methods' do
    it { should respond_to(:user_id=) }
    it { should respond_to(:type=) }
    it { should respond_to(:amount=) }
    it { should respond_to(:created_at=) }
    it { should respond_to(:updated_at=) }
  end

  describe 'mass assignment' do
    it { should     allow_mass_assignment_of(:user_id) }
    it { should     allow_mass_assignment_of(:amount) }
    it { should     allow_mass_assignment_of(:type) }
    it { should_not allow_mass_assignment_of(:created_at) }
    it { should_not allow_mass_assignment_of(:updated_at) }
  end
end
