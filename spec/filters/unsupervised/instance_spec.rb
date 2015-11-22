require 'spec_helper'

describe Weka::Filters::Unsupervised::Instance do

  [
    :NonSparseToSparse,
    :Randomize,
    :RemoveDuplicates,
    :RemoveFolds,
    :RemoveFrequentValues,
    :RemoveMisclassified,
    :RemovePercentage,
    :RemoveRange,
    :RemoveWithValues,
    :Resample,
    :ReservoirSample,
    :SparseToNonSparse,
    :SubsetByExpression
  ].each do |class_name|
    it "defines a class #{class_name}" do
      expect(described_class.const_defined?(class_name)).to be true
    end
  end
end