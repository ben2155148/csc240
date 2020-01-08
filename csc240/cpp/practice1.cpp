#include<iostream>
using namespace std;

  class Movie {
    private:
      string title;
      string director;
      int release_year;
      string rating;
    public:
      // Constructor
      Movie(string t = "", string dir = "", int ry = 0, string rat = "") {
        title = t;
        director = dir;
        release_year = ry;
        rating = rat;
      }
      // Method definition
     void print_movie() {
       cout << "Movie: " << title << endl;
       cout << "Director: " << director << endl;
       cout << "Release year: " << release_year << endl;
       cout << "Rating: " << rating << endl;
     }

};

int main() {
  Movie m1("Interstellar", "Christopher Nolan", 2014, "PG-13");

  Movie *p1;
  p1 = new Movie("Arrival", "Denis Villeneuve", 2016, "PG-13");

  m1.print_movie();
  cout << endl;
  p1->print_movie();

  return 0;
}
