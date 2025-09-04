import streamlit as st
import pandas as pd

st.title("Mi primera App de ventas en Docker")

#Carga de datos
df=pd.read_csv("data.csv")

st.write("""
    #Visualización de datos
         
         Primeras Ventas
""")

st.dataframe(df)

st.bar_chart(df.set_index("producto")["ventas"])