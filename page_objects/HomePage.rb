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
 
  #submenu carousel 
  div :submenu, id: 'submenu'
  link :submenu_next, id: 'foo3_next'
  link :submenu_previous, id: 'foo3_prev'
  span :highlighted_submenu, id: 'fade_effect_span'
end													