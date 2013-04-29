require 'spec_helper'

describe Lending do
  describe 'database schema' do
    it { should have_db_column(:user_id)    .of_type(:integer) }
    it { should have_db_column(:book_id)    .of_type(:integer) }
    it { should have_db_column(:started_at) .of_type(:datetime) }
    it { should have_db_column(:finished_at).of_type(:datetime) }
    it { should have_db_column(:created_at) .of_type(:datetime).with_options(null: false) }
    it { should have_db_column(:updated_at) .of_type(:datetime).with_options(null: false) }
  end

  describe 'relationships' do
    it { should belong_to(:user) }
    it { should belong_to(:book) }
  end

  describe 'getter methods' do
    it { should respond_to(:user_id) }
    it { should respond_to(:book_id) }
    it { should respond_to(:started_at) }
    it { should respond_to(:finished_at) }
    it { should respond_to(:created_at) }
    it { should respond_to(:updated_at) }
  end

  describe 'setter methods' do
    it { should respond_to(:user_id=) }
    it { should respond_to(:book_id=) }
    it { should respond_to(:started_at=) }
    it { should respond_to(:finished_at=) }
    it { should respond_to(:created_at=) }
    it { should respond_to(:updated_at=) }
  end

  describe 'mass assignment' do
    it { should     allow_mass_assignment_of(:user_id) }
    it { should     allow_mass_assignment_of(:book_id) }
    it { should     allow_mass_assignment_of(:started_at) }
    it { should     allow_mass_assignment_of(:finished_at) }
    it { should_not allow_mass_assignment_of(:created_at) }
    it { should_not allow_mass_assignment_of(:updated_at) }
  end

  it { should respond_to(:finished?) }

  context 'given no finished_at' do
    subject { FactoryGirl.create :lending, finished_at: nil }
    its(:finished?) { should == false }
  end

  context 'given finished_at' do
    subject { FactoryGirl.create :lending, finished_at: Time.now.utc }
    its(:finished?) { should == true }
  end
end
