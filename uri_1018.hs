import Text.Printf

cem :: Int -> Int
cem a = a `div` 100
resto_cem :: Int -> Int
resto_cem a = a `mod` 100
cinq :: Int -> Int
cinq a = (resto_cem a) `div` 50
resto_cinq :: Int -> Int
resto_cinq a = (resto_cem a) `mod` 50
vinte :: Int -> Int
vinte a = (resto_cinq a) `div` 20
resto_vinte :: Int -> Int
resto_vinte a = (resto_cinq a) `mod` 20
dez :: Int -> Int
dez a = (resto_vinte a) `div` 10
resto_dez :: Int -> Int
resto_dez a =  (resto_vinte a) `mod` 10
cinco :: Int -> Int
cinco a = (resto_dez a) `div` 5
resto_cinco :: Int -> Int
resto_cinco a = (resto_dez a) `mod` 5
dois :: Int -> Int
dois a = (resto_cinco a) `div` 2
resto_dois :: Int -> Int
resto_dois a = (resto_cinco a) `mod` 2
um :: Int -> Int
um a = (resto_dois a) `div` 1
resto_um :: Int -> Int
resto_um a = (resto_dois a) `mod` 1           

main = do 
          valores <- getLine
          let lista = words valores
          let a = lista !! 0
          let cem_a = (cem(read(a))) 
          let cinq_a = (cinq(read(a)))
          let vinte_a = (vinte(read(a)))
          let dez_a = (dez(read(a)))
          let cinco_a = (cinco(read(a)))
          let dois_a = (dois(read(a)))
          let um_a = (um(read(a)))
          putStrLn(a)
          printf "%d nota(s) de R$ 100,00\n" cem_a
          printf "%d nota(s) de R$ 50,00\n" cinq_a
          printf "%d nota(s) de R$ 20,00\n" vinte_a
          printf "%d nota(s) de R$ 10,00\n" dez_a
          printf "%d nota(s) de R$ 5,00\n" cinco_a
          printf "%d nota(s) de R$ 2,00\n" dois_a
          printf "%d nota(s) de R$ 1,00\n" um_a
