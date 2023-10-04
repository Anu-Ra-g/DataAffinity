import re

# extract a 6 digit pincode from the input address
def extract_pincode(address: str) -> str:
    pattern = r'\b\d{6}\b'
    pin_codes = re.findall(pattern, address)
    if len(pin_codes) == 0 or len(pin_codes) > 1:
        return "Invalid Address"
    return pin_codes[0]

# check if the address is valid or not based on the conditions
def check_valid_address(input_address: str, postoffices: str) -> bool:
    valid = False
    for postoffice in postoffices:
        if postoffice in input_address:
            valid |= True
        else:
            valid |= False
    return valid
