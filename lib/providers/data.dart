class MouthInfo {
  final int position;
  final String name;
  final String iconImage;
  final String description;
  final List<String> images;

  MouthInfo(
    this.position, {
    this.name,
    this.iconImage,
    this.description,
    this.images,
  });
}

List<MouthInfo> mouths = [
  MouthInfo(1,
      name: 'Implantes',
      iconImage: 'assets/002-dental implant.png',
      description:
          "El implante se fusiona con el hueso mandibular, proporcionando un soporte estable para los dientes artificiales. Las prótesis y los puentes colocados sobre los implantes no se deslizan ni se corren en la boca, lo cual es una ventaja especialmente importante para la masticación y el habla. Esta adaptación ayuda a que las prótesis y los puentes (así como las coronas individuales colocadas sobre los implantes) se sientan más naturales que los convencionales.",
      images: [
        'https://www.clinicaferrando.com/wp-content/uploads/2020/01/implantes-dentales.jpg',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT25zFs_-LW129Mbf2n1RpIP4_6dvbk3ldd6A&usqp=CAU',
      ]),
  MouthInfo(2,
      name: 'Diagnostico',
      iconImage: 'assets/010-dental checkup.png',
      description:
          "Es el procedimiento que consiste en aceptar a un paciente, reconocer que tiene un problema y descubrir la causa de éste, e idear un plan de tratamiento que resolverá y aliviara tal problema. La metodología a desarrollarse para la planificación del diagnostico comprende etapas fundamentales como: la anamnesis o interrogatorio, el análisis por imágenes (aspecto radiográfico) y si es necesario solicitud de análisis complementarias",
      images: [
        'https://clinicabarreiro.es/wp-content/uploads/2018/01/diagnostico-dental-TAC.jpg',
        'https://instituto-odontologico.com/wp-content/uploads/2020/06/rayos01-e1591287298266.jpg'
      ]),
  MouthInfo(3,
      name: 'Caries',
      iconImage: 'assets/014-molar.png',
      description:
          "Las caries son zonas dañadas de forma permanente en la superficie de los dientes que se convierten en pequeñas aberturas u orificios. Las caries se producen a causa de una combinación de factores, como bacterias en la boca, ingesta frecuente de tentempiés, bebidas azucaradas y limpieza dental deficiente.",
      images: [
        'https://gacetadental.com/wp-content/uploads/2019/07/shutterstock_SergiiKuchugurnyi.jpg',
        'https://dentadec.com/wp-content/uploads/2016/10/caries.jpg'
      ]),
  MouthInfo(4,
      name: 'Brackets',
      iconImage: 'assets/020-braces.png',
      description:
          "Los brackets son los aparatos fijos que se utilizan en Ortodoncia para corregir los defectos en la forma, posición, relación y función de los dientes y los maxilares, la cara y los trastornos funcionales de la masticación. ",
      images: [
        'https://morapavic.cl/wp-content/uploads/2018/04/sonrisa-con-brackets.png',
        'https://www.sanitas.es/media/imagen/original/img_ilustracion_biblio_cera-brackets/cera-para-brackets.jpg',
      ]),
  MouthInfo(5,
      name: 'Coronas',
      iconImage: 'assets/022-dental crown.png',
      description:
          "Una corona es una protección hecha de metal o porcelana fusionada (incorporada) al metal que reemplaza la estructura del diente que se perdió debido a un daño o una caries. Comúnmente también se la denomina revestimiento o funda porque recubre la parte superior del diente.",
      images: [
        'https://carillasdentalesweb.com/wp-content/uploads/2014/08/coronas-dentales-2.jpg',
        'https://i.pinimg.com/originals/cb/17/b6/cb17b6d4f6576e80ac3f3c81f6fd43b2.jpg'
      ]),
  MouthInfo(6,
      name: 'Extracciones',
      iconImage: 'assets/028-removal.png',
      description:
          "La extracción dental simple se utiliza para quitar los dientes que se pueden ver y son fácilmente accesibles, mientras que la extracción dental quirúrgica requiere típicamente una incisión en el tejido conectivo acceder al diente que se quitará. ",
      images: [
        'https://www.clinicadentallince.com/wp-content/uploads/2019/09/extracciones-dentales-en-lince.jpg',
        'https://www.clikisalud.net/wp-content/uploads/2019/03/extraccion-dental-consejos.jpg'
      ]),
  MouthInfo(7,
      name: 'Puentes',
      iconImage: 'assets/031-dental crown.png',
      description:
          "Un puente dental fijo es un tipo de prótesis dental que se apoya sobre los dientes sanos que el paciente aún conserva en su boca. Normalmente, las prótesis parciales fijas (como también se les denomina) sustituyen a dientes perdidos adyacentes: que se encontraban juntos en la boca del paciente. Junto con los implantes dentales, estas prótesis parciales fijas son la mejor solución para las personas que han perdido uno o varios dientes naturales.",
      images: [
        'https://www.clinicaferrusbratos.com/app/uploads/puente-dental-fijo-implante.jpg',
        'https://www.news-medical.net/image.axd?picture=2017%2F8%2Fshutterstock_25133572.jpg'
      ]),
  MouthInfo(8,
      name: 'Limpiezas',
      iconImage: 'assets/043-dentist tools.png',
      description:
          "La limpieza dental se hace habitualmente con un aparato de ultrasonidos el cual tiene una punta fina que entra en vibración cuando toca un objeto duro, en este caso el diente o el sarro. Esta vibración consigue el desprendimiento de las placas de sarro y la eliminación de manchas extrínsecas, es decir, las producidas por tabaco, café, etc.",
      images: [
        'https://bisodontologia.com/wp-content/uploads/240_F_196849988_Dt3rPDCBADhLWRKGQQx56SM81hDbWmja.jpg',
        'https://pbs.twimg.com/media/C4vBPKqWIAEWKnA.jpg'
      ]),
];
