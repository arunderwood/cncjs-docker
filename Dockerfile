FROM balenalib/raspberrypi3-node:10-build as build

RUN npm install cncjs@latest --unsafe-perm

# The run time container that will go to devices
FROM balenalib/raspberrypi3-node:10-run

# Grab our node modules for the build step
COPY --from=build ./node_modules ./node_modules

CMD ["node_modules/cncjs/bin/cnc"]
