-- Kiírjuk a játék nevét
print("barkoba")

-- Felpörgetjük a random generátort, e nélkül mindíg 1-re futna az első random
math.randomseed(os.time())

-- Felveszünk egy új változót 'secret' és bele rakunk egy random számot 1 és 100 között
secret = math.random(1, 100)

-- Kiírjuk a feladványt
print("gondoltam egy szamra 1 es 100 kozott")

-- Ez a blokk addig fog ismétlődni amíg az until feltétel nem teljesül
repeat
    -- Minden kör elején kiírjuk, hogy kérünk egy számot
    print("kerek egy szamot")

    -- Létrehozunk egy új változót 'input', Beolvasunk egy sort (ezt a játékosnak kell begépelnie és egy Enterrel elküldenie) és bele rakjuk ebbe a változóba.
    input = io.read("*l")

    -- Léterehozunk egy új változót 'number', Átkonvertáljuk az 'input' változót számmá és belerakjuk ebbe a változóba, ha ez nem sikerül a 'number' értéke 'nil' lesz, ami kb semmit jelent.
    number = tonumber(input)

    -- Megvizsgáljuk, hogy a 'number' változó értéke 'nil'-e?
    if(number == nil)
    -- Ha igen az azt jelenti, hogy nem sikerült a konvertálás, az 'input' nem egy szám.
    then
        print("Ez nem egy szam")
    -- Ha nem 'nil' a 'number' értéke akkor egy szám.
    else
        -- Ha ez a szám nagyobb mint a 'secret'
        if (number > secret)
        then
            print("kisebb szamra gondoltam")
        end

        -- Ha kissebb...
        if (number < secret)
        then
            print("nagyobb szamra gondoltam")
        end

        -- Ha egyenlő
        if (number == secret)
        then
            print("erre szamra gondoltam")
        end
    end
-- Akkor lépünk ki a repeat blokkból, ha a 'secret' egyenlő a 'number'-rel.
until(secret == number)
