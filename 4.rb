## Задача №4:
#
# В соседнем районе рождественские эльфы готовят подарки для жителей города.
# Для каждого подарка (файл data/4.txt) нужно найти сколько оберточной бумаги потребуется.
# Формула рассчета: 2*ш*д + 2*д*в + 2*в*ш + площадь наименьшей стороны
# Например, на подарок размером 2х3х4 требуется 2*6 + 2*12 + 2*8 = 52 + 6 кв. см.
#
# Сколько всего оберточной бумаги нужно купить эльфам?
#
## Требования к решению:
# - Входные данные находятся в файле data/4.txt
# - В значениях данные длины, ширины и высоты не упорядочены и могут идти в любом порядке, однако
# длина всегда наименьшее число из трех, высота - среднее, ширина - самое большое.
# - Результат должен быть выведен в консоль командой puts
#
#
## Решение:
f = IO.read('/data/4.txt')
s = f.split(' ')
b = 0
s.each do |i|
a = i.split("x").map(&:to_i)
g = a.map.with_index{|k, l| k if l != a.find_index(a.min) and l != a.find_index(a.max)}.compact
b += 2 * a.min * a.max + 2 * g[0].to_i * a.min + 2 * a.max * g[0].to_i + g[0].to_i * a.min
a.clear
g.clear
end
puts b

