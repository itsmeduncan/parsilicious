require 'spec_helper'

describe Parsilicious::Parser do

  describe "#initialization" do
    subject { Parsilicious::Parser.new('fooname') }

    it "should take a file name" do
      subject.file_name.should eql('fooname')
    end
  end

  describe "#parse" do
    it "should open the file_name using CSV" do
      parser = Parsilicious::Parser.new('file.csv')
      CSV.expects(:read).with('file.csv', headers: true, header_converters: :symbol).returns([])

      parser.parse
    end

    describe "single task for a single project" do
      before do
        @parser = Parsilicious::Parser.new ''
      end

      it "should parse the file into a Hash" do
        @parser.parse.should be_a(Hash)
      end

      it "should group the first level by the project name" do
        @parser.parse.keys.should eq(['Project 1'])
      end

      it "should projects should have groups of days" do
        @parser.parse["Project 1"].keys.should eql(['2011-11-28'])
      end

      it "should be fully parsed" do
        @parser.parse.should == {
          "Project 1" => {
            "2011-11-28" => {
              "time" => "13:06",
              "notes" => "foobarnote"
            }
          }
        }
      end
    end
  end

end
