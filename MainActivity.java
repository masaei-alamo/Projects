package com.example.weatherapp_masaeialamo;

// ייבוא של מחלקות נחוצות
import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.toolbox.JsonObjectRequest;
import com.android.volley.toolbox.Volley;

import org.json.JSONException;
import org.json.JSONObject;

public class MainActivity extends AppCompatActivity {

    // הגדרת משתנים לשדות טקסט ולכפתור באפליקציה
    private EditText cityEditText, countryEditText;
    private Button getWeatherButton, showCurrentTempButton; // הוספתי את כפתור הצגת הטמפרטורה הנוכחית

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState); // קריאה למתודת onCreate של המחלקה האב
        setContentView(R.layout.activity_main); // קישור הקובץ activity_main.xml כעיצוב לפעילות

        // שיוך רכיבי הממשק לשדות
        cityEditText = findViewById(R.id.cityEditText); // שדה הזנת שם העיר
        countryEditText = findViewById(R.id.countryEditText); // שדה הזנת שם המדינה
        getWeatherButton = findViewById(R.id.getWeatherButton); // כפתור לשליפת הנתונים
        showCurrentTempButton = findViewById(R.id.showCurrentTempButton); // כפתור חדש לצגת הטמפרטורה הנוכחית

        // הגדרת פעולה לכפתור "קבלת מזג האוויר"
        getWeatherButton.setOnClickListener(v -> {
            // קריאת הערכים שהוזנו בשדות
            String city = cityEditText.getText().toString().trim(); // קריאה ושמירה של שם העיר
            String country = countryEditText.getText().toString().trim(); // קריאה ושמירה של שם המדינה

            // בדיקה אם אחד השדות ריק
            if (city.isEmpty() || country.isEmpty()) {
                Toast.makeText(this, "Please enter city and country", Toast.LENGTH_SHORT).show(); // הצגת הודעה למשתמש
                return; // יציאה מהפעולה
            }

            // קריאה למתודה לשליפת הנתונים
            fetchWeatherData(city, country);
        });

        // הגדרת פעולה לכפתור "הצגת טמפרטורה נוכחית"
        showCurrentTempButton.setOnClickListener(v -> {
            // קריאת הערכים שהוזנו בשדות
            String city = cityEditText.getText().toString().trim(); // קריאה ושמירה של שם העיר
            String country = countryEditText.getText().toString().trim(); // קריאה ושמירה של שם המדינה

            // בדיקה אם אחד השדות ריק
            if (city.isEmpty() || country.isEmpty()) {
                Toast.makeText(this, "Please enter city and country", Toast.LENGTH_SHORT).show(); // הצגת הודעה למשתמש
                return; // יציאה מהפעולה
            }

            // קריאה למתודה לשליפת הטמפרטורה הנוכחית
            fetchCurrentTemp(city, country);
        });
    }

    // מתודה לשליפת נתוני מזג אוויר מה-API
    private void fetchWeatherData(String city, String country) {
        // מפתח ה-API שלך
        String apiKey = "f6a4e8cd7cad795657caf3e377ca0e7c";
        // כתובת ה-URL לשליפת נתונים עם הפרמטרים (שם עיר ומדינה)
        String url = "https://api.openweathermap.org/data/2.5/weather?q=" + city + "," + country + "&appid=" + apiKey + "&units=metric";

        // יצירת תור בקשות
        RequestQueue queue = Volley.newRequestQueue(this);

        // יצירת בקשת JSON לשרת
        JsonObjectRequest request = new JsonObjectRequest(Request.Method.GET, url, null,
                response -> { // תגובה מוצלחת
                    try {
                        // שליפת המידע הנחוץ מהתשובה (JSON)
                        JSONObject main = response.getJSONObject("main"); // קבלת אובייקט "main"
                        double tempMin = main.getDouble("temp_min"); // טמפרטורה מינימלית
                        double tempMax = main.getDouble("temp_max"); // טמפרטורה מקסימלית
                        int humidity = main.getInt("humidity"); // לחות
                        double pressure = main.getDouble("pressure"); // לחץ אוויר
                        int clouds = response.getJSONObject("clouds").getInt("all"); // אחוז כיסוי העננים

                        // יצירת Intent למעבר למסך השני
                        Intent intent = new Intent(MainActivity.this, WeatherDetailsActivity.class);
                        intent.putExtra("min_temp", tempMin); // הוספת טמפרטורה מינימלית
                        intent.putExtra("max_temp", tempMax); // הוספת טמפרטורה מקסימלית
                        intent.putExtra("humidity", humidity); // הוספת לחות
                        intent.putExtra("pressure", pressure); // הוספת לחץ אוויר
                        intent.putExtra("clouds", clouds); // הוספת כיסוי עננים
                        startActivity(intent); // מעבר לפעילות החדשה
                    } catch (JSONException e) {
                        e.printStackTrace(); // הדפסת שגיאה למסוף
                        Toast.makeText(this, "Error parsing weather data", Toast.LENGTH_SHORT).show(); // הודעת שגיאה למשתמש
                    }
                },
                error -> { // תגובה כושלת
                    error.printStackTrace(); // הדפסת השגיאה למסוף
                    Toast.makeText(this, "Error fetching weather data", Toast.LENGTH_SHORT).show(); // הודעת שגיאה למשתמש
                });

        // הוספת הבקשה לתור הבקשות
        queue.add(request);
    }

    // מתודה לשליפת הטמפרטורה הנוכחית בלבד
    private void fetchCurrentTemp(String city, String country) {
        // מפתח ה-API שלך
        String apiKey = "f6a4e8cd7cad795657caf3e377ca0e7c";
        // כתובת ה-URL לשליפת נתונים עם הפרמטרים (שם עיר ומדינה)
        String url = "https://api.openweathermap.org/data/2.5/weather?q=" + city + "," + country + "&appid=" + apiKey + "&units=metric";

        // יצירת תור בקשות
        RequestQueue queue = Volley.newRequestQueue(this);

        // יצירת בקשת JSON לשרת
        JsonObjectRequest request = new JsonObjectRequest(Request.Method.GET, url, null,
                response -> { // תגובה מוצלחת
                    try {
                        // שליפת המידע הנחוץ מהתשובה (JSON)
                        JSONObject main = response.getJSONObject("main"); // קבלת אובייקט "main"
                        double currentTemp = main.getDouble("temp"); // טמפרטורה נוכחית

                        // הצגת הטמפרטורה הנוכחית
                        Toast.makeText(this, "Current Temperature: " + currentTemp + "°C", Toast.LENGTH_LONG).show(); // הצגת הטמפרטורה למשתמש

                    } catch (JSONException e) {
                        e.printStackTrace(); // הדפסת שגיאה למסוף
                        Toast.makeText(this, "Error parsing weather data", Toast.LENGTH_SHORT).show(); // הודעת שגיאה למשתמש
                    }
                },
                error -> { // תגובה כושלת
                    error.printStackTrace(); // הדפסת השגיאה למסוף
                    Toast.makeText(this, "Error fetching weather data", Toast.LENGTH_SHORT).show(); // הודעת שגיאה למשתמש
                });

        // הוספת הבקשה לתור הבקשות
        queue.add(request);
    }
}

