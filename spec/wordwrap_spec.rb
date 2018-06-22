require "wordwrap"

describe Wordwrap do
  context "With an empty string" do
    describe "With a 0 column length limit" do
      it "Returns the empty string" do
        expect(Wordwrap.wrap("",0)).to eq("")
      end
    end

    describe "With a larger column length limit" do
      it "Returns the empty string" do
        expect(Wordwrap.wrap("",0)).to eq("")
      end
    end
  end

  context "With a string with content and no spaces" do
    describe "With a line length limit greater than the string length" do
      it "Returns the string unchanged" do
        expect(Wordwrap.wrap("Testing", 8)).to eq("Testing")
      end
    end

    describe "With a line length limit less than the string length" do
      it "Returns the string with a new line inserted" do
        expect(Wordwrap.wrap("word", 2)).to eq("wo\nrd")
      end
    end
  end

  context "With a string with content and spaces" do
    describe "With a line length limit greater than the string length" do
      it "Returns the string unchanged" do
        expect(Wordwrap.wrap("Another test", 13)).to eq("Another test")
      end
    end
  end
end
