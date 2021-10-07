import unittest
import requests

class SWAPITestCase(unittest.TestCase):

    SWAPI_URL="https://swapi.dev//api/people/"
    def test_success(self):
        response = requests.get(self.SWAPI_URL)
        self.assertEqual(response.status_code, 200)

    def test_total_number_of_people(self):
        expected_people=['Darth Vader', 'Chewbacca', 'Roos Tarpals', 'Rugor Nass', 'Yarael Poof', 'Lama Su', 'Taun We', 'Grievous', 'Tarfful', 'Tion Medon']
        total_results = []
        people_height = []
        response = requests.get(self.SWAPI_URL)
        data = response.json()

        total_results = total_results + data['results']

        while data['next'] is not None:
            response = requests.get(data['next'])
            data = response.json()
            total_results = total_results + data['results']

        for i in total_results:
            if(i['height']=="unknown"):
                continue
            if(int(i['height'])>200):
                people_height.append(i['name'])

        self.assertEqual(expected_people,people_height)
        self.assertEqual(len(total_results), 82)

if __name__ == "__main__":
    unittest.main()