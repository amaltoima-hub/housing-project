import pandas as pd

# Original Excel file
file_path = "egy_houses.xlsx"

# Read sheets
df1 = pd.read_excel(file_path, sheet_name="egy_houses")  # main sheet with cities
df2 = pd.read_excel(file_path, sheet_name="Price_Range")        # sheet with cities + codes

# Rename the column in df2 to match the column in df1
df2 = df2.rename(columns={"Word": "Price_Range"})


# Merge both sheets based on "City"
merged = df1.merge(df2[["Price_Range", "ID"]], on="Price_Range", how="left")

# Save result into a new Excel file
output_file = "egy_houses_output.xlsx"
with pd.ExcelWriter(output_file, engine="openpyxl") as writer:
    merged.to_excel(writer, sheet_name="egy_houses", index=False)

print(f" New file created: {output_file}")
