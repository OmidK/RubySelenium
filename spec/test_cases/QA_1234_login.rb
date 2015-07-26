describe 'QA_1234_Login' do
	it 'logs in to starzplay' do
		# TODO move out & change to chrome
		driver = Selenium::WebDriver.for :firefox
		driver.get 'http://www.starzplay.com'

		home_page = HomePage.new driver
		expect(home_page.featured_element).to exist
		expect(home_page.originals_element).to exist
		expect(home_page.movies_element).to exist
		expect(home_page.free_episodes_element).to exist
		driver.close		
	end
end