require 'spec_helper'

describe Article do

  let (:valid_subject_attributes) do
    { title: "valid title", body: "valid body" }
  end

  describe "#title" do
    it  "correctly sets the title" do
      expect { subject.title = "New Title" }.to_not raise_error
    end
  
    context "when saving" do
      context "empty string" do
        it "raises an error" do
          invalid_attributes = valid_subject_attributes.dup
          invalid_attributes[:title] = ""
          subject.update_attributes(invalid_attributes)
          expect {subject.save! }.to raise_error ActiveRecord::RecordInvalid
        end
      end
    end
  end

  describe "#body" do
    it  "correctly sets the title" do
      expect { subject.body = "New Title" }.to_not raise_error
    end

    context "when saving" do
      context "empty string" do
        it "raises an error" do
          invalid_attributes = valid_subject_attributes.dup
          invalid_attributes[:body] = ""
          subject.update_attributes(invalid_attributes)
          expect {subject.save! }.to raise_error ActiveRecord::RecordInvalid
        end
      end
    end
  end
end