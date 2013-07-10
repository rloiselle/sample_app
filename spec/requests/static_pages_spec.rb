require 'spec_helper'

describe "Static pages" do

  subject {page}

  describe "Home page" do
    before { visit root_path }
    # collapsed it and expect statement by using subject {page} above
    # it "should have the content 'Sample App'" do
      # visit is a capyabara function
      # not necessary if before statement above
        # visit root_path   #'/static_pages/home'  testing route paths
      # page is a Capybara variable referring to the page
    # expect(page).to have_content('Sample App')
      it { should have_content('Sample App') }
      it { should have_title(full_title('')) } #variable title inserted by code in code/utitlities.rb
      it { should_not have_title('| Home') }

# Not required
    # it "should have the base title" do
    #   visit root_path   #'/static_pages/home'  testing route paths
    #   expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    # end

    # it "should not have a custom page title" do
    #   visit root_path   #'/static_pages/home'  testing route paths
    #   expect(page).not_to have_title('| Home')
    # end
  end

  describe "Help page" do
    before { visit help_path}
      it { should have_content('Help')}
      it { should have_title(full_title('Help'))}
  end


  describe "About page" do
    before { visit about_path }

    it { should have_content('About') }
    it { should have_title(full_title('About Us')) }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_content('Contact') }
    it { should have_title(full_title('Contact')) }
  end

end
