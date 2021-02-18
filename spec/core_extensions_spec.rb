require "spec_helper"

describe Array do
    context "#all_empty?" do
      it "returns true if all elements of the Array are empty" do
        expect(["", "", ""].all_empty?).to be_truthy
      end
   
      it "returns false if some of the Array elements are not empty" do
        expect(["", 1, "", Object.new, :a].all_empty?).to be_falsey
      end
   
      it "returns true for an empty Array" do
        expect([].all_empty?).to be_truthy
      end
    end

    context "#all_same?" do
        it "returns true if all elements of the Array are the same" do
          expect(["A", "A", "A"].all_same?).to be_truthy
        end
       
        it "returns false if some of the Array elements are not the same" do
          expect(["", 1, "", Object.new, :a].all_same?).to be_falsey
        end
       
        it "returns true for an empty Array" do
          expect([].all_same?).to be_truthy
        end
    end

    context "#anyempty>" do 
        it "should return true if any of the Array elements are empty" do
            expect(["A", 1, ""].any_empty?).to be_truthy 
        end

        it "should return false if none of the Array elements are empty" do
            expect(["a", "b", "c", 1, 2,3].any_empty?).to be_falsey 
        end
    end

    context "#noneempty?" do 
        it "should return true if all elements are empty" do 
            expect([].none_empty?).to be_truthy
        end

        it "should return true if none of the Array elements are empty" do
            expect(["a", "b", "c", 1, 2,3].none_empty?).to be_truthy 
        end
    end

end