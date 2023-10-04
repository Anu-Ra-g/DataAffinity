# Test Cases

**Making a GET request on this url `https://api.postalpincode.in/pincode/560050`, we get**

```json
[
    {
        "Message": "Number of pincode(s) found:4",
        "Status": "Success",
        "PostOffice": [
            {
                "Name": "Ashoknagar (Bangalore)",
                "Description": null,
                "BranchType": "Sub Post Office",
                "DeliveryStatus": "Non-Delivery",
                "Circle": "Karnataka",
                "District": "Bangalore",
                "Division": "Bangalore South",
                "Region": "Bangalore HQ",
                "Block": "Bangalore South",
                "State": "Karnataka",
                "Country": "India",
                "Pincode": "560050"
            },
            {
                "Name": "Banashankari",
                "Description": null,
                "BranchType": "Sub Post Office",
                "DeliveryStatus": "Delivery",
                "Circle": "Karnataka",
                "District": "Bangalore",
                "Division": "Bangalore South",
                "Region": "Bangalore HQ",
                "Block": "Bangalore South",
                "State": "Karnataka",
                "Country": "India",
                "Pincode": "560050"
            },
            {
                "Name": "Dasarahalli(Srinagar)",
                "Description": null,
                "BranchType": "Sub Post Office",
                "DeliveryStatus": "Non-Delivery",
                "Circle": "Karnataka",
                "District": "Bangalore",
                "Division": "Bangalore South",
                "Region": "Bangalore HQ",
                "Block": "Bangalore South",
                "State": "Karnataka",
                "Country": "India",
                "Pincode": "560050"
            },
            {
                "Name": "State Bank Of Mysore Colony",
                "Description": null,
                "BranchType": "Sub Post Office",
                "DeliveryStatus": "Non-Delivery",
                "Circle": "Karnataka",
                "District": "Bangalore",
                "Division": "Bangalore South",
                "Region": "Bangalore HQ",
                "Block": "Bangalore South",
                "State": "Karnataka",
                "Country": "India",
                "Pincode": "560050"
            }
        ]
    }
]
```

**So pincode `560060`, has 4 postoffices in it.**


## The list testcases that would be used in this input addresses are:-

1. **Address is in the pincode specified in it**
- 2nd Phase, 374/B, 80 Feet Rd, Mysore Bank Colony, Banashankari 3rd Stage, Srinivasa Nagar, Bengaluru, Karnataka 560050
- 2nd Phase, 374/B, 80 Feet Rd, Bank Colony, Banashankari 3rd Stage, Srinivasa Nagar, Bengaluru, Karnataka 560050
- 374/B, 80 Feet Rd, State Bank Colony, Banashankari 3rd Stage, Srinivasa Nagar, Bangalore. 560050

2. **Address does not belong to the pincode specified in it**
- 2nd Phase, 374/B, 80 Feet Rd, Mysore Bank Colony, Banashankari 3rd Stage, Srinivasa Nagar, Bengaluru, Karnataka 560095
- A/23, Sector - 8, Rourkela, Odisha 769012
- HICR - 134, Phase - 3, Kalinga Vihar, Rourkela, Odisha 769003

3. **Address has a postoffice but no pincode specified in it.**
- House-23, Unit-1, Bhagat Singh Market, Delhi
- PlotNo-34, Dighaghat
- HouseNo - 23445/G, Area - 34, Awadpur

4. **Address does not contain a postoffice but has a pincode**
- D/17, Rourkela, Odisha 769003
- Plot No - 2452/H, Area - 23, Jammu and Kashmir 913501
- Unit -25/B, HouseNo - 45, Kerala 673015

5. **Address has bad pincode format**
- HCR-10, Chennd Colony, Rourkela, Odisha 4529348
- D/453, Sector - 18, Noida 898r34
- Apartment-1, Block - A, House No - 20, 6565






