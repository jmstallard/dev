# comment
class MyList
  def p(*args)
    if args.length == 0
      return args.to_s
    else
      print args.shift
      p(*args)
     end
  end
end

# comment
class MyH
  def mh(*args)
    if args.length == 1
      puts 'Ouch, no value'
      return args.values
    else
      print mh(*args.shift)
    end
  end
end
p('a', 'b', 'c')
l = MyList.new
l.p('a', 'b', 'c', 'd')
h1 = { 'a' => 1, 'c' => 2 }
h = MyH.new
h.mh(*h1)
