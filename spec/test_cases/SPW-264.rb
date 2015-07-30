describe 'SPW-264' do
	it 'Verifies home page' do
		@driver.get 'http://www.starzplay.com'
		home_page = HomePage.new @driver
		# tabs
		expect(home_page.featured_element).to exist
		expect(home_page.originals_element).to exist
		expect(home_page.movies_element).to exist
		expect(home_page.free_episodes_element).to exist

		#search bar
		expect(home_page.search_element).to exist

		# sub menu carousel scroll
		expect(home_page.submenu_element).to exist
		# TODO wait for scroll to finish
		
		orig_highlighted_submenu = home_page.highlighted_submenu
		p orig_highlighted_submenu
		expect(home_page.submenu_next).to eq('ok')
		p home_page.highlighted_submenu
		# TODO should fail
		expect(home_page.highlighted_submenu).to eq(orig_highlighted_submenu)

		# expect(home_page.submenu_previous).to eq('ok')


	end
end