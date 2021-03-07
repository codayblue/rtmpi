build: copy-mods run-build

copy-mods: pi-gen
	@rsync -a pi-gen-mods/ pi-gen/

pi-gen:
	@git clone https://github.com/RPi-Distro/pi-gen.git pi-gen

run-build:
	@sudo CLEAN=1 ./pi-gen/build-docker.sh