import lxml.etree as ET

# Carga el archivo XML y el archivo XSL
xml_file = 'receta.xml'
xsl_file = 'recetas.xslt'

# Parsear los archivos
xml_tree = ET.parse(xml_file)
xsl_tree = ET.parse(xsl_file)

# Crear el transformador
transformer = ET.XSLT(xsl_tree)

# Iterar sobre cada receta (asumiendo que las recetas están dentro de una raíz <recetas>)
for i, receta in enumerate(xml_tree.xpath('/recetas/receta')):
    # Crear un árbol XML para cada receta individual
    receta_tree = ET.ElementTree(receta)
    # Aplicar la transformación XSLT a la receta actual
    result = transformer(receta_tree)
    # Crear un nombre de archivo dinámico
    filename = f"receta_{i+1}.html"
    # Escribir el resultado en un archivo HTML
    with open(filename, 'wb') as file:
        file.write(ET.tostring(result, pretty_print=True, encoding='UTF-8'))

print("Archivos generados con éxito.")
