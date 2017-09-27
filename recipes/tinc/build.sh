#!/bin/bash
#./configure --prefix="${PREFIX}" --enable-uml --enable-vde --enable-jumbograms
./configure --prefix="${PREFIX}" \
		--with-zlib-include="${RECIPE_DIR}/include/zlib" \
                --with-lzo-include="${RECIPE_DIR}/include/lzo" \
                --with-openssl-include="${RECIPE_DIR}/include" \
	        --enable-uml \
                --enable-jumbograms
make
make install
make check
