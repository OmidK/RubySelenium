require 'Page-object'

class HomePage
	include PageObject

  div :logo, class: 'logo'

  #tabs
  link :featured, id: 'Featured'
  link :originals, id: 'Originals'
  link :movies, id: 'Movies'
  link :free_episodes, id: 'FreeEpisodes'
  
  #search bar
  text_field :search, id: 'searchTerm'
end													