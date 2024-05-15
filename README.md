#Outline Business Scenario
A yacht charter company requires a web-based system to manage aspects of its holiday charter business.
There are a number of customers, each of whom may book a number of holiday charters, with each charter booked by an individual customer. A holiday charter may involve one yacht only, but each yacht may be involved in many holiday charters. A holiday charter may visit several   ports and each port will be visited by many holikday charters. Most ports have several yachts based in them (although a few smaller ports have no yachts based in them) with each yacht based in just a single home port.
Information to be held and manipulated include:
•	the name, nationality, email address, phone number and id number of each customer.
•	the name, type, model, home port, number of berths and cost of hire per day of each yacht.
•	the name, phone number, email address and number of docking places at each port.
•	the charter id, start date and duration of each charter.
•	The visit id, expected date of arrival and duration of stay at each port visited.

#Business Processes to be supported include the ability to:
1.	add details of a new customer together with the start date and duration of the charter they have booked, but without specifying the yacht to be used or the ports to be visited.
2.	list the total length of stay, between two given dates, of yachts in the fleet in each port.
3.	get a list of yachts (by name) visiting their home port between two given dates, together with the date of arrival and the length of the stay.
4.	list the ports visited by a given customer together with the date of arrival and length of stay, ordered by date.
5.	remove a yacht temporarily for a period of time (e.g., for servicing) and get a list of yachts that are not available.
   
