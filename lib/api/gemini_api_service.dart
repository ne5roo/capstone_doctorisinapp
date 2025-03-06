import 'dart:convert';

import 'package:http/http.dart' as http;

class GeminiApiService {
  late final String _apiUrl;
  final String apiKey;

  GeminiApiService({required this.apiKey}) {
    _apiUrl = 'https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash:generateContent?key=$apiKey'; // Replace with the actual API URL
  }

  // Function to get response from Gemini API
  Future<String> getResponse(String userInput) async {
    final Uri apiUri = Uri.parse(_apiUrl);
    final headers = {
      'Content-Type': 'application/json',
    };

    final body = jsonEncode(
      {
      "contents": [
        {
          "parts": [
          {
            "text": userInput
          }
        ]
        }
      ]
    }
    );

    try {
      final response = await http.post(apiUri, headers: headers, body: body);

      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        return responseData['candidates'][0]['content']['parts'][0]['text'];
      } else {
        throw Exception('Failed to get response');
      }
    } catch (e) {
      return 'Error: $e';
    }
  }
}
