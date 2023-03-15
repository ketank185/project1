mysql -h database-1.cayvcljjcn2k.ap-south-1.rds.amazonaws.com --user=admin --password=admin1235 << EOF
use demo;
CREATE TABLE `USER` ( `id` int(10) unsigned NOT NULL auto_increment,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `regdate` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1; 
EOF
