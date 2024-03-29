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
 переглянути елменти
<div style="color:#f0f055; background:#333; height:120%; line-height:50px; padding-left:5px" >    
    db.flightData.find().pretty()
</div>
 видалити елмент
<div style="color:#f0f055; background:#333; height:120%; line-height:50px; padding-left:5px" >    
    db.flightData.deleteOne({departureAirport: "TXL"})
</div>
 Змінити елменти
<div style="color:#f0f055; background:#333; height:120%; line-height:50px; padding-left:5px" >    
    db.flightData.updateMany({}, {$set: {marker: "toDelete"}})
</div>
 Видалити елменти
<div style="color:#f0f055; background:#333; height:120%; line-height:50px; padding-left:5px" >    
    db.flightData.deleteMany({marker: "toDelete"})
</div>
 Додати декілька елементів
<div style="color:#f0f055; background:#333; height:120%; line-height:50px; padding-left:5px" >    
    db.flightData.insertMany([{
    "departureAirport": "MUC",
    "arrivalAirport": "SFO",
    "aircraft": "Airbus A380",
    "distance": 12000,
    "intercontinental": true
  },  {
    "departureAirport": "LHR",
    "arrivalAirport": "TXL",
    "aircraft": "Airbus A320",
    "distance": 950,
    "intercontinental": false
  }
])
</div>

