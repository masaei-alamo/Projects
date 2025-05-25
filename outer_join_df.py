import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
import plotly.express as px
import plotly.graph_objects as go
from sklearn.linear_model import LinearRegression
from sklearn.metrics import mean_squared_error
from sklearn.preprocessing import StandardScaler
from sklearn.cluster import KMeans


# יצירת data frame ראשון
data1 = {'SNo': [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15],
         'ObservationDate': ['2024-05-01', '2024-05-02', '2024-05-03', '2024-05-04', '2024-05-05', '2024-05-06','2024-05-07', '2024-05-08', '2024-05-09', '2024-05-10', '2024-05-11', '2024-05-12', '2024-05-13', '2024-05-14', '2024-05-15'],
         'Country': ['israel', 'ethiopia', 'japan', 'china', 'usa', 'russia', 'india', 'germany', 'italy', 'france', 'brazil', 'canada', 'australia', 'uk', 'spain'],
         'Province/State': ['tel aviv', 'addis ababa', 'tokyo', 'beijing', 'new york', 'moscow', 'mumbai', 'berlin', 'rome', 'paris', 'rio de janeiro', 'toronto', 'sydney', 'london', 'madrid'],
         'Confirmed': [100, 200, 300, 400, 500, 600, 700, 800, 900, 1000, 1100, 1200, 1300, 1400, 1500],
         'Deaths': [10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150],
         'Recovered': [90, 180, 270, 360, 450, 540, 630, 720, 810, 900, 990, 1080, 1170, 1260, 1350]}
df1 = pd.DataFrame(data1)

# יצירת data frame שני
data2 = {'Species': ['Arabica', 'Arabica', 'Arabica', 'Robusta', 'Robusta', 'Liberica', 'Liberica', 'Robusta', 'Arabica', 'Arabica', 'Robusta', 'Robusta', 'Liberica', 'Liberica', 'Liberica'],
         'Owner': ['masaei', 'yael', 'bayat', 'david', 'ron', 'sara', 'avi', 'dana', 'jonathan', 'rachel', 'avi', 'daniel', 'sara', 'shlomo', 'miriam'],
         'Country': ['israel', 'ethiopia', 'japan', 'china', 'usa', 'russia', 'india', 'germany', 'italy', 'france', 'brazil', 'canada', 'australia', 'uk', 'spain'],
         'Farm.Name': ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o'],
         'Lot.Number': [101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115]}
df2 = pd.DataFrame(data2)
# full outer join + new DataFrame named outer_join_df
outer_join_df = df1.merge(df2, on='Country', how='outer')

print(outer_join_df)

# 1.12:

# Join פעולת
outer_join_df = df1.merge(df2, on='Country', how='outer')

# עמודות של df1
df1_selected = outer_join_df[
    ['SNo', 'ObservationDate', 'Province/State', 'Country', 'Confirmed', 'Deaths', 'Recovered']]

# עמודות של df2
df2_selected = outer_join_df[['Species', 'Owner', 'Country', 'Farm.Name', 'Lot.Number']]

print("First DataFrame:")
print(df1_selected)
print("\nSecond DataFrame:")
print(df2_selected)


# 2.1 + 2.2:

def num_fixer(data_frame, series_name):
    cnt = 0
    for row in data_frame[series_name]:
        try:
            int(float(row))  # אם אין שגיאה ישאר
        except ValueError:
            # Drop if would-be boolean or 'nan'
            if row in ['True', 'False', 'nan']:
                data_frame.drop([cnt], inplace=True)
            else:  # Chars or NaNs
                pass
        else:
            pass
        cnt += 1
    data_frame[series_name] = data_frame[series_name].astype('string', errors='raise')
    data_frame.reset_index(drop=True, inplace=True)


num_fixer(df1, 'ObservationDate')
num_fixer(df1, 'Country')
num_fixer(df1, 'Province/State')
num_fixer(df2, 'Species')
num_fixer(df2, 'Owner')
num_fixer(df2, 'Country')
num_fixer(df2, 'Farm.Name')

print(df1.dtypes)
print(df2.dtypes)


# 2.3:

def fill_missing_values(data_frame):
    for column in data_frame.columns:
        if data_frame[column].dtype != 'object':
            if data_frame[column].isnull().sum() > 0:  # בודק אם בעמודה יש ערכים חסרים
                if data_frame[column].dtype == 'float64' or data_frame[column].dtype == 'int64':  # בודק אם עמודה היא מספרית
                    for idx in data_frame.index:
                        if pd.isnull(data_frame.loc[idx, column]):
                            # ממוצע
                            prev_val = data_frame.loc[idx - 1, column] if idx > 0 else np.nan
                            next_val = data_frame.loc[idx + 1, column] if idx < len(data_frame) - 1 else np.nan
                            mean_val = np.nanmean([prev_val, next_val])

                            # חציון
                            median_val = np.nanmedian([prev_val, next_val])

                            # שכיח
                            mode_series = pd.Series([prev_val, next_val])
                            mode_val = mode_series.mode().iloc[0] if not mode_series.mode().empty else np.nan

                            # שימוש בממוצע של המספר הקודם והבא במקרה ואין רצף של ערכי nan  בונוס !
                            if not np.isnan(mean_val):
                                data_frame.loc[idx, column] = mean_val
                            elif not np.isnan(median_val):
                                data_frame.loc[idx, column] = median_val
                            elif not np.isnan(mode_val):
                                data_frame.loc[idx, column] = mode_val
                            else:
                                data_frame.loc[idx, column] = data_frame[
                                    column].mean()  # nan לממוצע של העמודה כולה במידה ויש רצף ערכי fallback


# שימוש בפונקציה ב-2 ה- df
fill_missing_values(df1)
fill_missing_values(df2)

print("DataFrame 1 after filling missing values:")
print(df1)
print("\nDataFrame 2 after filling missing values:")
print(df2)



#2.4:

# בחירת עמודה מספרית מ-df1
column_name = 'Confirmed'  # ניתן לשנות את השם לעמודה אחרת לפי הצורך
new_column_name = 'norm_' + column_name

# יצירת עמודה חדשה עם ערכים נורמליים
df1[new_column_name] = np.nan  # יצירת עמודה חדשה עם ערכים חסרים

max_value = df1[column_name].abs().max()  # מציאת הערך המקסימלי בעמודה המקורית

# לולאה למעבר על כל הערכים בעמודה המקורית ולחישוב הערכים הנורמליים
for idx in df1.index:
    original_value = df1.loc[idx, column_name]
    if not pd.isnull(original_value):  # בדיקה אם הערך אינו חסר
        normalized_value = abs(original_value) / max_value  # חישוב הערך הנורמלי
        df1.loc[idx, new_column_name] = normalized_value  # שמירת הערך הנורמלי בעמודה החדשה

print("DataFrame 1 with normalized column:")
print(df1)


#2.5:

# הוספת שורות כפולות
df1 = pd.concat([df1, df1.iloc[[0]], df1.iloc[[1]]], ignore_index=True) #  בגלל שבגרסא הזאת אין append נעשה שימוש ב concat

print("DataFrame 1 with duplicate rows:")
print(df1[df1.duplicated(keep=False)])

# הסרת שורות כפולות
df1.drop_duplicates(inplace=True)

print("DataFrame 1 after dropping duplicate rows:")
print(df1)




#3- הצגה ויזואלית של הנתונים :

#data1:

# Bubble Chart: Confirmed Cases vs. Recovered Cases by Country (with Bubble Size Representing Deaths)
fig = px.scatter(df1, x='Confirmed', y='Recovered', color='Country', size='Deaths', size_max=60, hover_name='Country', hover_data=['Province/State', 'ObservationDate'], title='Confirmed Cases vs. Recovered Cases by Country (Bubble Chart)')
fig.update_layout(xaxis_title='Confirmed Cases', yaxis_title='Recovered Cases', legend_title_text='Country')
fig.show()


#  תרשים מעגלים תלת ממדי
fig = px.scatter_3d(df1, x='Confirmed', y='Deaths', z='Recovered', color='Country', size='Confirmed', size_max=30)
fig.update_layout(title='3D Scatter Plot of Confirmed, Deaths, and Recovered Cases')
fig.show()



#  היסטוגרמה של confirmed cases
plt.figure(figsize=(10, 6))
sns.histplot(df1['Confirmed'], kde=True, color='blue')
plt.title('Histogram of Confirmed Cases')
plt.xlabel('Confirmed Cases')
plt.ylabel('Frequency')
plt.grid(True)
plt.show()




#תרשים שטח מוערם של הנתונים -Confirmed ,Death, Recovered
fig = go.Figure()
fig.add_trace(go.Scatter(x=df1['ObservationDate'], y=df1['Confirmed'], name='Confirmed', stackgroup='one', line_color='blue'))
fig.add_trace(go.Scatter(x=df1['ObservationDate'], y=df1['Deaths'], name='Deaths', stackgroup='one', line_color = 'red'))
fig.add_trace(go.Scatter(x=df1['ObservationDate'], y=df1['Recovered'], name='Recovered', stackgroup='one', line_color = 'green'))
fig.update_layout(title='Confirmed, Deaths, and Recovered Cases Over Time', xaxis_title='Observation Date', yaxis_title= 'Number of Cases')
fig.show()



#	תרשים עמודות אינטראקטיבי: מקרים מאומתים לפי מחוז/מדינה
fig = px.bar(df1, x='Province/State', y='Confirmed', color='Country', title='Confirmed Cases by Province/State (Interactive)')
fig.update_layout(xaxis_title='Province/State', yaxis_title='Confirmed Cases')
fig.show()




#מפת Choropleth-  מקרי מוות לפי מדינה
fig = go.Figure(data=go.Choropleth(
    locations=df1['Country'],
    z=df1['Deaths'],
    locationmode='country names',
    colorscale='Blues',
    colorbar_title='Deaths',
    marker_line_color='darkgray',
    marker_line_width=0.5
))
fig.update_layout(
    title_text='Deaths Cases by Country (Choropleth Map)',
    geo=dict(
        showframe=False,
        showcoastlines=False,
        projection_type='natural earth'
    )
)
fig.show()


#  Sankey Diagram:  Flow of Confirmed Cases to Recovered and Deaths
fig = go.Figure(data=[go.Sankey(
    node = dict(
      pad = 15,
      thickness = 20,
      line = dict(color = "black", width = 0.5),
      label = ["Confirmed Cases", "Recovered Cases", "Deaths"],
      color = ["blue", "green", "red"]
    ),
    link = dict(
      source = [0, 0], # indices correspond to labels, eg 'Confirmed Cases' is 0
      target = [1, 2],
      value = [df1['Recovered'].sum(), df1['Deaths'].sum()]
  ))])

fig.update_layout(title_text="Flow of Confirmed Cases to Recovered and Deaths", font_size=10)
fig.show()






#data2:

#  Sunburst Chart של מספר חלקות לפי מדינה וזן של קפה
fig = px.sunburst(df2, path=['Country', 'Species'], values='Lot.Number', color='Lot.Number',
                  color_continuous_scale='RdBu', title='Sunburst Chart of Lot Number by Country and Species')
fig.show()



#    תרשים עוגה של אחוז בעלי החוות לכל זן של קפה
plt.figure(figsize=(10, 10))
owner_species_count = df2.groupby('Species')['Owner'].nunique()
plt.pie(owner_species_count, labels=owner_species_count.index, autopct='%1.1f%%', startangle=140)
plt.title('Pie Chart of Farm Owners by Species')
plt.show()



#  מפת חום של זנים של קפה  לפי מדינה
plt.figure(figsize=(14, 8))
heatmap_data = pd.crosstab(df2['Country'], df2['Species'])
sns.heatmap(heatmap_data, annot=True, cmap="YlGnBu")
plt.title('Heatmap of Coffee Species by Country')
plt.show()


# Scatter Plot with Jitter
plt.figure(figsize=(8, 6))
sns.stripplot(x='Owner', y='Lot.Number', data=df2, jitter=True, hue='Species', palette='Set1')
plt.title('Owner vs. Lot Number (with Jittering)')
plt.xlabel('Owner')
plt.ylabel('Lot Number')
plt.show()


#מפת עצים: התפלגות זנים של קפה לפי מדינה
fig = px.treemap(df2, path=['Country', 'Species'], values='Lot.Number', color='Species', title='Species Distribution by Country (Treemap)')
fig.show()




#תרשים עמודות אינטראקטיבי דגש של numner of lot
fig = px.bar(df2, x='Country', y='Lot.Number', color='Species', title='Country-Wise Species Distribution (Interactive)')
fig.update_layout(xaxis_title='Country', yaxis_title='Number of Lots')
fig.show()



# 4.1+4.2+4.3 :

# שלב 1: נרמול הנתונים
X = df1[['Confirmed', 'Deaths', 'Recovered']]
scaler = StandardScaler()
X_scaled = scaler.fit_transform(X)

# שלב 2: בדיקת מספר האשכולות בעזרת מבחן המרפק
inertia = []
K = range(1, 10)
for k in K:
    kmeans = KMeans(n_clusters=k, random_state=0).fit(X_scaled)
    inertia.append(kmeans.inertia_)

plt.figure(figsize=(10, 6))
plt.plot(K, inertia, 'bx-')
plt.xlabel('Number of clusters')
plt.ylabel('Inertia')
plt.title('Elbow Method for Optimal Number of Clusters')
plt.show()

# שלב 3: ביצוע אשכולות עם מספר האשכולות הנבחר
optimal_clusters = 3  # בהתאם לתוצאה של מבחן המרפק
kmeans = KMeans(n_clusters=optimal_clusters, random_state=0)
df1['Cluster'] = kmeans.fit_predict(X_scaled)

# חישוב ה-centroids
centroids = kmeans.cluster_centers_
centroids = scaler.inverse_transform(centroids)  # החזרת הערכים המקוריים

# שלב 4: הצגת האשכולות
plt.figure(figsize=(10, 6))
sns.scatterplot(data=df1, x='Confirmed', y='Deaths', hue='Cluster', palette='Set1', s=100)
plt.scatter(centroids[:, 0], centroids[:, 1], s=300, c='black', marker='o')  # הוספת ה-centroids בצורת עיגול
plt.title('Clusters of Confirmed vs Deaths')
plt.show()

# שלב 5: ביצוע רגרסיה לינארית בין Confirmed ו-Recovered
X_reg = df1[['Confirmed']]
y_reg = df1['Recovered']
reg = LinearRegression().fit(X_reg, y_reg)
y_pred = reg.predict(X_reg)

plt.figure(figsize=(10, 6))
plt.scatter(x=df1['Confirmed'], y=df1['Recovered'], c=df1['Cluster'], cmap='Set1', s=100)
plt.plot(df1['Confirmed'], y_pred, color='blue', linewidth=2)
plt.xlabel('Confirmed')
plt.ylabel('Recovered')
plt.title('Linear Regression: Confirmed vs Recovered')
plt.colorbar(label='Cluster')
plt.show()

# הצגת תוצאות הרגרסיה ומסקנות
print("Coefficient:", reg.coef_[0])
print("Intercept:", reg.intercept_)
print("Mean Squared Error:", mean_squared_error(y_reg, y_pred))

# ניתוחים נוספים
plt.figure(figsize=(10, 6))
sns.scatterplot(x=df1['Confirmed'], y=df1['Deaths'], hue=df1['Country'], palette='Set1', s=100)
plt.title('Confirmed vs Deaths by Country')
plt.show()

