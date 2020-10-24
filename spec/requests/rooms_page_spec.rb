require 'spec_helper'
require 'pry'

describe "room pages" do

  subject { page }

  describe "visiting the room's page" do

    let(:test_room) { FactoryGirl.create(:room) }
    #room --> room_num:5,status:true

    describe "should display the correct informations" do
      before do
        visit room_path(test_room)
      end
      it { should have_selector('title', text: " | Room 5" ) }
      it { should have_selector('h5', text: "available" ) }
    end

  end

  describe "visiting index of rooms page" do
    let(:view_type) { FactoryGirl.create(:view_type) }
    let(:room_type) { FactoryGirl.create(:room_type) }
    let(:test_room) { FactoryGirl.create(:room)}

    describe "in admin mode" do
      before do
        visit admin_path
        visit rooms_path
      end
      it { should have_selector('a', text: "Create a new room") }
    end

    describe "in client mode" do
      before do
        visit rooms_path
      end
      it { should_not have_selector('a', text: "Create a new room") }
    end

    # describe "it should be at the correct page & display rooms"do
    #   subject { page }
    #   before do
    #     visit rooms_path
    #   end
    #   it { should have_selector('h6', text: "Room #5") }
    #   it { should have_selector('h6', text: "Room type: single bed") }
    #   it { should have_selector('h6', text: "Outside view: ocean") }
      # describe "when clicking on make a reservation! button" do
      #   before { click_button "Make a reservation!" }
      #   it { should have_selector('title', text: "New reservation") }
      # end
    # end
  end

end
