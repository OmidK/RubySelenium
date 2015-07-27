describe 'SPW-264' do
	it 'Verifies home page' do
		@driver.get 'http://www.starzplay.com'
		home_page = HomePage.new @driver
		expect(home_page.featured_element).to exist
		expect(home_page.originals_element).to exist
		expect(home_page.movies_element).to exist
		expect(home_page.free_episodes_element).to exist
		expect(home_page.search_element).to exist
		expect(home_page.submenu_element).to exist
		# TODO make it wait for submenu to scroll before trying again
		home_page.submenu_next
		home_page.submenu_next
		home_page.submenu_next
		home_page.submenu_next
		home_page.submenu_previous
		home_page.submenu_previous
		home_page.submenu_previous
		# expect(home_page.submenu_next).to eq('ok')
		# TODO get previous to work after clicking next
		# expect(home_page.previous).to eq('ok')		
	end
end