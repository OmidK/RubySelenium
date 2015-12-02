describe 'HomePage' do
	it 'should navigational links' do
		@driver.get 'http://www.starzplay.com'
		home_page = HomePage.new @driver

		# navigation links
		expect(home_page.featured_element).to exist
		expect(home_page.originals_element).to exist
		expect(home_page.movies_element).to exist
		expect(home_page.free_episodes_element).to exist
	end
end