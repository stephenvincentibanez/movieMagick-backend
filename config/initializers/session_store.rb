if Rails.env == "production"
    Rails.application.config.session_store :cookie_store, key: "_movie_magick_app", domain: "https://movie-magick.herokuapp.com"
else
    Rails.application.config.session_store :cookie_store, key: "_movie_magick_app"
end 