# todo refactor as you go
def validate_username(username)
  return false if username.size == 0

  return false if username.size < 3

  return false if username.size > 30

  true
end
