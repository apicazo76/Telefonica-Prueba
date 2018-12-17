namespace: Demo.Operaciones
flow:
  name: Miprimerflujo
  workflow:
    - test:
        do:
          Demo.Operaciones.test:
            - textentrada: texto
        navigate:
          - SUCCESS: Generate_Hash
    - Generate_Hash:
        do_external:
          15d3f3df-1af9-4885-aa75-f78aff4cbd95: []
        navigate:
          - success: SUCCESS
          - failure: on_failure
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      test:
        x: 172
        y: 72
      Generate_Hash:
        x: 283
        y: 76
        navigate:
          dd9e3164-5a0d-b080-d78d-659818955d0f:
            targetId: 378c3f1e-95e6-cbc8-7f06-d275e700af65
            port: success
    results:
      SUCCESS:
        378c3f1e-95e6-cbc8-7f06-d275e700af65:
          x: 393
          y: 58
