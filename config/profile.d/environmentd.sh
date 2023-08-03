#To apply environement variables from ~/.config/environment.d/*.conf
# export $(run-parts /usr/lib/systemd/user-environment-generators/30-systemd-environment-d-generator)

export `/usr/lib/systemd/user-environment-generators/30-systemd-environment-d-generator | xargs`

