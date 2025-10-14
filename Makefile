init:
	rm -rf .git
	git init
ifdef GIT
	git remote add origin $(GIT)
endif
	fvm use stable -p
	fvm flutter create . --platforms android,ios
	fvm flutter pub add \
		cupertino_icons \
		easy_localization \
		dio \
		retrofit \
		json_annotation \
		copy_with_extension \

		flutter_riverpod \
		auto_route \
		build_runner \

		sembast \
		path_provider \
		path \
		logger \
		flutter_svg \
		dev:flutter_lints \

		dev:build_runner \
		dev:retrofit_generator \
		dev:json_serializable \
		dev:copy_with_extension_gen \
		dev:flutter_gen_runner \
		dev:auto_route_generator

setup:
	fvm install
	fvm flutter pub get

mason-get:
	fvm dart pub global run mason_cli:mason get

generate:
	fvm dart run build_runner build --delete-conflicting-outputs

flavorizr:
	fvm dart run flutter_flavorizr

localization:
	fvm dart run easy_localization:generate \
		--output-dir=lib/core/localization/generated \
		--output-file=localizations.g.dart \
		--format=json \
		--source-dir=assets/translations
	fvm dart run easy_localization:generate -f keys \
		--output-dir=lib/core/localization/generated \
		--output-file=locale_keys.g.dart \
		--source-dir=assets/translations

clean:
	fvm flutter clean
	fvm flutter pub get
	@make generate
	@make localization
