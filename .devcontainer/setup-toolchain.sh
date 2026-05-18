#!/bin/bash
set -euo pipefail

############
# TODO: try with kindlepw5-5.16.2.1.1.tar.gz
KINDLE_SDK_URL="https://github.com/Sighery/kindle-sdk/releases/download/build-20260325/scribe1-5.17.3.tar.gz"
KINDLE_SDK_SHA="8d80e019cc64826822c002712bf44e5131e8f64853a647c0cbb8a2fea82b42dd"
############

sdk_filename="${KINDLE_SDK_URL##*/}"
download_path="/tmp/${sdk_filename}"
if ! [[ -f "${download_path}" ]]; then
	wget -q --show-progress --progress=bar:force:noscroll \
		-O "/tmp/${sdk_filename}" \
		"${KINDLE_SDK_URL}"
fi

downloaded_sha=$(sha256sum "${download_path}" | awk '{print $1}')
if [[ "${downloaded_sha}" != "${KINDLE_SDK_SHA}" ]]; then
	echo "checksum mismatch: expected ${KINDLE_SDK_SHA} got ${downloaded_sha}"
	exit 1
fi


set -x

tar -xf "${download_path}" -C /opt
ln -s /opt/x-tools ~vscode/x-tools
