import 'package:brl_app/GlobalVariables.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flip_card/flip_card.dart';


class Coordinators extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        CoordinatorsFourthYear(),
        CoordinatorsThirdYear()
      ],
    );
  }
}


class CoordinatorsThirdYear extends StatelessWidget {

  final List<String> thirdyearnames = [
    "Aman Srivastav",
    "Anshika Bajpai",
    "Deepika Maurya",
    "Harsh Gupta",
    "Himani Chauhan",
    "Himanshi Singh",
    "Palak Tiwari",
    "Prakhar Chauhan",
    "Rachit Agarwal",
    "Shivam Bisht",
    "Vishesh Dhawan"
  ];

  final List<String> thirdyearimageurl = [
    "https://raw.githubusercontent.com/amolsr/Asset/master/Brl%20Site/AmanSrivastav.jpg",
    "https://raw.githubusercontent.com/amolsr/Asset/master/Brl%20Site/AnshikaBajpai.jpg",
    "https://raw.githubusercontent.com/amolsr/Asset/master/Brl%20Site/DeepikaMaurya.jpg",
    "https://raw.githubusercontent.com/amolsr/Asset/master/Brl%20Site/HarshGupta.jpg",
    "https://raw.githubusercontent.com/amolsr/Asset/master/Brl%20Site/HimaniChauhan.jpg",
    "https://raw.githubusercontent.com/amolsr/Asset/master/Brl%20Site/HimanshiSingh.jpg",
    "https://raw.githubusercontent.com/amolsr/Asset/master/Brl%20Site/PalakAgarwal.jpg",
    "https://raw.githubusercontent.com/amolsr/Asset/master/Brl%20Site/PrakharPratap.jpg",
    "https://raw.githubusercontent.com/amolsr/Asset/master/Brl%20Site/RachitAgarwal.jpg",
    "https://raw.githubusercontent.com/amolsr/Asset/master/Brl%20Site/ShivamBisht.jpg",
    "https://raw.githubusercontent.com/amolsr/Asset/master/Brl%20Site/VisheshDhawan.jpg"
  ];

  final List<String> thirdyeargithublinks = [
    "https://www.google.com/",
    "https://github.com/Anshika10th",
    "https://github.com/deepika9560",
    "https://github.com/harshgupta80700",
    "https://github.com/himani100700",
    "https://github.com/himanshisingh1304",
    "https://github.com/Palak2820",
    "https://github.com/cprakhar007",
    "https://github.com/Rachit7299",
    "https://github.com/shivam-S-bisht/",
    "https://github.com/visheshdvn"
  ];

  final List<String> thirdyearlinkedinlinks = [
    "https://www.google.com/",
    "http://linkedin.com/in/anshika-bajpai-73b5761ab",
    "https://www.linkedin.com/in/deepika-maurya-145b091a9",
    "https://www.linkedin.com/in/harsh-gupta-129233145/",
    "https://www.linkedin.com/in/himani-chauhan-100700/",
    "https://www.google.com/",
    "https://www.linkedin.com/in/palak-tiwari-94334b19a/",
    "https://www.linkedin.com/in/prakhar-chauhan-227594192/",
    "https://www.linkedin.com/in/rachit-agarwal-65bb571a4/",
    "https://www.linkedin.com/in/shivam-bisht-154b461b0/",
    "https://www.linkedin.com/in/visheshdvn/"
  ];

  final List<String> thirdyearinstalinks = [
    "https://www.google.com/",
    "https://www.instagram.com/anshika_bajpai1/",
    "http://instagram.com/mauryadeepika_",
    "https://www.instagram.com/_harsh.hg807_/",
    "https://www.instagram.com/1007_himani/",
    "https://www.google.com/",
    "https://www.instagram.com/palak_2808/",
    "https://www.instagram.com/cprakhar007/",
    "https://www.instagram.com/rachit_agarwal1/",
    "https://www.instagram.com/asli_pahari/",
    "https://www.instagram.com/visheshdvn/"
  ];

  final List<String> thirdyeartech = [
    "Developer",
    "Application Developer",
    "Web Developer",
    "Flutter Developer/Designer",
    "Angular Developer",
    "Angular Developer",
    "Backend Developer",
    "Flutter Developer",
    "Frontend Developer",
    "Backend Developer",
    "Mern Stack Developer"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(right: screenwidth * 0.05),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: screenheight * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Center(
                      child: Text(
                        "3rd Year",
                        style: GoogleFonts.paytoneOne(
                            fontSize: screenheight * 0.055,
                            decoration: TextDecoration.underline,
                            color: Color(0xff1888ca)),
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Center(
                      child: Text(
                        "Coordinators",
                        style: GoogleFonts.paytoneOne(
                            fontSize: screenheight * 0.038,
                            decoration: TextDecoration.underline,
                            color: Colors.black),
                      )),
                ],
              ),
              SizedBox(
                height: screenheight * 0.035,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: screenwidth * 0.02),
                      width: screenwidth / 2 * 0.9,
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 100,
                          ),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [1,3,5,7,9].map((i) =>showProfileCard(thirdyearnames[i],thirdyearimageurl[i],thirdyeartech[i],thirdyeargithublinks[i],thirdyearinstalinks[i],thirdyearlinkedinlinks[i])).toList() // one
                          )
                        ],
                      )),
                  Container(
                      width: screenwidth / 2 * 0.9,
                      padding: EdgeInsets.symmetric(horizontal: screenwidth * 0.02),
                      //height: 200,
                      //color: Colors.greenAccent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [0, 2, 4, 6, 8, 10]
                            .map((i) => showProfileCard(thirdyearnames[i],thirdyearimageurl[i],thirdyeartech[i],thirdyeargithublinks[i],thirdyearinstalinks[i],thirdyearlinkedinlinks[i]))
                            .toList(), //two
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CoordinatorsFourthYear extends StatelessWidget {

  final List<String> fourthyearnames = [
    "Abhimanyu Bhardwaj",
    "Abhishek Gupta",
    "Aditi Sinha",
    "Aishwarya Ashutosh",
    "Amol Saini",
    "Anshul Srivastava",
    "Ashish varshney",
    "Deepesh Kumar",
    "Mudit Shrivastav",
    "Promod Yadav",
    "Ravindra Kumar",
    "Shikhar Agarwal",
    "Shraddha Mishra",
    "Siddhartha Anand",
    "Suchendra Sharma",
    "Ujjwal Sharma",
    "Utkarsh Jaiswal",
    "Vishal Negi"
  ];

  final List<String> fourthyearlinkedin = [
    "https://www.linkedin.com/in/abhimanyu-bhardwaj-641220151",
    "https://www.linkedin.com/in/abhi0402/",
    "https://www.linkedin.com/in/aditi-sinha-19b35a191",
    "https://www.linkedin.com/in/aishwary-ashutosh-858b22199/",
    "https://www.linkedin.com/in/amolsr/",
    "https://www.linkedin.com/in/anshul-srivastava-b4b5021a4",
    "https://www.linkedin.com/in/ashish-varshney-b69b29118",
    "http://linkedin.com/deepesh07",
    "https://www.google.com/",
    "https://www.linkedin.com/mwlite/in/promodeyadav",
    "https://www.linkedin.com/mwlite/in/ravindra-kumar-688a5a192",
    "https://www.linkedin.com/in/shikhar-agarwal-56148016b/",
    "https://www.linkedin.com/in/shraddha-mishra-193264187",
    "https://www.linkedin.com/in/sidcredible/",
    "https://www.linkedin.com/in/suchendra-sharma-524343155/",
    "https://www.linkedin.com/in/sharmaujjawal01/",
    "https://linkedin.com/in/utkarshjais09",
    "https://www.google.com/",
  ];

  final List<String> fourthyeargithub = [
    "https://github.com/abhimanyu1998",
    "https://github.com/Abhishek0402",
    "https://www.google.com/",
    "https://github.com/aishwary76",
    "https://github.com/amolsr",
    "https://github.com/Anshul3010",
    "https://github.com/ashish234251",
    "http://github.com/deep-esh7",
    "https://github.com/Deadlegend1321?tab=repositories",
    "https://github.com/promodeyadav",
    "https://github.com/ravindra9817",
    "https://github.com/shikhar1111",
    "https://github.com/SHRADDHAMISHRA-sys",
    "https://github.com/sidcredible",
    "https://github.com/suchendrasharma",
    "https://github.com/sharmaujjawal01",
    "https://github.com/stylox09",
    "https://www.google.com/",
  ];

  final List<String> fourthyearinsta = [
    "https://instagram.com/info4abhimanyu?igshid=1ijg5eq06490s",
    "https://www.instagram.com/its_abhi0402/",
    "https://www.instagram.com/aditi_sinha_1804/",
    "https://www.instagram.com/aishwaryashutosh/",
    "https://www.instagram.com/amol.sr/?hl=en",
    "https://www.google.com/",
    "https://www.instagram.com/mrvarshney/",
    "http://instagram.com/deep_esh7",
    "https://www.instagram.com/mudit_1318/",
    "https://www.instagram.com/pro_mode_yadav/",
    "https://www.instagram.com/ravindra_1singh/",
    "https://www.instagram.com/shikharagarwal__/",
    "https://www.google.com/",
    "https://www.instagram.com/sidcredible/",
    "https://www.instagram.com/suchendra_sharma/",
    "https://www.instagram.com/ujjawal.sharma/",
    "https://instagram.com/im_utkarsh_jais",
    "https://www.google.com/",
  ];

  final List<String> fourthyeartech = [
    "Nodejs Developer",
    "MERN Stack Developer",
    "Flutter Developer ",
    "Angular Developer",
    "Backend Developer",
    "Node.Js Developer",
    "Frontend Developer",
    "Flutter Developer ",
    "App Developer",
    "Flutter Developer ",
    "Frontend Developer",
    "MERN Stack Developer",
    "Python Developer",
    "UX Designer",
    "Dapp Developer",
    "Java Developer",
    "UI/UX Designer",
    "UI/UX Designer"
  ];

  final List<String> fourthyearphotourl = [
    "https://raw.githubusercontent.com/amolsr/Asset/master/Brl%20Site/AbhimanyuBhardwaj.jpg",
    "https://raw.githubusercontent.com/amolsr/Asset/master/Brl%20Site/AbhishekGupta.jpg",
    "https://raw.githubusercontent.com/amolsr/Asset/master/Brl%20Site/AditiSinha.jpg",
    "https://raw.githubusercontent.com/amolsr/Asset/master/Brl%20Site/Aishwarya.jpg",
    "https://raw.githubusercontent.com/amolsr/Asset/master/Brl%20Site/AmolSaini.jpg",
    "https://raw.githubusercontent.com/amolsr/Asset/master/Brl%20Site/Anshul.jpeg",
    "https://raw.githubusercontent.com/amolsr/Asset/master/Brl%20Site/Ashish.jpg",
    "https://raw.githubusercontent.com/amolsr/Asset/master/Brl%20Site/DeepeshKumar.jpeg",
    "https://raw.githubusercontent.com/amolsr/Asset/master/Brl%20Site/MuditAgarwal.jpg",
    "https://raw.githubusercontent.com/amolsr/Asset/master/Brl%20Site/PramodJaiswal.jpg",
    "https://raw.githubusercontent.com/amolsr/Asset/master/Brl%20Site/RavindraKumar.jpg",
    "https://raw.githubusercontent.com/amolsr/Asset/master/Brl%20Site/ShikharAgarwal.jpeg",
    "https://raw.githubusercontent.com/amolsr/Asset/master/Brl%20Site/ShraddhaMishra.jpg",
    "https://raw.githubusercontent.com/amolsr/Asset/master/Brl%20Site/SiddharthaAnand.jpg",
    "https://raw.githubusercontent.com/amolsr/Asset/master/Brl%20Site/SuchendraSharma.jpeg",
    "https://raw.githubusercontent.com/amolsr/Asset/master/Brl%20Site/UjjwalSharma.jpg",
    "https://raw.githubusercontent.com/amolsr/Asset/master/Brl%20Site/UtkarshJaiswal.jpg",
    "https://techcrunch.com/wp-content/uploads/2016/09/2016_01_23_weebly_45251web.jpg?w=730&crop=1",
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(right: screenwidth * 0.05),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: screenheight * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Center(
                      child: Text(
                        "4th Year",
                        style: GoogleFonts.paytoneOne(
                            fontSize: screenheight * 0.055,
                            decoration: TextDecoration.underline,
                            color: Color(0xff1888ca)),
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Center(
                      child: Text(
                        "Coordinators",
                        style: GoogleFonts.paytoneOne(
                            fontSize: screenheight * 0.038,
                            decoration: TextDecoration.underline,
                            color: Colors.black),
                      )),
                ],
              ),
              SizedBox(
                height: screenheight * 0.035,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: screenwidth * 0.02),
                      width: screenwidth / 2 * 0.9,
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 100,
                          ),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [1, 3, 5, 7, 9, 11, 13, 15, 17]
                                  .map((i) => showProfileCard(
                                  fourthyearnames[i],
                                  fourthyearphotourl[i],
                                  fourthyeartech[i],
                                  fourthyeargithub[i],
                                  fourthyearinsta[i],
                                  fourthyearlinkedin[i]))
                                  .toList() // one
                          )
                        ],
                      )),
                  Container(
                      width: screenwidth / 2 * 0.9,
                      padding: EdgeInsets.symmetric(horizontal: screenwidth * 0.02),
                      //height: 200,
                      //color: Colors.greenAccent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [0, 2, 4, 6, 8, 10, 12, 14, 16]
                            .map((i) => showProfileCard(
                            fourthyearnames[i],
                            fourthyearphotourl[i],
                            fourthyeartech[i],
                            fourthyeargithub[i],
                            fourthyearinsta[i],
                            fourthyearlinkedin[i]))
                            .toList(), //two
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget showProfileCard(String name, String photourl, String tech,
    String githublink, String instalink, String linkedinlink) {

  return Column(
    children: <Widget>[
      FlipCard(
        direction: FlipDirection.HORIZONTAL,
        front: Container(
          height: 250,
          width: screenwidth / 2 * 0.9,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(screenheight * 0.04),
              color: Color(0xff1888ca).withOpacity(0.95)),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: screenheight * 0.01,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    CachedNetworkImage(
                      imageBuilder: (context, imageProvider) => Container(
                        height: screenwidth * 0.365,
                        width: screenwidth * 0.365,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Container(
                            height: screenwidth * 0.355,
                            width: screenwidth * 0.355,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff1888ca),
                            ),
                            child: Center(
                              child: Container(
                                height: screenwidth * 0.34,
                                width: screenwidth * 0.34,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.transparent,
                                    image: DecorationImage(
                                        image: imageProvider,
                                        fit: BoxFit.cover)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      imageUrl: photourl,
                      placeholder: (context, url) =>
                          CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                          strokeWidth: 3,),
                      errorWidget: (context, url, error) => Icon(
                        Icons.error,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(screenwidth*0.008),
                      child: Text(name,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontSize: screenwidth * 0.048)),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        back: Container(
            height: 250,
            width: screenwidth / 2 * 0.9,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(screenheight * 0.04),
                color: Color(0xff1888ca).withOpacity(0.95)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                SizedBox(
                  height: 0.1,
                ),
                Text(
                  tech,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white,fontSize: screenwidth*0.05),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    profileCardBackIconsButtons(
                        "assets/linkedin.png", linkedinlink),
                    profileCardBackIconsButtons(
                        "assets/instagram.png", instalink),
                    profileCardBackIconsButtons("assets/github.png", githublink)
                  ],
                )
              ],
            )),
      ),
      SizedBox(
        height: screenheight * 0.03,
      )
    ],
  );
}

Widget profileCardBackIconsButtons(String imagepath, String link) {
  return Padding(
    padding:  EdgeInsets.all(screenwidth*0.03) ,
    child: GestureDetector(
      onTap: () {
        launchURL(link);
      },
      child: Container(
        height: screenwidth * 0.045,
        width: screenwidth * 0.045,
        child: Image.asset(
          imagepath,
          fit: BoxFit.fill,
        ),
      ),
    ),
  );
}
