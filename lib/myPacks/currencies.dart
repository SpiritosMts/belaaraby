

List<String>  currencies = [
  'euro',
  'Turkey Lira',
  'dollar',
  'Albania Lek',
  'Bulgaria Lev',
  'Convertible Mark',
  'Croatia Kuna',
  'Czech Republic Koruna',
  'Denmark Krone',
  'Hungary Forint',
  'Macedonia Denar',
  'Romania Leu',
  'Poland Zloty',
  'Serbia Dinar',
  'Switzerland Franc',
  'Ukraine Hryvnia',
  'Belarus Ruble',
];

String currencySymbol(curr) {

  if(curr == currencies[0]){
    return '€';
  }
  else if( curr == currencies[1]){
    return 'TRY';
  }
  else if( curr == currencies[2]){
    return '\$';

  }
  else if( curr == currencies[3]){
    return 'Lek';

  }
  else if( curr == currencies[4]){
    return 'лв';

  }
  else if( curr == currencies[5]){
    return 'KM';

  }
  else if( curr == currencies[6]){
    return 'kn';

  }
  else if( curr == currencies[7]){
    return 'Kč';

  }
  else if( curr == currencies[8]){
    return 'kr';

  }
  else if( curr == currencies[9]){
    return 'Ft';

  }
  else if( curr == currencies[10]){
    return 'ден';

  }
  else if( curr == currencies[11]){
    return 'lei';

  }
  else if( curr == currencies[12]){
    return 'PLN';

  }
  else if( curr == currencies[13]){
    return 'Дин';

  }
  else if( curr == currencies[14]){
    return 'CHF';

  }
  else if( curr == currencies[15]){
    return 'UAH';

  }
  else if( curr == currencies[16]){
    return 'Br';

  }


  print('## cant symbolize currency');
  return '€';

}
