import pandas as pd

#1.3:

# קריאה של קובץ CSV
file_path = 'input2_df.csv'
df = pd.read_csv(file_path)

# הדפסת מידע כללי על DataFrame
print("מידע כללי על הקובץ:")
df.info()

# בדיקת ערכים חסרים והדפסתם
print("\nערכים חסרים בכל עמודה:")
missing_values = df.isnull().sum()
print(missing_values)

# הדפסת מספר השורות והעמודות
print("\nמספר שורות ועמודות:")
print(df.shape)

# הדפסת דוגמאות מהנתונים
print("\nדוגמאות מהנתונים:")
print(df.head())


#1.5:

# חישוב סך הערכים החסרים בקובץ
total_missing = df.isnull().sum().sum()

# חישוב אחוז הערכים החסרים הכללי
total_cells = df.size
total_missing_percentage = (total_missing / total_cells) * 100

# הדפסת אחוז הערכים החסרים הכללי
print("אחוז הערכים החסרים הכללי: {:.2f}%".format(total_missing_percentage))


#1.6:

# חישוב אחוז הערכים החסרים
total_cells = df.size
missing_values_count = df.isnull().sum().sum()
missing_percentage = (missing_values_count / total_cells) * 100

# בדיקה אם אחוז הערכים החסרים קטן מ-10%
if missing_percentage < 10:
    print(f"אחוז הערכים החסרים קטן מ-10% ({missing_percentage:.2f}%)")
else:
    print(f"אחוז הערכים החסרים גדול או שווה ל-10% ({missing_percentage:.2f}%)")



#1.8:

# הדפסת 5 שורות ראשונות
print("חמשת השורות הראשונות :")
print(df.head(5))

# הדפסת 5 שורות אחרונות
print("\nחמשת השורות האחרונות :")
print(df.tail(5))

# הדפסת 5 שורות אמצעיות
print("\nחמשת השורות האמצעיות :")
print(df.iloc[len(df) // 2 - 2: len(df) // 2 + 3])



#1.9:

# ניתוח סטטיסטי בסיסי על הנתונים
print("\nניתוח סטטיסטי בסיסי:")
print(df.describe())



