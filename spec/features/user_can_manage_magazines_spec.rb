require 'spec_helper'

feature 'User can manage magazines' do
  scenario 'by adding a magazine with the name of the magazine' do
    create_magazine

    expect(page).to have_content 'Us Weekly'
  end

  scenario 'by clicking on the magazine name to view its profile page' do
    visit '/'
    create_magazine
    click_on 'Us Weekly'

    expect(page).to have_content 'Us Weekly'
  end

  pending 'by adding a magazine with the name and publisher of the magazine' do
    visit '/'
    click_on 'Add a Magazine'

    fill_in 'Name', with: 'Cosmo'
    fill_in 'Publisher', with: 'Time Inc.'
    click_on 'Add Magazine'
  end

  def create_magazine
    visit '/'
    click_on 'Add a Magazine'

    fill_in 'Name', with: 'Us Weekly'
    click_on 'Add Magazine'
  end
end