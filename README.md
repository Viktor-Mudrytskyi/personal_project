# personal_project
 Project for self-improvement

# Logger
 to turn off logs printed by Logger, change its level to nothing
 Logger.level=Level.nothing;

# Build dev
flutter build apk --release --flavor dev --dart-define FLAVOR=dev

# Build prod
flutter build apk --release --flavor dev --dart-define FLAVOR=prod

# Build runner
dart run build_runner build --delete-conflicting-outputs