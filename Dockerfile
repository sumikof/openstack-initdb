FROM mariadb:bionic
# Define environment variables.

ADD entrypoint.sh /entrypoint.sh
RUN chmod 777 /entrypoint.sh

# Define default command
CMD ["/entrypoint.sh"]
