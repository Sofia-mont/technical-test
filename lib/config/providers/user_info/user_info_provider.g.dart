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
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
