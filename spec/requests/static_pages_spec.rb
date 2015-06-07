require 'spec_helper'

describe "StaticPages" do ###このdescribeはコメントみたいなもの。メモ書き

    subject { page } ### it と言ったらpage !!

    describe "Home page" do

        before { visit root_path }

        it { should have_content 'Sample Coedo'}
        it { should have_title( full_title("") ) }
        # it "should have the content 'Sample Coedo'" do
        #     expect(page).to have_content('Sample Coedo')
        # end

        # it "should have the right title" do
        #     expect(page).to have_title("Ruby on Rails Tutorial Sample Coedo")
        # end
    end

    describe "About page" do

        before { visit about_path }

        it { should have_content 'About Us'}
        it { should have_title( full_title("About") ) }
        # it "should have the content 'About Us'" do
        #     expect(page).to have_content('About Us')
        # end

        # it "should have the right title" do
        #     expect(page).to have_title("Ruby on Rails Tutorial Sample Coedo | About")
        # end
    end

    describe "Help page" do

        before { visit help_path }

        it { should have_content 'Help'}
        it { should have_title(full_title("Help")) }
        # it "should have the content 'Help'" do
        #     expect(page).to have_content('Help')
        # end

        # it "should have the right title" do
        #     expect(page).to have_title("Ruby on Rails Tutorial Sample Coedo | Help")
        # end
    end

    describe "Contact page" do

        before { visit contact_path }

        it { should have_content 'Contact'}
        it { should have_title(full_title("Contact")) }
        # it "should have the content 'Contact'" do
        #     expect(page).to have_content('Contact')
        # end

        # it "should have the title 'Contact'" do
        #     expect(page).to have_title("Ruby on Rails Tutorial Sample Coedo | Contact")
        # end
    end

end
