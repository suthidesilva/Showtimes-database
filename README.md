# Showtime Database

This repository contains the schema and sample data for a "Showtime" database, which manages information about artists, fans, shows, venues, schedules, and genres related to music events.

## Overview

The "Showtime" database is designed to organize and manage information about music events, including details about artists, fans, shows, venues, schedules, and genres. It provides a comprehensive platform for organizing and scheduling concerts, managing artist-fan relationships, and more.

## Tables

- **Artist**: Stores information about artists performing in shows.
- **Fans**: Stores information about fans attending shows.
- **Shows**: Stores information about individual music shows.
- **Venues**: Stores information about venues where shows take place.
- **Schedule**: Stores scheduling information for shows.
- **Genre**: Stores information about music genres.
- **ArtistGenre**: Links artists with the genres they perform.
- **VenuesSchedule**: Links venues with their show schedules.
- **ArtistShows**: Links artists with the shows they perform in.
- **FansArtist**: Links fans with their favorite artists.
- **FansGenre**: Links fans with their favorite music genres.

## Views

- **ShowTimes**: Provides detailed information about upcoming shows, including artist names, genres, start and end times, dates, venues, and prices.
- **Upcoming_Shows**: Provides information about upcoming shows, including start and end times, dates, venues, and show names.
- **Past_Shows**: Provides information about past shows, including start and end times, dates, venues, and show names.
- **ShowsPerVenue**: Provides information about shows scheduled per venue, including show names, prices, fullness status, start and end times, dates, and artist details.

## Sample Data

The repository includes sample data inserts for various tables, including artists, fans, venues, shows, genres, and more.

## Usage

To use the "Showtime" database, you can clone this repository and import the schema and sample data into your preferred database management system. You can then query the database to retrieve information about music events, artists, fans, and more.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
