FROM quay.io/compose/transporter:v0.2.0

# Add our user and group first to make sure their IDs get assigned consistently
RUN groupadd -r app && useradd -r -g app app

# Create a directory where the application code should live and set it as the
# current working directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Copy the application source code and run the optional build step.
COPY . /usr/src/app

# Change the ownership of the application code and switch to the unprivileged
# user.
RUN chown -R app:app /usr/src/app
USER app
