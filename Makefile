.SILENT:

template:
	helm template homepage charts/homepage --output-dir .cache/charts \
		--set config.s3Fetcher.enabled=true \
		--set appEntryBuilder.enabled=true
