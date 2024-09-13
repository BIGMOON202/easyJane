// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LoginResposeStruct extends BaseStruct {
  LoginResposeStruct({
    String? accessToken,
    String? tokenType,
  })  : _accessToken = accessToken,
        _tokenType = tokenType;

  // "access_token" field.
  String? _accessToken;
  String get accessToken => _accessToken ?? '';
  set accessToken(String? val) => _accessToken = val;

  bool hasAccessToken() => _accessToken != null;

  // "token_type" field.
  String? _tokenType;
  String get tokenType => _tokenType ?? '';
  set tokenType(String? val) => _tokenType = val;

  bool hasTokenType() => _tokenType != null;

  static LoginResposeStruct fromMap(Map<String, dynamic> data) =>
      LoginResposeStruct(
        accessToken: data['access_token'] as String?,
        tokenType: data['token_type'] as String?,
      );

  static LoginResposeStruct? maybeFromMap(dynamic data) => data is Map
      ? LoginResposeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'access_token': _accessToken,
        'token_type': _tokenType,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'access_token': serializeParam(
          _accessToken,
          ParamType.String,
        ),
        'token_type': serializeParam(
          _tokenType,
          ParamType.String,
        ),
      }.withoutNulls;

  static LoginResposeStruct fromSerializableMap(Map<String, dynamic> data) =>
      LoginResposeStruct(
        accessToken: deserializeParam(
          data['access_token'],
          ParamType.String,
          false,
        ),
        tokenType: deserializeParam(
          data['token_type'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LoginResposeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LoginResposeStruct &&
        accessToken == other.accessToken &&
        tokenType == other.tokenType;
  }

  @override
  int get hashCode => const ListEquality().hash([accessToken, tokenType]);
}

LoginResposeStruct createLoginResposeStruct({
  String? accessToken,
  String? tokenType,
}) =>
    LoginResposeStruct(
      accessToken: accessToken,
      tokenType: tokenType,
    );
