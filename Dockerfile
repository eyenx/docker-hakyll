	
FROM	haskell:8-buster
LABEL	org.opencontainers.image.authors="Toni Tauro <eye@eyenx.ch>"
ENV	VERSION	4.14.0.0
RUN	cabal update \
	&& cabal install hakyll-${VERSION}
ENTRYPOINT	["hakyll-init"]
