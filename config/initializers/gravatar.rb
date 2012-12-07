GravatarImageTag.configure do |config|
  config.default_image = :mm # e.g. 'https://crm.crossroads.org.hk/assets/brief.png'   # Set this to use your own default gravatar image rather then serving up Gravatar's default image [ :identicon, :monsterid, :wavatar, 404 ].
  config.secure        = true # Set this to true if you require secure images on your pages.
end
