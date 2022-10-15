import 'package:flutter/material.dart';
import 'package:prima_jaya/edit_profile.dart';
import 'package:prima_jaya/model/user.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 800) {
          return ProfilePage();
        } else {
          return ProfilePageWeb();
        }
      },
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  void updateData() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              width: double.infinity,
              height: 200,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                  image: AssetImage('images/platinum.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Card(
                  elevation: 0,
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              user.name,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white.withOpacity(0.7),
                              ),
                              child: Text(
                                user.memberType,
                                style: const TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            )
                          ],
                        ),
                        Text(
                          user.id,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            wordSpacing: 10,
                            letterSpacing: 2,
                          ),
                        )
                      ],
                    ),
                  )),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 2.0,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Info Profile',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      const Expanded(
                        flex: 1,
                        child: Text('Name'),
                      ),
                      Expanded(
                        flex: 2,
                        child: TextButton(
                          onPressed: () async {
                            String refresh = await Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const EditProfilePage(
                                editedField: 'Name',
                              );
                            }));
                            if (refresh == 'refresh') {
                              updateData();
                            }
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(user.name),
                              const Icon(Icons.edit, size: 20.0),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Expanded(
                        flex: 1,
                        child: Text('Email'),
                      ),
                      Expanded(
                        flex: 2,
                        child: TextButton(
                          onPressed: () async {
                            String refresh = await Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const EditProfilePage(
                                editedField: 'Email',
                              );
                            }));
                            if (refresh == 'refresh') {
                              updateData();
                            }
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(user.email),
                              const Icon(Icons.edit, size: 20.0),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Expanded(
                        flex: 1,
                        child: Text('Phone'),
                      ),
                      Expanded(
                        flex: 2,
                        child: TextButton(
                          onPressed: () async {
                            String refresh = await Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const EditProfilePage(
                                editedField: 'Phone',
                              );
                            }));
                            if (refresh == 'refresh') {
                              updateData();
                            }
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(user.phone),
                              const Icon(Icons.edit, size: 20.0),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              width: 300,
              child: ElevatedButton(
                onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('Sign Out'),
                    content: const Text('Are you sure?'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'Cancel'),
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'Yes'),
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                ),
                child: Text(
                  'Sign Out',
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                  backgroundColor: Colors.grey,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}



class ProfilePageWeb extends StatefulWidget {
  const ProfilePageWeb({Key? key}) : super(key: key);

  @override
  _ProfilePageWebState createState() => _ProfilePageWebState();
}

class _ProfilePageWebState extends State<ProfilePageWeb> {
  void updateData() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              width: 350,
              height: 200,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                  image: AssetImage('images/platinum.jpg'),
                  fit: BoxFit.cover,
                ),
              ), 
              child: Card(
                  elevation: 0,
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              user.name,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white.withOpacity(0.7),
                              ),
                              child: Text(
                                user.memberType,
                                style: const TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            )
                          ],
                        ),
                        Text(
                          user.id,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            wordSpacing: 10,
                            letterSpacing: 2,
                          ),
                        )
                      ],
                    ),
                  )
                ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              width: 400,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Info Profile',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      const Expanded(
                        flex: 1,
                        child: Text('Name'),
                      ),
                      Expanded(
                        flex: 2,
                        child: TextButton(
                          onPressed: () async {
                            String refresh = await Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const EditProfilePage(
                                editedField: 'Name',
                              );
                            }));
                            if (refresh == 'refresh') {
                              updateData();
                            }
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(user.name),
                              const Icon(Icons.edit, size: 20.0),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Expanded(
                        flex: 1,
                        child: Text('Email'),
                      ),
                      Expanded(
                        flex: 2,
                        child: TextButton(
                          onPressed: () async {
                            String refresh = await Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const EditProfilePage(
                                editedField: 'Email',
                              );
                            }));
                            if (refresh == 'refresh') {
                              updateData();
                            }
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(user.email),
                              const Icon(Icons.edit, size: 20.0),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Expanded(
                        flex: 1,
                        child: Text('Phone'),
                      ),
                      Expanded(
                        flex: 2,
                        child: TextButton(
                          onPressed: () async {
                            String refresh = await Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const EditProfilePage(
                                editedField: 'Phone',
                              );
                            }));
                            if (refresh == 'refresh') {
                              updateData();
                            }
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(user.phone),
                              const Icon(Icons.edit, size: 20.0),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('Sign Out'),
                          content: const Text('Are you sure?'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'Cancel'),
                              child: const Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'Yes'),
                              child: const Text('OK'),
                            ),
                          ],
                        ),
                      ),
                      child: Text(
                        'Sign Out',
                        style:
                            TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0),
                        ),
                        backgroundColor: Colors.grey,
                      ),
                    ),
                  )
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}


// Row(
//                     children: [
//                       Expanded(
//                         child: Text('Name')
//                       ),
//                       TextButton(
//                         onPressed: () async {
//                           String refresh = await Navigator.push(context,
//                               MaterialPageRoute(builder: (context) {
//                             return const EditProfilePage(
//                               editedField: 'Name',
//                             );
//                           }));
//                           if (refresh == 'refresh') {
//                             updateData();
//                           }
//                         },
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(user.name),
//                             const Icon(Icons.edit, size: 20.0),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Text('Email'),
//                       TextButton(
//                         onPressed: () async {
//                           String refresh = await Navigator.push(context,
//                               MaterialPageRoute(builder: (context) {
//                             return const EditProfilePage(
//                               editedField: 'Email',
//                             );
//                           }));
//                           if (refresh == 'refresh') {
//                             updateData();
//                           }
//                         },
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(user.email),
//                             const Icon(Icons.edit, size: 20.0),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Text('Phone'),
//                       TextButton(
//                         onPressed: () async {
//                           String refresh = await Navigator.push(context,
//                               MaterialPageRoute(builder: (context) {
//                             return const EditProfilePage(
//                               editedField: 'Phone',
//                             );
//                           }));
//                           if (refresh == 'refresh') {
//                             updateData();
//                           }
//                         },
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(user.phone),
//                             const Icon(Icons.edit, size: 20.0),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),