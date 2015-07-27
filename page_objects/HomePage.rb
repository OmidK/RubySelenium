require 'Page-object'

class HomePage
	include PageObject

  div :logo, class: 'logo'
  link :featured, id: 'Featured'
  link :originals, id: 'Originals'
  link :movies, id: 'Movies'
  link :free_episodes, id: 'FreeEpisodes'
  text_field :search, id: 'searchTerm'
  div :submenu, id: 'submenu'
  link :submenu_next, id: 'foo3_next'
  link :submenu_previous, id: 'foo3_prev'
  # image(:highlighted_submenu, id: 'fade_effect_img')
end													