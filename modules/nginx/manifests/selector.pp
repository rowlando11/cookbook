$lunch = 'Burger and fries'
   $lunchtype =  $lunch ? {
     /fries/ => 'unhealthy',
     /salad/ => 'healthy',
     default => 'unknown',
   }
   notify { "Your lunch was ${lunchtype}": }
