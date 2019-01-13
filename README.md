# Routes

- `POST api/locations/create`
  - List Create new database entry
- `GET locations`, to: 'location#index'
  - Get all entries from databse
- `GET 'locations/locations_by_name/:name`
  - Get all entries from database with name `:name`

# JSON
```
{
    "location": {
        "latitude": 52.43434,
        "longitude: 10.12323,
        "measured_at": 45677,
        "strategy": 0,
        "name": "Test"
	}
}
```