describe 'Login' do
	it 'logs in' do
		driver = Selenium::WebDriver.for :firefox
		driver.get 'http://www.starzplay.com'
		# binding.pry
		# expect(0).to eq(0)
	end
end