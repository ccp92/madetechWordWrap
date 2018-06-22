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

    describe "With a line length limit that requires more than one new line" do
      it "Returns the string with new lines inserted" do
        expect(Wordwrap.wrap("longword", 3)).to eq("lon\ngwo\nrd")
      end
    end
  end

  context "With a string with content and spaces" do
    describe "With a line length limit greater than the string length" do
      it "Returns the string unchanged" do
        expect(Wordwrap.wrap("Another test", 13)).to eq("Another test")
      end
    end

    describe "With a line length limit after the space" do
      it "Returns the string with a line break at the space" do
        expect(Wordwrap.wrap("long word", 5)).to eq("long\nword")
      end
    end

    describe "With a line length limit on the space" do
      it "Returns the string with a line break at the space" do
        expect(Wordwrap.wrap("long word", 4)).to eq("long\nword")
      end
    end

    describe "With a line length limit in the second word" do
      it "Returns the string with a line break at the space" do
        expect(Wordwrap.wrap("long word", 6)).to eq("long\nword")
      end
    end

    describe "With multiple spaces and line breaks" do
      it "Returns the string on multiple lines" do
        expect(Wordwrap.wrap("long long word", 6)).to eq("long\nlong\nword")
      end
    end

    describe "With multiple spaces but only one line break" do
      it "Returns the string on two lines" do
        expect(Wordwrap.wrap("long long word", 10)).to eq("long long\nword")
      end
    end

    describe "With multiple spaces but only one line break" do
      it "Returns the string on two lines" do
        expect(Wordwrap.wrap("long long long word", 16)).to eq("long long long\nword")
      end
    end

    describe "With multiple spaces but only one line break" do
      it "Returns the string on two lines" do
        expect(Wordwrap.wrap("long long long word", 10)).to eq("long long\nlong word")
      end
    end
  end
end
