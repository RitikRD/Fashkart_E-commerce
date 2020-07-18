import 'package:fashkart/main.dart';
import 'package:flutter/material.dart';

class Legal extends StatefulWidget {
  @override
  _LegalState createState() => _LegalState();
}

class _LegalState extends State<Legal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text("Terms & Condition",style: TextStyle(color: Colors.blueGrey[900],fontWeight: FontWeight.bold,fontSize: 15.0),),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.home,color: Colors.black,), onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomePage()));
          }),
        ],
      ),
      body: Text("Terms of Use and Privacy"
          " Policy Please read these terms and conditions prior to "
          "using the products and services offered by Sigmoid Labs"
          " Private Ltd. By using the product, you agree to be legally"
          " bound by the terms and conditions, privacy policy and terms "
          "of services (including without limitations all disclaimers,"
          " exclusion of warranties and limitations of liability contained"
          " therein). If you do not agree with these terms, please do not "
          "use the products and services offered by Sigmoid Labs.Terms o"
          "f UseWhere is my Train is not an official publication of Indian Railways or any public transport authority. Train timings and dynamically estimated departures/arrivals may not match with actual timings. PNR status and seat availability is actually provided by Indian Railways and Where is my Train just acts as an interface to these services. Sigmoid Labs is not responsible for any damage caused by the information shown by this software. Please cross verify the information.Privacy PolicyWe collect following information when you use the software. Your mobile device’s hardware information, unique id, cell-towers to which the mobile is connected and the mobile location. This information will be kept private by Sigmoid Labs and its affiliates and will not be disclosed to third parties other than service providers that we use to help operate our products and services. We collect this information to enable you and others to Spot trains and other location-based services such as Alarm. However, Spot trains and Alarm are best-effort services and we do not take responsibility concerning its accuracy. Please cross verify this information.Information SecurityWe take appropriate security measures to protect against unauthorized access to or unauthorized alteration, disclosure or destruction of data. These include internal reviews of our data collection, storage and processing practices and security measures, including appropriate encryption. Sigmoid Labs Pvt. Ltd. shall make no guarantees for the uninterrupted and continuous availability of the Products and/or Services or of any specific feature(s) of the Products and/or Services. The Products and/or Services are AS IS and are subject to the disclaimers of warranty and the limitations of liability as found in this agreement and which are subject to testing by the Users before entering into this agreement. Sigmoid Labs Pvt. Ltd. reserves the right to change or terminate the Products and/or the Services.Changes to the TermsSigmoid Labs Pvt. Ltd. may make changes to these Terms from time to time with or without notice. When these changes are made, any new terms will be made available to you at http://whereismytrain.in/terms/ . You understand and agree that if you use the product and Services after the date on which these Terms have changed, Sigmoid Labs Pvt. Ltd. will treat your use as acceptance of the updated terms. All the copyrights of this product are reserved with Sigmoid Labs Pvt. Ltd.."),
    );
  }
}
