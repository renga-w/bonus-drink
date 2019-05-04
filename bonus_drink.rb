class BounusDrink
   @@t=0                  #飲んだ数
   @@b=0                  #残り数
   def self.total_count_for(a)     #aは飲める数
      @@t+=a
      return @@t if (a+@@b)<3      #３本交換終了
      n=((a+@@b)/3).to_i           #次に飲める数
      @@b=(a+@@b)%3                #残り
  #    print("--#{a}--#{n}--#{@@b}\n")
      self.total_count_for(n)
   end
end
