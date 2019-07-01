def translate(ww)
  mega = ''
  aa = ww.split
  aa.each do |e|
    tt = trans(e)
    if aa.length >1 and e != aa.last
      tt += ' '
    end  
    mega += tt
  end
  mega
end


def trans(ww) 
  vowels = ['a','e','i','o','u']
  if ww.include? 'qu'
    ww = ww.gsub('qu','z')
    qmarker = true
  end
  if vowels.include?(ww[0])
    ss = ww+'ay'
  elsif vowels.include?(ww[1])
    ss = ww[1,ww.length]
    ss = ss+ww[0]+'ay'
  elsif vowels.include?(ww[2])
    ss = ww[2,ww.length]
    ss = ss+ww[0]+ww[1]+'ay'
  elsif vowels.include?(ww[3])
    ss = ww[3,ww.length]
    ss = ss+ww[0]+ww[1]+ww[2]+'ay'
  end
  if qmarker
    ss = ss.gsub('z','qu')
  end
  ss
end




