// // Praktikum 1: 

// // LANGKAH 1
// void main(){
// String test = "test2";
// if (test == "test1") {
//    print("Test1");
// } else If (test == "test2") {
//    print("Test2");
// } Else {
//    print("Something else");
// }
// if (test == "test2") print("Test2 again");
// }

// // LANGKAH 2
// void main() {
//   String test = "test2";
//   if (test == "test1") {
//     print("Test1");
//   } else if (test == "test2") {
//     print("Test2");
//   } else {
//     print("Something else");
//   }
//   if (test == "test2") {
//     print("Test2 again");
//   }
// }

// // LANGKAH 3
// void main() {
//   String test = "test2";
//   if (test == "test1") {
//     print("Test1");
//   } else if (test == "test2") {
//     print("Test2");
//   } else {
//     print("Something else");
//   }

//   if (test == "test2") {
//     print("Test2 again");
//   }

//   String test = "true";
//   if (test) {
//     print("Kebenaran");
//   }
// } 

// // Kode Yang Benar
void main() {
  String test = "test2";
  if (test == "test1") {
    print("Test1");
  } else if (test == "test2") {
    print("Test2");
  } else {
    print("Something else");
  }

  if (test == "test2") {
    print("Test2 again");
  }

  // Menambahkan kode ini
  test = "true";
  if (test == "true") {
    print("Kebenaran");
  }
}

