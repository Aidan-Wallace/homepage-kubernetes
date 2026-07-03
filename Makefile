.SILENT:

template:
	rm -rf .cache/charts
	helm template homepage charts/homepage --output-dir .cache/charts/cm \
		--set config.provider="configMap" \
		--set appEntryBuilder.enabled=true
	helm template homepage charts/homepage --output-dir .cache/charts/s3 \
		--set config.provider="s3" \
		--set appEntryBuilder.enabled=true
