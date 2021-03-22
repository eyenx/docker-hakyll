	
FROM	haskell
LABEL	org.opencontainers.image.authors="Toni Tauro <eye@eyenx.ch>"
ENV VERSION=4.14.0.0
RUN	apt update \
	&& apt install -y cabal-install \
	&& cabal update \
	&& cabal install hakyll-${VERSION} \
	&& rm -rf /var/lib/apt/lists \
	&& rm -rf /var/cache/apt
ENTRYPOINT	["hakyll-init"]
