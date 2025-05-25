package com.example.weatherapp_masaeialamo;

// ייבוא של מחלקות נחוצות
import android.os.Bundle;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;

public class WeatherDetailsActivity extends AppCompatActivity {

    // הגדרת משתנים עבור רכיבי טקסט להצגת הנתונים
    private TextView minTempTextView, maxTempTextView, humidityTextView, pressureTextView, cloudsTextView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState); // קריאה למתודת onCreate של המחלקה האב
        setContentView(R.layout.activity_weather_details); // קישור לקובץ activity_weather_details.xml

        // שיוך רכיבי הממשק למשתנים
        // מייצגים את רכיבי הממשק שמציגים את הנתונים (כמו טמפרטורה מינימלית ומקסימלית) : משתני TextView

        minTempTextView = findViewById(R.id.minTempTextView); // רכיב להצגת טמפרטורה מינימלית
        maxTempTextView = findViewById(R.id.maxTempTextView); // רכיב להצגת טמפרטורה מקסימלית
        humidityTextView = findViewById(R.id.humidityTextView); // רכיב להצגת לחות
        pressureTextView = findViewById(R.id.pressureTextView); // רכיב להצגת לחץ אוויר
        cloudsTextView = findViewById(R.id.cloudsTextView); // רכיב להצגת כיסוי עננים

        // קבלת הנתונים שהועברו מהפעילות הראשונה באמצעות ה-Intent
        // getIntent: משמש לקבלת הנתונים שהועברו מהפעילות הראשית (MainActivity)

        double minTemp = getIntent().getDoubleExtra("min_temp", 0.0); // קבלת טמפרטורה מינימלית
        double maxTemp = getIntent().getDoubleExtra("max_temp", 0.0); // קבלת טמפרטורה מקסימלית
        int humidity = getIntent().getIntExtra("humidity", 0); // קבלת לחות
        double pressure = getIntent().getDoubleExtra("pressure", 0.0); // קבלת לחץ אוויר
        int clouds = getIntent().getIntExtra("clouds", 0); // קבלת כיסוי עננים

        // הצגת הנתונים בטקסטים על המסך
        // setText: מעדכן את הטקסט של כל רכיב TextView עם הערך המתאים שהתקבל

        minTempTextView.setText("Min Temp: " + minTemp + "°C"); // הצגת טמפרטורה מינימלית
        maxTempTextView.setText("Max Temp: " + maxTemp + "°C"); // הצגת טמפרטורה מקסימלית
        humidityTextView.setText("Humidity: " + humidity + "%"); // הצגת לחות
        pressureTextView.setText("Pressure: " + pressure + " hPa"); // הצגת לחץ אוויר
        cloudsTextView.setText("Clouds: " + clouds + "%"); // הצגת כיסוי עננים
    }
}
