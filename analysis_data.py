import pandas as pd

# Original Excel file
file_path = "egy_houses_output.xlsx"

# Read sheets
df1 = pd.read_excel(file_path, sheet_name="egy_houses")  # main sheet with
df2 = pd.read_excel(file_path, sheet_name="Type")        # sheet with codes
df3 = pd.read_excel(file_path, sheet_name="Compound")  # main sheet with
df4 = pd.read_excel(file_path, sheet_name="Payment")        # sheet with  codes

# Rename the column in df2 to match the column in df1
df2 = df2.rename(columns={"Word": "Type", "ID": "Type_ID"})
df3 = df3.rename(columns={"Word": "Compound", "ID": "Compound_ID"})
df4 = df4.rename(columns={"Word": "Payment", "ID": "Payment_ID"})
# Merge both sheets based
merged = (
    df1.merge(df2[["Type", "Type_ID"]], on="Type", how="left")
       .merge(df3[["Compound", "Compound_ID"]], on="Compound", how="left")
       .merge(df4[["Payment", "Payment_ID"]], on="Payment", how="left")
)


# Save result into a new Excel file
output_file = "egy_houses_output_1.xlsx"
with pd.ExcelWriter(output_file, engine="openpyxl") as writer:
    merged.to_excel(writer, sheet_name="egy_houses", index=False)

print(f" New file created: {output_file}")
