import os
import urllib.parse
import pandas as pd
from dotenv import load_dotenv
from sqlalchemy import create_engine

# Load environment variables from .env file
load_dotenv()

DB_HOST = os.getenv("DB_HOST", "localhost")
DB_USER = os.getenv("DB_USER", "root")
DB_PASSWORD = os.getenv("DB_PASSWORD")
DB_NAME = os.getenv("DB_NAME", "lianes_library")

# Safely encode password containing special characters (e.g. %)
encoded_password = urllib.parse.quote_plus(DB_PASSWORD) if DB_PASSWORD else ""

# Create MySQL connection string
connection_string = f"mysql+mysqlconnector://{DB_USER}:{encoded_password}@{DB_HOST}/{DB_NAME}"
engine = create_engine(connection_string)

try:
    # Fetch books from database into a Pandas DataFrame
    query = "SELECT * FROM books;"
    df_books = pd.read_sql(query, engine)
    
    print("✅ Successfully connected to the database!")
    print("\nBooks retrieved from database:")
    print(df_books[['book_id', 'title', 'author', 'genre']])
    
except Exception as e:
    print("❌ Connection error:", e)