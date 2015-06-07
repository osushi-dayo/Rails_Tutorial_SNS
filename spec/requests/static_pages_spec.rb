require 'spec_helper'

describe "StaticPages" do ###このdescribeはコメントみたいなもの。メモ書き
    describe "Home page" do
        it "should have the content 'Sample Coedo'" do
            visit root_path
            expect(page).to have_content('Sample Coedo')
        end

        it "should have the right title" do
            visit root_path
            expect(page).to have_title("Ruby on Rails Tutorial Sample Coedo")
        end
    end

    describe "About page" do

        it "should have the content 'About Us'" do
            visit about_path
            expect(page).to have_content('About Us')
        end

        it "should have the right title" do
            visit about_path
            expect(page).to have_title("Ruby on Rails Tutorial Sample Coedo | About")
        end
    end

    describe "Help page" do
        it "should have the content 'Help'" do
            visit help_path
            expect(page).to have_content('Help')
        end

        it "should have the right title" do
            visit help_path
            expect(page).to have_title("Ruby on Rails Tutorial Sample Coedo | Help")
        end
    end

    describe "Contact page" do

        it "should have the content 'Contact'" do
            visit contact_path
            expect(page).to have_content('Contact')
        end

        it "should have the title 'Contact'" do
            visit contact_path
            expect(page).to have_title("Ruby on Rails Tutorial Sample Coedo | Contact")
        end
    end

end
