#################### LOG IN ########################
require 'rails_helper'
require 'spec_helper'
require 'capybara/rspec'

describe "users can sign in", :type => :feature do
    context 'signup' do
        it 'signs up a new user' do
            visit'/login'
            fill_in "user_email", :with => "kieska@test.com"
            fill_in "user_password", :with => "JesusChrist2022" 
            click_button "Log in"
            expect(page).to have_content "Signed in successfully."
        end
    end
end

describe "Intervention Page Restrictions", :type => :feature do
    context 'user' do
        it 'cannot go to intervention page if not logged in' do
            visit '/interventions/new'
            expect(page).to have_content "You need to be logged in"
        end
        it 'cannot go to intervention page if logged in as non-employee' do
            visit '/login'
            fill_in "user_email", :with => "notemployee@user.com"
            fill_in "user_password", :with => "codeboxx2021"
            click_button "Log in"
            if ((expect(page).to have_content "Signed in successfully.") == true);
                visit '/interventions/new'
                expect(page).to have_content "Access Denied"
            end
        end
        it 'can reach the intervention page if logged in as employee' do
            visit '/login'
            fill_in "user_email", :with => "employee@user.com"
            fill_in "user_password", :with => "codeboxx2021"
            click_button "Log in"
            if ((expect(page).to have_content "Signed in successfully.") == true);
                visit '/interventions/new'
                expect(page).to have_content "Column ID (Not Required)"
            end
        end
    end
end

describe "BackOffice Page Restrictions", :type => :feature do
    context 'user' do
        it 'cannot go to BackOffice page if not logged in' do
            visit '/admin'
            expect(page).to have_content "Please Login to Continue.."
        end
        it 'cannot go to BackOffice page if logged in as non-admin' do
            visit '/login'
            fill_in "user_email", :with => "notadmin@user.com"
            fill_in "user_password", :with => "codeboxx2021"
            click_button "Log in"
            if ((expect(page).to have_content "Signed in successfully.") == true);
                visit '/admin'
                expect(page).to have_content "Access Denied, Administrators only!"
            end
        end
        it 'can reach the BackOffice page if logged in as admin' do
            visit '/login'
            fill_in "user_email", :with => "kieska@test.com"
            fill_in "user_password", :with => "JesusChrist2022!"
            click_button "Log in"
            if ((expect(page).to have_content "Signed in successfully.") == true);
                visit '/admin'
                expect(page).to have_content "Site Administration"
            end
        end
    end
end