#write your code here
def echo(ss)
  ss
end

def shout(ss)
  ss.upcase
end

def repeat(ss, n=1)
  aa = ss
  if n>1
    (n-1).times do 
      aa = aa+' '+ss
    end  
  else
      aa = aa+' '+ss
  end
  aa

end

def start_of_word(ww,n)
  ww[0,n]
end

def first_word(ww)
  aa = ww.split()
  aa[0]

end

def titleize(ww)
  words = ww.split
  bb = []
  little = ['and','the','over']
  words.each do |w|
    if little.include? w 
      nw = w
    else
      nw = titled(w)
    end
    bb << nw
    end
  ss = bb[0]
  if little.include? ss 
    bb[0] = titled(ss)
    end
  bb.join(' ')
end

def titled(x)
    frst = x[0].upcase
    rst = x[1,x.length]
    wrd = frst+rst
    wrd
end
