/// GENERATED CODE - DO NOT MODIFY BY HAND

/// ***************************************************************************
/// *                            pubspec_generator                            * 
/// ***************************************************************************

/*
  
  MIT License
  
  Copyright (c) 2022 Plague Fox
  
  Permission is hereby granted, free of charge, to any person obtaining a copy
  of this software and associated documentation files (the "Software"), to deal
  in the Software without restriction, including without limitation the rights
  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
  copies of the Software, and to permit persons to whom the Software is
  furnished to do so, subject to the following conditions:
  
  The above copyright notice and this permission notice shall be included in all
  copies or substantial portions of the Software.
  
  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE
  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
  SOFTWARE.
   
 */

// The pubspec file:
// https://dart.dev/tools/pub/pubspec

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings
// ignore_for_file: avoid_escaping_inner_quotes
// ignore_for_file: prefer_single_quotes

/// Current app version
const String version = r'4.4.25+117';

/// The major version number: "1" in "1.2.3".
const int major = 4;

/// The minor version number: "2" in "1.2.3".
const int minor = 4;

/// The patch version number: "3" in "1.2.3".
const int patch = 25;

/// The pre-release identifier: "foo" in "1.2.3-foo".
const List<String> pre = <String>[];

/// The build identifier: "foo" in "1.2.3+foo".
const List<String> build = <String>[r'117'];

/// Build date in Unix Time (in seconds)
const int timestamp = 1670181258;

/// Name [name]
const String name = r'bbmstu_app';

/// Description [description]
const String description = r'BITOP Bauman App';

/// Repository [repository]
const String repository = r'';

/// Issue tracker [issue_tracker]
const String issueTracker = r'';

/// Homepage [homepage]
const String homepage = r'';

/// Documentation [documentation]
const String documentation = r'';

/// Publish to [publish_to]
const String publishTo = r'none';

/// Environment
const Map<String, String> environment = <String, String>{
  'sdk': '>=2.15.0 <3.0.0',
};

/// Dependencies
const Map<String, Object> dependencies = <String, Object>{
  'flutter': <String, Object>{
    'sdk': r'flutter',
  },
  'cupertino_icons': r'^1.0.3',
  'firebase_analytics': r'^8.3.1',
  'firebase_core': r'^1.6.0',
  'firebase_messaging': r'^11.1.0',
  'firebase_remote_config': r'^0.11.0+2',
  'firebase_crashlytics': r'^2.3.0',
  'cloud_firestore': r'^3.1.0',
  'rxdart': r'^0.27.2',
  'url_launcher': r'^6.0.13',
  'flutter_slidable': r'^0.6.0',
  'flutter_spinkit': r'^5.1.0',
  'flutter_markdown': r'^0.6.6',
  'intl': r'^0.17.0',
  'hooks_riverpod': r'^0.14.0+4',
  'flutter_hooks': r'^0.17.0',
  'flutter_bloc': r'^7.3.0',
  'equatable': r'^2.0.3',
  'shared_preferences': r'^2.0.7',
  'sealed_unions': r'^3.0.3+1',
  'dartz': r'^0.10.0',
  'internet_connection_checker': r'^0.0.1+2',
  'extended_text': r'^9.0.0',
  'webview_flutter': r'^2.3.1',
  'timezone': r'^0.8.0',
  'freezed': r'^0.14.2',
  'json_annotation': r'^4.3.0',
  'qr_flutter': r'^4.0.0',
  'image_picker': r'^0.8.4+4',
  'chopper': r'^4.0.1',
  'uuid': r'^3.0.5',
  'permission_handler': r'^8.2.6',
  'app_settings': r'^4.1.1',
  'local_database': <String, Object>{
    'path': r'packages/local_database',
  },
  'remote_api': <String, Object>{
    'path': r'packages/remote_api',
  },
  'screen_brightness': r'^0.1.1',
  'charcode': r'^1.3.1',
};

/// Developer dependencies
const Map<String, Object> devDependencies = <String, Object>{
  'flutter_test': <String, Object>{
    'sdk': r'flutter',
  },
  'flutter_lints': r'^1.0.4',
  'build_runner': r'^2.1.7',
  'json_serializable': r'^6.0.1',
  'dart_code_metrics': r'^4.9.1',
  'pubspec_generator': r'^3.0.0',
};

/// Dependency overrides
const Map<String, Object> dependencyOverrides = <String, Object>{};

/// Executables
const Map<String, Object> executables = <String, Object>{};

/// Source data from pubspec.yaml
const Map<String, Object> source = <String, Object>{
  'name': name,
  'description': description,
  'repository': repository,
  'issue_tracker': issueTracker,
  'homepage': homepage,
  'documentation': documentation,
  'publish_to': publishTo,
  'version': version,
  'environment': environment,
  'dependencies': dependencies,
  'dev_dependencies': devDependencies,
  'dependency_overrides': dependencyOverrides,
  'flutter': <String, Object>{
    'uses-material-design': true,
    'assets': <Object>[
      r'assets/images/',
      r'packages/timezone/data/2021a.tzf',
    ],
    'fonts': <Object>[
      <String, Object>{
        'family': r'StandardIcons',
        'fonts': <Object>[
          <String, Object>{
            'asset': r'assets/fonts/standard_icons.ttf',
          },
        ],
      },
      <String, Object>{
        'family': r'Roboto',
        'fonts': <Object>[
          <String, Object>{
            'asset': r'assets/fonts/roboto/Roboto-Black.ttf',
          },
          <String, Object>{
            'asset': r'assets/fonts/roboto/Roboto-BlackItalic.ttf',
          },
          <String, Object>{
            'asset': r'assets/fonts/roboto/Roboto-Bold.ttf',
          },
          <String, Object>{
            'asset': r'assets/fonts/roboto/Roboto-BoldItalic.ttf',
          },
          <String, Object>{
            'asset': r'assets/fonts/roboto/Roboto-Italic.ttf',
          },
          <String, Object>{
            'asset': r'assets/fonts/roboto/Roboto-Light.ttf',
          },
          <String, Object>{
            'asset': r'assets/fonts/roboto/Roboto-LightItalic.ttf',
          },
          <String, Object>{
            'asset': r'assets/fonts/roboto/Roboto-Medium.ttf',
          },
          <String, Object>{
            'asset': r'assets/fonts/roboto/Roboto-MediumItalic.ttf',
          },
          <String, Object>{
            'asset': r'assets/fonts/roboto/Roboto-Regular.ttf',
          },
          <String, Object>{
            'asset': r'assets/fonts/roboto/Roboto-Thin.ttf',
          },
          <String, Object>{
            'asset': r'assets/fonts/roboto/Roboto-ThinItalic.ttf',
          },
        ],
      },
      <String, Object>{
        'family': r'Montserrat',
        'fonts': <Object>[
          <String, Object>{
            'asset': r'assets/fonts/montserrat/Montserrat-Black.ttf',
          },
          <String, Object>{
            'asset': r'assets/fonts/montserrat/Montserrat-BlackItalic.ttf',
          },
          <String, Object>{
            'asset': r'assets/fonts/montserrat/Montserrat-Bold.ttf',
          },
          <String, Object>{
            'asset': r'assets/fonts/montserrat/Montserrat-BoldItalic.ttf',
          },
          <String, Object>{
            'asset': r'assets/fonts/montserrat/Montserrat-ExtraBold.ttf',
          },
          <String, Object>{
            'asset': r'assets/fonts/montserrat/Montserrat-ExtraBoldItalic.ttf',
          },
          <String, Object>{
            'asset': r'assets/fonts/montserrat/Montserrat-ExtraLight.ttf',
          },
          <String, Object>{
            'asset': r'assets/fonts/montserrat/Montserrat-ExtraLightItalic.ttf',
          },
          <String, Object>{
            'asset': r'assets/fonts/montserrat/Montserrat-Italic.ttf',
          },
          <String, Object>{
            'asset': r'assets/fonts/montserrat/Montserrat-Light.ttf',
          },
          <String, Object>{
            'asset': r'assets/fonts/montserrat/Montserrat-LightItalic.ttf',
          },
          <String, Object>{
            'asset': r'assets/fonts/montserrat/Montserrat-Medium.ttf',
          },
          <String, Object>{
            'asset': r'assets/fonts/montserrat/Montserrat-MediumItalic.ttf',
          },
          <String, Object>{
            'asset': r'assets/fonts/montserrat/Montserrat-Regular.ttf',
          },
          <String, Object>{
            'asset': r'assets/fonts/montserrat/Montserrat-SemiBold.ttf',
          },
          <String, Object>{
            'asset': r'assets/fonts/montserrat/Montserrat-SemiBoldItalic.ttf',
          },
          <String, Object>{
            'asset': r'assets/fonts/montserrat/Montserrat-Thin.ttf',
          },
          <String, Object>{
            'asset': r'assets/fonts/montserrat/Montserrat-ThinItalic.ttf',
          },
        ],
      },
    ],
  },
};
