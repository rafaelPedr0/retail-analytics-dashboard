import pandas as pd

df = pd.read_csv("data/raw/superstore.csv", encoding="latin1")

print("Primeiras linhas:")
print(df.head())

print("\nInformações do arquivo:")
print(df.info())

print("\nValores nulos:")
print(df.isnull().sum())

df["Order Date"] = pd.to_datetime(df["Order Date"], errors="coerce")
df["Ship Date"] = pd.to_datetime(df["Ship Date"], errors="coerce")

df["YearMonth"] = df["Order Date"].dt.to_period("M").astype(str)

monthly_sales = df.groupby("YearMonth")["Sales"].sum().reset_index()

print("\nVendas por mês:")
print(monthly_sales.head())

df.to_csv("data/processed/cleaned_superstore.csv", index=False)
print("\nArquivo limpo salvo em data/processed/cleaned_superstore.csv")