import requests
from helpers import extract_pincode, check_valid_address


while True:

    input_address = input("Enter your address: ")

    # Enter "Quit" to exit the loop
    if input_address == "Quit" or input_address == "quit" :
        break

    pincode = extract_pincode(input_address)

    try:
        # Making a GET request to the API with the extracted pincode
        response = requests.get(f"https://api.postalpincode.in/pincode/{pincode}", timeout=5)

        val = response.json()

        # If the status key has the value "Success" in response, then proceed
        if val[0]['Status'] == "Success":

            # Getting the list of post offices in the pincode from the response
            postoffices_in_pincode = [elem['Name'] for elem in val[0]['PostOffice']]

            # Checking if the address has a post office in the specified pincode
            result = check_valid_address(input_address, postoffices_in_pincode)

            if result:
                print("\nAddress is valid\n")
            else:
                print("\nAddress is not valid\n")
        else:
            print("\nBad Pincode format in the input address or pincode does not exists\n")

    except requests.exceptions.RequestException as e:
        print(f"Error: {e}")
