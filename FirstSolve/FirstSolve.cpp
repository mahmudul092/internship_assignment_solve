#include <iostream>
#include <string>

using namespace std;

class Car
{
public:
    string name;
    string model;
    int year;

    Car(string n, string m, int y) : name(n), model(m), year(y) {}

    void displayInfo()
    {
        cout << "Car Information:" << endl;
        cout << year << " " << name << " " << model << endl;
    }
};

class ElectricCar : public Car
{
public:
    int batteryCapacity;

    ElectricCar(string n, string m, int y, int capacity) : Car(n, m, y), batteryCapacity(capacity) {}

    void displayInfo1()
    {
        displayInfo();
        cout << "Battery Capacity: " << batteryCapacity << " kWh" << endl;
    }
};
class GasCar : public Car
{
public:
    int fuelEfficiency;

    GasCar(string n, string m, int y, int efficiency) : Car(n, m, y), fuelEfficiency(efficiency) {}

    void displayInfo2()
    {
        displayInfo();
        cout << "Fuel Efficiency: " << fuelEfficiency << " MPG" << endl;
    }
};

int main()
{
    string carType;
    string name, model;
    int year, capacityOrEfficiency;

    cout << "Enter car type (Electric/Gas): ";
    cin >> carType;

    cout << "Enter Name: ";
    cin >> name;

    cout << "Enter model: ";
    cin.ignore();
    getline(cin, model); // line including spaces

    cout << "Enter year: ";
    cin >> year;

    if (carType == "Electric")
    {
        cout << "Enter battery capacity (kWh): ";
        cin >> capacityOrEfficiency;
        ElectricCar electricCar(name, model, year, capacityOrEfficiency);
        electricCar.displayInfo1(); //function call
    }
    else if (carType == "Gas")
    {
        cout << "Enter fuel efficiency (MPG): ";
        cin >> capacityOrEfficiency;
        GasCar gasCar(name, model, year, capacityOrEfficiency);
        gasCar.displayInfo2(); //function call
    }
    else
    {
        cout << "Invalid car type entered!" << endl;
    }

    return 0;
}
