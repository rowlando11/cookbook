define tmpfile($greeting) {
     file { "/tmp/${name}":
       content => $greeting,
     }
}

tmpfile{ 'foo':
     greeting => "Hello, world\n",
}
