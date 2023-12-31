/// Flutter Imports
export 'dart:io';
export 'dart:convert';
export 'dart:async';
export 'package:flutter/material.dart';
export 'package:flutter/services.dart';

/// Lib Imports
export 'package:news_app_clean_architecture/main.dart';

/// Packages Imports
export 'package:flutter_bloc/flutter_bloc.dart';
export 'package:flutter_native_splash/flutter_native_splash.dart';
export 'package:logger/logger.dart';
export 'package:json_annotation/json_annotation.dart';
export 'package:dio/dio.dart';
export 'package:google_fonts/google_fonts.dart';
export 'package:get_it/get_it.dart';
export 'package:cached_network_image/cached_network_image.dart';
export 'package:fluttertoast/fluttertoast.dart';
export 'package:freezed_annotation/freezed_annotation.dart';
export 'package:flutter_dotenv/flutter_dotenv.dart';

/// Config
///-- Router
export 'package:news_app_clean_architecture/config/router/app_router.dart';
export 'package:news_app_clean_architecture/config/router/route_names.dart';

///-- Theme
export 'package:news_app_clean_architecture/config/theme/app_theme.dart';
export 'package:news_app_clean_architecture/config/theme/text_styles.dart';

/// Core
///-- Constants
export 'package:news_app_clean_architecture/core/constants/constants.dart';
export 'package:news_app_clean_architecture/core/constants/dimensions_resource.dart';
export 'package:news_app_clean_architecture/core/constants/colors_resource.dart';
export 'package:news_app_clean_architecture/core/constants/global_variable.dart';
export 'package:news_app_clean_architecture/core/constants/strings_resource.dart';

///-- Resources
export 'package:news_app_clean_architecture/core/resources/api_utilities.dart';
export 'package:news_app_clean_architecture/core/resources/api_request_status.dart';
export 'package:news_app_clean_architecture/core/resources/app_bloc_observer.dart';

///-- Use Cases
export 'package:news_app_clean_architecture/core/user_cases/use_case.dart';

///-- Utils
export 'package:news_app_clean_architecture/core/utils/injection_container.dart';
