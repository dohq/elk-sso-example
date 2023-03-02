ARG ELK_VER

FROM docker.elastic.co/elasticsearch/elasticsearch:${ELK_VER}

ARG ELK_KC_CLIENT_SECRET

RUN /bin/bash -c "echo ${ELK_KC_CLIENT_SECRET} | bin/elasticsearch-keystore add xpack.security.authc.realms.oidc.keycloak.rp.client_secret -xf"
