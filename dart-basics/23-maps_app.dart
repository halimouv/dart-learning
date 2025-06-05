void main() {
  // Dart Basics | 23 - Maps Application + Nested Maps

  Map workers = {
    'Ali':{'position':'Manager','isFulltime':true,'salary':'7000'},
    'Majed':{'position':'CFO','isFulltime':true,'salary':'15300'},
    'Yasser':{'position':'Designer','isFulltime':false,'salary':'4500'
    }};

  workers.forEach((key, value){
    print('$key is ${value['position']} of the company and his salary is ${value['salary']}, ${value['isFulltime'] == true ? 'Full-Time':'Half-Time'}');
  });
}