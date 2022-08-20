require 'functions'

describe SortingAlgorithms do 
    context 'given a simple array' do
        it "performs a bubble sort" do
            expect(SortingAlgorithms.bubble([3,1,4,2])).to eq([1,2,3,4])
        end
        it "performs a selection sort" do
            expect(SortingAlgorithms.selection([3,1,4,2])).to eq([1,2,3,4])
        end
        it "performs an insertion sort" do
            expect(SortingAlgorithms.insertion([3,1,4,2])).to eq([1,2,3,4])
        end
    end
end

