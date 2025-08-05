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
		get_it \
		injectable \
		flutter_riverpod \
		auto_route \
		build_runner \
		firebase_crashlytics \
		firebase_analytics \
		firebase_core \
		sembast \
		path_provider \
		path \
		logger \
		flutter_svg \
		dev:flutter_lints \
		dev:injectable_generator \
		dev:build_runner \
		dev:retrofit_generator \
		dev:json_serializable \
		dev:copy_with_extension_gen \
		dev:flutter_gen_runner \
		dev:auto_route_generator

setup:
	fvm install
	fvm flutter pub get

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

firebase:
ifeq (, $(shell which flutterfire))
	$(error "Please install flutterfire cli")
endif
ifndef APP
	$(error "Missing 'APP=xxx', where 'xxx' is app name (like myapp_flutter)")
endif
ifndef ENV
	$(error "Missing 'ENV=xxx', where 'xxx' is target env (like dev)")
endif
	fvm dart run flutterfire config \
		--project=${APP}-$(ENV) \
		--out=lib/firebase_options_$(ENV).dart \
		--ios-bundle-id=com.example.${APP}.$(ENV) \
		--ios-out=ios/flavors/$(ENV)/GoogleService-Info.plist \
		--android-package-name=com.example.${APP}.$(ENV) \
		--android-out=android/app/src/$(ENV)/google-services.json