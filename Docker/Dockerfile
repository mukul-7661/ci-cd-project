FROM restreamio/gstreamer:2022-12-12T14-46-07Z-prod-dbg

USER root

# ARG ssh_prv_key
# ARG ssh_pub_key

RUN apt-get update -y
RUN apt-get install -y git curl vim sshpass wget

# Authorize SSH Host
# RUN mkdir -p /root/.ssh && \
#     chmod 0700 /root/.ssh && \
    # ssh-keyscan github.com > /root/.ssh/known_hosts

# Add the keys and set permissions
# RUN echo "$ssh_prv_key" > /root/.ssh/id_rsa && \
#     echo "$ssh_pub_key" > /root/.ssh/id_rsa.pub && \
#     chmod 600 /root/.ssh/id_rsa && \
#     chmod 600 /root/.ssh/id_rsa.pub

RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt -y install nodejs
RUN npm i -g pm2 yarn

RUN git clone https://github.com/mukul7661/ci-cd-project.git

WORKDIR /ci-cd-project
RUN git checkout master
RUN yarn
# RUN chmod +x *.bash
# RUN yarn start


# RUN pm2 start "yarn start" --name "ci-cd"

# RUN git config --global --add safe.directory /ci-cd-project

CMD ["/start-app.bash"]

# CMD ["sleep","infinity"]