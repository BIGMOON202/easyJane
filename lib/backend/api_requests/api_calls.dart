import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetAllCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getAll',
      apiUrl: 'https://fomo.andreascarpetta.com/display',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
      },
      params: {
        'format': "json",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? pathRecordings(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class DebugDocsCallsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'debug docs calls  ',
      apiUrl: 'https://fomo.andreascarpetta.com/docs',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddAudioCall {
  static Future<ApiCallResponse> call({
    FFUploadedFile? file,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'addAudio',
      apiUrl: 'https://fomo.andreascarpetta.com/save_audio',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'file': file,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteOneCall {
  static Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'deleteOne',
      apiUrl: 'https://fomo.andreascarpetta.com/eraser/$id',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SummarizeAudioCall {
  static Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'summarizeAudio',
      apiUrl: 'https://fomo.andreascarpetta.com/summarize/$id?format=json',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? riassuntoList(dynamic response) => (getJsonField(
        response,
        r'''$.riassunto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetAudioDetailsCall {
  static Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getAudioDetails',
      apiUrl: 'https://fomo.andreascarpetta.com/explain/$id?format=json',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? date(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data_della_trascrizione''',
      ));
  static String? company(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.azienda_contattata''',
      ));
  static String? targetRole(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.riferimento_dell_azienda''',
      ));
  static String? resultCall(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.risultato_della_chiamata''',
      ));
  static String? notes(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.note''',
      ));
}

class LoginCall {
  static Future<ApiCallResponse> call({
    String? username = '',
    String? password = '',
    String? grantType = '',
    String? scope = '',
    String? clientId = '',
    String? clientSecret = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: 'https://ejapi.andreascarpetta.com/login',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {
        'username': username,
        'password': password,
        'grant_type': grantType,
        'scope': scope,
        'client_id': clientId,
        'client_secret': clientSecret,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
