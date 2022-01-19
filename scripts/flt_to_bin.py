def decimal_converter(num):
    oper = num*2
    return oper


# Abre el file para leer los contenidos
lines = []
with open("/home/kvn_95/Documents/TEC/CE4202-Proyecto-3/analogica/multisim/analog_data.txt") as file:
    lines = file.readlines()

# Leemos linea por linea
count = 0
for line in lines:
    count += 1
    # Conertimos el string leido a float
    temp_number = float(line)
    # cambiamos el formato para eliminar e
    number = "{:.10f}".format(temp_number)
    # dividimos el numero en parte entera y decima
    whole_number, dec_number = number.split('.')
    # convertimos a binario la parte ebtera
    whole = int(whole_number)
    result = ""
    if(whole == 0):
        result = "0."
    else:
        result = str(bin(whole).lstrip("0b"))+"."
    # para la parte fraccionaria
    d_number = dec_number
    dec_res = ""
    for x in range(20):
        temp_dec = "0." + d_number
        temp_dec = float(temp_dec)
        w_number, d_number = str(decimal_converter(temp_dec)).split(".")
        dec_res += w_number
        temp_dec = float(d_number)
    if (whole == 0):
        result += dec_res
    else:
        result += dec_res[::-1]
    f = open("/home/kvn_95/Documents/TEC/CE4202-Proyecto-3/data/binary_data.txt", "a")
    f.write(result + "\n")
file.close()
f.close()
