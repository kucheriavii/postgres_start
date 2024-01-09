# Databases, collections, documents

```mermaid
graph TB
    Database -->|Collection| D[Document \n Document \n Document] 
    Database -->|Collection| E[Document \n Document \n Document]
```
---------------------

Показати всі бази даних
<div style="color:#f0f055; background:#333; height:50px; line-height:50px; padding-left:5px" >
    show dbs
</div>

---

Створити базу даних та вибрати базу (однакова дія)
<div style="color:#f0f055; background:#333; height:50px; line-height:50px; padding-left:5px" >
    use name
</div>

+ зробити якісь дії в базі, це збереже нову базу в памяті

створити запис в базу
<div style="color:#f0f055; background:#333; height:50px; line-height:50px; padding-left:5px" >
    db.flightData.insertOne({code})
</div>

добавити елемент

<div style="color:#f0f055; background:#333; height:120%; line-height:50px; padding-left:5px" >    
    db.flightData.insertOne({ <br>
    "departureAirport": "MUC", <br>
    "arrivalAirport": "SFO", <br>
    "aircraft": "Airbus A380", <br>
    "distance": 12000, <br>
    "intercontinental": true<br>
    })
</div>