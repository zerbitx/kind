FROM docker:19.03.8-dind
COPY ./bin/kind /bin
RUN mkdir /root/.kube
ENV KUBECONFIG /root/.kube/config
CMD ["kind", "create", "cluster"]
