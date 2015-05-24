require 'spec_helper'

describe "StaticPages" do ###このdescribeはコメントみたいなもの。メモ書き
    describe "Home page" do
        it "should have the content 'Sample Coedo'" do
            visit '/static_pages/home'
            expect(page).to have_content('Sample Coedo')
        end

        it "should have the right title" do
            visit '/static_pages/home'
            expect(page).to have_title("Ruby on Rails Tutorial Sample Coedo | Home")
        end
    end

    describe "About page" do

        it "should have the content 'About Us'" do
            visit '/static_pages/about'
            expect(page).to have_content('About Us')
        end

        it "should have the right title" do
            visit '/static_pages/about'
            expect(page).to have_title("Ruby on Rails Tutorial Sample Coedo | About")
        end
    end

    describe "Help page" do
        it "should have the content 'Help'" do
            visit '/static_pages/help'
            expect(page).to have_content('Help')
        end

        it "should have the right title" do
            visit '/static_pages/help'
            expect(page).to have_title("Ruby on Rails Tutorial Sample Coedo | Help")
        end
    end

end
