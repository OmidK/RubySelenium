describe 'QA_1234_Login' do
	it 'logs in to starzplay' do
		driver = Selenium::WebDriver.for :firefox
		driver.get 'http://www.starzplay.com'

		home_page = HomePage.new(driver)
		# expect(0).to eq(0)
		driver.close
		
	end
end