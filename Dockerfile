	
FROM	haskell
LABEL	org.opencontainers.image.authors="Toni Tauro <eye@eyenx.ch>"
RUN	apt update \
.       && apt full-upgrade -y \
	&& apt install -y cabal-install \
	&& cabal update \
	&& cabal install hakyll \
	&& rm -rf /var/lib/apt/lists \
	&& rm -rf /var/cache/apt
ENTRYPOINT	["hakyll-init"]
