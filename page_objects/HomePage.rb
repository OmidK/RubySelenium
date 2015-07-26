require 'Page-object'

class HomePage
	include PageObject

  div(:logo, class: 'logo')
  link(:featured, id: 'Featured')
  link(:originals, id: 'Originals')
  link(:movies, id: 'Movies')
  link(:free_episodes, id: 'FreeEpisodes')

end