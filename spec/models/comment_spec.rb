require 'spec_helper'

describe Comment do

  let (:valid_attributes) do
    { author: "valid author", body: "valid body" }
  end

  describe "#author" do

    it "sets without error" do
      expect {subject.author = "author name"}.to_not raise_error
    end

    context "when saving" do
      it "fails if author is not present" do
        invalid_attributes = valid_attributes.dup
        invalid_attributes[:author] = ""
        subject.update_attributes invalid_attributes
        expect { subject.save! }.to raise_error
      end
    end
  end

  describe "#body" do

    it "sets without error" do
      expect {subject.body = "body"}.to_not raise_error
    end

    context "when saving" do
      it "fails if author is not present" do
        invalid_attributes = valid_attributes.dup
        invalid_attributes[:body] = ""
        subject.update_attributes invalid_attributes
        expect { subject.save! }.to raise_error
      end
    end
  end

end