build-ethers-providers:
	rm -rf target/ethers_providers/*
	mkdir -vp target/ethers_providers
	rsync packages/providers/* target/ethers_providers \
		-r \
		--exclude "node_modules/**"
	tar -zcvf target/ethers_providers.tar.gz \
		-C target/ethers_providers .
