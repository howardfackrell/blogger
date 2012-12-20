require 'spec_helper'


describe "create a new article" do
  context "when I am on the index page" do
    context "create new article" do

      let (:title) do "Article Title" end
      let (:body) do "Article Body" end

      it "takes me to a magical lplace where I can make articles" do
        visit "/articles"
        sleep 1
        click_link "Create an Article"
        sleep 1
        fill_in "Title", with: title
        fill_in "Body", with: body
        click_button "Create Article"

        title_text = page.find(:xpath, '//h1').text
        sleep 4
        expect(title_text).to eq "Article Title"
      end
    end
  end
end