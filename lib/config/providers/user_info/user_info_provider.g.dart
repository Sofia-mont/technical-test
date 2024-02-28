// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchUserInfoHash() => r'5a38310dd4f01ddf8b57ced3900da9a39a86aa11';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [fetchUserInfo].
@ProviderFor(fetchUserInfo)
const fetchUserInfoProvider = FetchUserInfoFamily();

/// See also [fetchUserInfo].
class FetchUserInfoFamily extends Family<AsyncValue<UserInfoResponse>> {
  /// See also [fetchUserInfo].
  const FetchUserInfoFamily();

  /// See also [fetchUserInfo].
  FetchUserInfoProvider call({
    required int userId,
  }) {
    return FetchUserInfoProvider(
      userId: userId,
    );
  }

  @override
  FetchUserInfoProvider getProviderOverride(
    covariant FetchUserInfoProvider provider,
  ) {
    return call(
      userId: provider.userId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'fetchUserInfoProvider';
}

/// See also [fetchUserInfo].
class FetchUserInfoProvider
    extends AutoDisposeFutureProvider<UserInfoResponse> {
  /// See also [fetchUserInfo].
  FetchUserInfoProvider({
    required int userId,
  }) : this._internal(
          (ref) => fetchUserInfo(
            ref as FetchUserInfoRef,
            userId: userId,
          ),
          from: fetchUserInfoProvider,
          name: r'fetchUserInfoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchUserInfoHash,
          dependencies: FetchUserInfoFamily._dependencies,
          allTransitiveDependencies:
              FetchUserInfoFamily._allTransitiveDependencies,
          userId: userId,
        );

  FetchUserInfoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userId,
  }) : super.internal();

  final int userId;

  @override
  Override overrideWith(
    FutureOr<UserInfoResponse> Function(FetchUserInfoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchUserInfoProvider._internal(
        (ref) => create(ref as FetchUserInfoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userId: userId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<UserInfoResponse> createElement() {
    return _FetchUserInfoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchUserInfoProvider && other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchUserInfoRef on AutoDisposeFutureProviderRef<UserInfoResponse> {
  /// The parameter `userId` of this provider.
  int get userId;
}

class _FetchUserInfoProviderElement
    extends AutoDisposeFutureProviderElement<UserInfoResponse>
    with FetchUserInfoRef {
  _FetchUserInfoProviderElement(super.provider);

  @override
  int get userId => (origin as FetchUserInfoProvider).userId;
}

String _$updateStepsHash() => r'3a0327c5d2113c8befbb637ddf1524b882fd40af';

/// See also [updateSteps].
@ProviderFor(updateSteps)
const updateStepsProvider = UpdateStepsFamily();

/// See also [updateSteps].
class UpdateStepsFamily extends Family<AsyncValue<void>> {
  /// See also [updateSteps].
  const UpdateStepsFamily();

  /// See also [updateSteps].
  UpdateStepsProvider call({
    required int userId,
    required int steps,
  }) {
    return UpdateStepsProvider(
      userId: userId,
      steps: steps,
    );
  }

  @override
  UpdateStepsProvider getProviderOverride(
    covariant UpdateStepsProvider provider,
  ) {
    return call(
      userId: provider.userId,
      steps: provider.steps,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'updateStepsProvider';
}

/// See also [updateSteps].
class UpdateStepsProvider extends AutoDisposeFutureProvider<void> {
  /// See also [updateSteps].
  UpdateStepsProvider({
    required int userId,
    required int steps,
  }) : this._internal(
          (ref) => updateSteps(
            ref as UpdateStepsRef,
            userId: userId,
            steps: steps,
          ),
          from: updateStepsProvider,
          name: r'updateStepsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateStepsHash,
          dependencies: UpdateStepsFamily._dependencies,
          allTransitiveDependencies:
              UpdateStepsFamily._allTransitiveDependencies,
          userId: userId,
          steps: steps,
        );

  UpdateStepsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userId,
    required this.steps,
  }) : super.internal();

  final int userId;
  final int steps;

  @override
  Override overrideWith(
    FutureOr<void> Function(UpdateStepsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateStepsProvider._internal(
        (ref) => create(ref as UpdateStepsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userId: userId,
        steps: steps,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _UpdateStepsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateStepsProvider &&
        other.userId == userId &&
        other.steps == steps;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);
    hash = _SystemHash.combine(hash, steps.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UpdateStepsRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `userId` of this provider.
  int get userId;

  /// The parameter `steps` of this provider.
  int get steps;
}

class _UpdateStepsProviderElement extends AutoDisposeFutureProviderElement<void>
    with UpdateStepsRef {
  _UpdateStepsProviderElement(super.provider);

  @override
  int get userId => (origin as UpdateStepsProvider).userId;
  @override
  int get steps => (origin as UpdateStepsProvider).steps;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
