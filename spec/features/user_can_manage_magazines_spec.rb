require 'spec_helper'

feature 'User can manage magazines' do
  scenario 'by adding a magazine with the name of the magazine' do
    visit '/'
    click_on 'Add a Magazine'

    fill_in 'Name', with: 'Us Weekly'
    click_on 'Add Magazine'

    expect(page).to have_content 'Us Weekly'
  end

  pending 'by adding a magazine with the name and publication date of the magazine' do
    visit '/'
    click_on 'Add a Magazine'

    fill_in 'Name', with: 'Cosmo'
    fill_in 'Publication Date', with: '7/1/2014'
    click_on 'Add Magazine'
  end
end