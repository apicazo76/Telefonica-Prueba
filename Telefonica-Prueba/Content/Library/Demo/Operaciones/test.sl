namespace: Demo.Operaciones
operation:
  name: test
  inputs:
    - textentrada
  python_action:
    script: |
      print textentrada
  outputs:
    - textsalida: ${str(textentrada)}
  results:
    - SUCCESS