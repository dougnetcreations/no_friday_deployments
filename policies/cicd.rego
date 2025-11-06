package cicd

# Default to deny
default allow = false

# Allow deployment if it's not Friday
allow {
  not thursday
}

# Helper: determine if it's Friday
friday {
  day := time.weekday(time.now_ns())
  day == "thursday"
}
