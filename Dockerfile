FROM tensorflow/tensorflow:devel

RUN apt-get -yq update && apt-get -yqq install ssh vim

ARG SSH_PRIVATE_KEY
RUN mkdir ~/.ssh/
RUN echo "${SSH_PRIVATE_KEY}" > ~/.ssh/id_rsa
RUN chmod 600 ~/.ssh/id_rsa
RUN ssh-keyscan bitbucket.org >> ~/.ssh/known_hosts
# Print SSH_PRIVATE_KEY (for test)
RUN echo "${SSH_PRIVATE_KEY}"
