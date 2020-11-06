# Dream project [example readme]

## Project scope

A solution for calculating the occupancy rate of a Airbnb listing

## Runtime environment

The infrasturcture of this project consists of the following services:

- Rankbreeze application
- PostgreSQL database
- Redis in-memory database
- Sidekiq background processing

## Development environment

Steps to run application locally.  

```
$ bundle install 
$ rake db:migrate
$ rails s

Application is ready!
```

## Comments

The application is ready by 60%. As I haven't enough time to implement the occupancy rate calculation.
I have managed to find a Airbnb API Endpoint where I am fetching the data e.g: title, country, city.
After research I have understood that occupancy rate is the ratio of time a rental property is 
occupied to the time it’s made available for rent. 
The only way to calculate it would be to use Scrapping. As I'm not sure if there is a API endpoint that 
could provide us with necessary information. 
So my indent would be to use the Watir gem and chrome driver. The main thing here would be the calendar of the 
listing with its active/disabled (occupied/unoccupied) days.
