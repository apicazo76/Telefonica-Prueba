namespace: Demo.Flujos
operation:
  name: variassalidas

  inputs:
    - address

  python_action:
    script: |
      import random
      rand = random.randint(0, 4)
      vacant = rand != 0
      #print rand

  outputs:
    - available: ${str(vacant)}

  results:
    - UNAVAILABLE: ${rand == 0}
    - AVAILABLE: ${rand == 1}
    - TIPO2: ${rand == 2}
    - ILLEGAL