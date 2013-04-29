require 'spec_helper'

describe Book do
  describe 'database schema' do
    it { should have_db_column(:title)         .of_type(:string) }
    it { should have_db_column(:isbn)          .of_type(:string) }
    it { should have_db_column(:page_count)    .of_type(:integer) }
    it { should have_db_column(:year)          .of_type(:integer) }
    it { should have_db_column(:category)      .of_type(:string) }
    it { should have_db_column(:publisher_name).of_type(:string) }
    it { should have_db_column(:author_name)   .of_type(:string) }
    it { should have_db_column(:created_at)    .of_type(:datetime).with_options(null: false) }
    it { should have_db_column(:updated_at)    .of_type(:datetime).with_options(null: false) }
  end

  describe 'relationships' do
    it { should have_many(:lendings) }
  end

  describe 'getter methods' do
    it { should respond_to(:title) }
    it { should respond_to(:isbn) }
    it { should respond_to(:page_count) }
    it { should respond_to(:year) }
    it { should respond_to(:category) }
    it { should respond_to(:publisher_name) }
    it { should respond_to(:author_name) }
    it { should respond_to(:created_at) }
    it { should respond_to(:updated_at) }
  end

  describe 'setter methods' do
    it { should respond_to(:title=) }
    it { should respond_to(:isbn=) }
    it { should respond_to(:page_count=) }
    it { should respond_to(:year=) }
    it { should respond_to(:category=) }
    it { should respond_to(:publisher_name=) }
    it { should respond_to(:author_name=) }
    it { should respond_to(:created_at=) }
    it { should respond_to(:updated_at=) }
  end

  describe 'mass assignment' do
    it { should     allow_mass_assignment_of(:title) }
    it { should     allow_mass_assignment_of(:isbn) }
    it { should     allow_mass_assignment_of(:page_count) }
    it { should     allow_mass_assignment_of(:year) }
    it { should     allow_mass_assignment_of(:category) }
    it { should     allow_mass_assignment_of(:publisher_name) }
    it { should     allow_mass_assignment_of(:author_name) }
    it { should_not allow_mass_assignment_of(:created_at) }
    it { should_not allow_mass_assignment_of(:updated_at) }
  end

  it { should respond_to(:at_lending?) }

  context 'given an unfinished lending' do
    let(:book)    { FactoryGirl.create :book }
    let!(:lending) { FactoryGirl.create :lending, book_id: book.id, finished_at: nil }
    subject { book }
    its(:at_lending?) { should == true }
  end

  context 'given a finished lending' do
    let(:book)    { FactoryGirl.create :book }
    let!(:lending) { FactoryGirl.create :lending, book_id: book.id, finished_at: Time.now.utc }
    subject { book }
    its(:at_lending?) { should == false }
  end
end
