%2.2
auto(moskvitch, 9500, green, 1).
auto(moskvitch, 3000, blue, 5).
auto(volga, 15000, black, 1).
auto(volga, 8000, white, 6).
auto('UAZ', 9000, green, 3).
auto('VAZ', 6000, white, 4).
auto('VAZ', 4000, blue, 10).
auto('VAZ-2108', 8000, grey, 2)
%b)
auto(Brand,Cost,Color,Age), Cost < 5000.
%c)
Buy(Brand,10000).
%d)
car(Car, Cost, Color, Age), Buy(Автомобиль,10000).
%2.3
car(brand('VAZ',2108), color(blue), price($(7500)), Age).

has(student('Oleg'), book('Griboyedov','Woe from Wit')).
%2.4
%b)
has(Who, book('Monten', Book)).
has(Кто, книга(Author, Book)).
has(Кто, Что).
has('Лена', 'Синий платок').
op(550,xfx,имеет).
Whoo has book('Monten', Book).
Who has book(Author, Book).
Who has What.
'Lena' has 'Blue handkerchief'.
%2.5
lives(Creature, Environment), not(lives(Creature, Environment2)), not(lives(Creature, Environment3)), Environment \= Environment2, Environment2 \= Environment3.
lives(Creature, Environment), aggregate_all(count, живёт(Creature,  _), Count), Count = 1.
lives(Creature, Environment),lives(Creature,AnotherEnvironment),Environment \= AnotherEnvironment.
%2.6
%b)
'Pyotr' has What.
Who has rub(Money), Money >= 10000.
Who has What.
'Ivan' has Item, not('Nikolay' has Item), Item \= rub(Money).
%d)
'Pyotr' has rub(Money), cost(video, rub(Cost)), Money >= Cost.
has(MostRich, rub(BiggetSum)), has(Who2, rub(Sum2)), has(Who3, rub(Sum3)), BiggestSum > Sum2, Sum2 > Sum3, MostRich \= Who2, MostRich \= Who3, Who2 \= Who3.
%f)
buy('Kolya', What).
buy('Kolya', Item), 'Ivan' has Item.
%i)
'Mary' has car(Brand).
buy('Anna', Item), not('Mary' has Item).
