json.array! @events do |event|
  json.id event.id
  json.title event.title
  json.datetime event.datetime
  json.image event.image
  json.content event.content
  json.tag event.tag
  json.name event.name
  json.user_sign_in current_user
end