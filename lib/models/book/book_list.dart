import 'dart:collection';

import 'package:flutter/cupertino.dart';

import 'book.dart';

class BookProvider with ChangeNotifier {
  String? _searchString;
  set setSearchString(String data) {
    _searchString = data;
    notifyListeners();
  }

  UnmodifiableListView<BookProduct> get products => _searchString == null
      ? UnmodifiableListView(_products)
      : UnmodifiableListView(_products.where(
          (element) =>
              element.name
                  .toLowerCase()
                  .contains(_searchString!.toLowerCase().toString()) ||
              element.price
                  .toString()
                  .contains(_searchString!.toLowerCase().toString()) ||
              element.description
                  .toString()
                  .contains(_searchString!.toLowerCase().toString()),
        ));

  List<BookProduct> _products = [
    BookProduct(
        productId: "bo1",
        name: "Python Crash Course",
        isbn_no: "978-3-16-148410-0",
        brandName: 'Unknown',
        price: 244,
        size: 12,
        description:
            "Python Crash Course is the world's best-selling guide to the Python programming language. This fast-paced, thorough introduction to programming with Python will have you writing programs, solving problems, and making things that work in no time.",
        image:
            "https://m.media-amazon.com/images/I/71NUZ+rHN2L._AC_UY327_FMwebp_QL65_.jpg",
        author: "Eric Matthes",
        category: "CS Book",
        publication_date: "22-02-2011",
        color: const Color(0xFF3D82AE)),
    BookProduct(
        productId: "bo2",
        name: "Cracking The Interview",
        isbn_no: "658-3-16-148412-0",
        brandName: 'Unknown',
        price: 234,
        size: 8,
        description:
            "Available at a lower brandName:'Unknown',price from other sellers that may not offer free Prime shipping.I am not a recruiter. I am a software engineer.And as such, I know what it's like to be asked to whip up brilliant algorithms on the spot and then write flawless code on a whiteboard. I've been through this as a candidate and as an interviewer.",
        image:
            "https://images-na.ssl-images-amazon.com/images/I/41oYsXjLvZL._SY344_BO1,204,203,200_.jpg",
        author: "Gayle Laakmann McDowell",
        category: "CS Book",
        publication_date: "20-02-2012",
        color: const Color(0xFFD3A984)),
    BookProduct(
        productId: "bo3",
        name: "System Design Interview",
        isbn_no: "258-3-15-148412-0",
        brandName: 'Unknown',
        price: 330,
        size: 10,
        description:
            "The system design interview is considered to be the most complex and most difficult technical job interview by many.This book provides a step-by-step framework on how to tackle a system design question.",
        image:
            "https://images-na.ssl-images-amazon.com/images/I/41WOfByjSPL._SX331_BO1,204,203,200_.jpg",
        author: "Alex Xu",
        category: "CS Book",
        publication_date: "22-02-2016",
        color: const Color(0xFF989493)),
    BookProduct(
        productId: "bo4",
        name: "Interview with python",
        isbn_no: "858-3-13-148412-0",
        brandName: 'Unknown',
        price: 224,
        size: 11,
        description:
            "EPI is your comprehensive guide to interviewing for software development roles.The core of EPI is a collection of over 250 problems with detailed solutions. ",
        image:
            "https://images-na.ssl-images-amazon.com/images/I/41CUbGSthHL._SX348_BO1,204,203,200_.jpg",
        author: "Adnan Aziz",
        category: "CS Book",
        publication_date: "11-07-2017",
        color: const Color(0xFFE6B398)),
    BookProduct(
        productId: "bo5",
        name: "Introduction to Algorithm",
        isbn_no: "923-6-16-248412-0",
        brandName: 'Unknown',
        price: 350,
        size: 12,
        description:
            "The latest edition of the essential text and professional reference, with substantial new material on such topics as vEB trees, multithreaded algorithms, dynamic programming, and edge-based flow.",
        image:
            "https://images-na.ssl-images-amazon.com/images/I/41T0iBxY8FL._SX440_BO1,204,203,200_.jpg",
        author: "Thomas H. Coreman",
        category: "CS Book",
        publication_date: "17-01-2002",
        color: const Color(0xFFFB7883)),
    BookProduct(
      productId: "bo6",
      name: "Clean Code",
      isbn_no: "513-6-16-248412-0",
      brandName: 'Unknown',
      price: 25,
      size: 12,
      description:
          "Even bad code can function. But if code isn’t clean, it can bring a development organization to its knees. Every year, countless hours and significant resources are lost because of poorly written code.",
      image:
          "https://images-na.ssl-images-amazon.com/images/I/41xShlnTZTL._SX376_BO1,204,203,200_.jpg",
      author: "Robert C. Martin",
      category: "CS Book",
      publication_date: "27-05-2019",
      color: const Color(0xFFAEAEAE),
    ),
    BookProduct(
      productId: "bo7",
      name: "Legend",
      isbn_no: "143-7-26-988412-0",
      brandName: 'Unknown',
      price: 25,
      size: 12,
      description:
          "On May 2, 1968, a twelve-man Special Forces team covertly infiltrated a small clearing in the jungles of neutral Cambodia—where U.S. forces were forbidden to operate.",
      image:
          "https://m.media-amazon.com/images/I/61ZUz8KHWiL._AC_UY327_FMwebp_QL65_.jpg",
      author: "Eric Blehm",
      category: "Story Book",
      publication_date: "06-09-2008",
      color: const Color(0xFFAEAEAE),
    ),
    BookProduct(
      productId: "bo8",
      name: "James Patterson",
      isbn_no: "456-7-28-988412-0",
      brandName: 'Unknown',
      price: 25,
      size: 12,
      description:
          "Murder Beyond the Grave(with Andrew Bourelle): Stephen Small has it all: a Ferrari, fancy house, loving wife, and three boys.But the only thing he needs right now is enough air to breathe.",
      image:
          "https://m.media-amazon.com/images/I/81rLSm4t9uL._AC_UY327_FMwebp_QL65_.jpg",
      author: "James Patterson",
      category: "Story Book",
      publication_date: "23-08-2014",
      color: const Color(0xFFAEAEAE),
    ),
    BookProduct(
      productId: "bo9",
      name: "Video Game",
      isbn_no: "956-7-58-988412-0",
      brandName: 'Unknown',
      price: 25,
      size: 12,
      description:
          "With increasingly sophisticated video games being consumed by an enthusiastic and expanding audience, the pressure is on game developers like never before to deliver exciting stories and engaging characters.",
      image:
          "https://m.media-amazon.com/images/I/91kco9JvFNL._AC_UY327_FMwebp_QL65_.jpg",
      author: "Evan Skolnick",
      category: "Story Book",
      publication_date: "22-12-2013",
      color: const Color(0xFFAEAEAE),
    ),
    BookProduct(
      productId: "bo10",
      name: "Moanin at Midnight",
      isbn_no: "106-2-68-988412-2",
      brandName: 'Unknown',
      price: 25,
      size: 12,
      description:
          "One of the greatest artists the blues ever produced, Howlin' Wolf was a musical giant in every way. He stood six foot three, weighed almost three hundred pounds, wore size sixteen shoes, and poured out his darkest sorrows onstage in a voice that captured all the",
      image:
          "https://m.media-amazon.com/images/I/71JJj3dxJhL._AC_UY327_FMwebp_QL65_.jpg",
      author: "James Sergest",
      category: "Story Book",
      publication_date: "09-06-2015",
      color: const Color(0xFFAEAEAE),
    ),
    BookProduct(
      productId: "bo11",
      name: "Neverending Story",
      isbn_no: "356-2-68-988412-5",
      brandName: 'Unknown',
      price: 25,
      size: 12,
      description:
          "When Bastian happens upon an old book called The Neverending Story, he's swept into the magical world of Fantastica--so much that he finds he has actually become a character in the story! And when he realizes that this mysteriously enchanted world is in great danger, he also discovers that he is the one chosen to save it. Can Bastian overcome the barrier between reality and his",
      image:
          "https://m.media-amazon.com/images/I/A1x4NkK1s8L._AC_UY327_QL65_.jpg",
      author: "Michael Ende",
      category: "Story Book",
      publication_date: "19-05-2020",
      color: const Color(0xFFAEAEAE),
    ),
    BookProduct(
      productId: "bo12",
      name: "Prevail",
      isbn_no: "667-2-68-988412-7",
      brandName: 'Unknown',
      price: 25,
      size: 12,
      description:
          "It was the war that changed everything, and yet it’s been mostly forgotten: in 1935, Italy invaded Ethiopia. It dominated newspaper headlines and newsreels. It inspired mass marches in Harlem, a play on Broadway, and independence movements in Africa. As the British Navy sailed into the Mediterranean for a white-knuckle showdown with Italian ships, riots broke out in major cities all over the United States.",
      image:
          "https://m.media-amazon.com/images/I/91C6INB2XNL._AC_UY327_FMwebp_QL65_.jpg",
      author: "Jeff Pearce",
      category: "Story Book",
      publication_date: "13-02-2010",
      color: const Color(0xFFAEAEAE),
    ),
    BookProduct(
      productId: "bo13",
      name: "Everything an=bout chemistry",
      isbn_no: "865-4-98-188412-7",
      brandName: 'Unknown',
      price: 20,
      size: 12,
      description:
          "It was the war that changed everything, and yet it’s been mostly forgotten: in 1935, Italy invaded Ethiopia. It dominated newspaper headlines and newsreels. It inspired mass marches in Harlem, a play on Broadway, and independence movements in Africa. As the British Navy sailed into the Mediterranean for a white-knuckle showdown with Italian ships, riots broke out in major cities all over the United States.",
      image:
          "https://m.media-amazon.com/images/I/811dwe0VDZL._AC_UY327_FMwebp_QL65_.jpg",
      author: "Kindle",
      category: "Science Books",
      publication_date: "13-02-2010",
      color: const Color(0xFFAEAEAE),
    ),
    BookProduct(
      productId: "bo14",
      name: "Do the math",
      isbn_no: "265-4-98-188412-5",
      brandName: 'Unknown',
      price: 65,
      size: 12,
      description:
          "It was the war that changed everything, and yet it’s been mostly forgotten: in 1935, Italy invaded Ethiopia. It dominated newspaper headlines and newsreels. It inspired mass marches in Harlem, a play on Broadway, and independence movements in Africa. As the British Navy sailed into the Mediterranean for a white-knuckle showdown with Italian ships, riots broke out in major cities all over the United States.",
      image:
          "https://m.media-amazon.com/images/I/91k-cv1Ht8S._AC_UY327_FMwebp_QL65_.jpg",
      author: "Steven Clontz",
      category: "Science Books",
      publication_date: "13-02-2010",
      color: const Color(0xFFAEAEAE),
    ),
    BookProduct(
      productId: "bo15",
      name: "Math Refresher",
      isbn_no: "665-4-58-188412-5",
      brandName: 'Unknown',
      price: 30,
      size: 12,
      description:
          "It was the war that changed everything, and yet it’s been mostly forgotten: in 1935, Italy invaded Ethiopia. It dominated newspaper headlines and newsreels. It inspired mass marches in Harlem, a play on Broadway, and independence movements in Africa. As the British Navy sailed into the Mediterranean for a white-knuckle showdown with Italian ships, riots broke out in major cities all over the United States.",
      image:
          "https://m.media-amazon.com/images/I/713k0piZ0kL._AC_UY327_FMwebp_QL65_.jpg",
      author: "Richard W Fisher",
      category: "Science Books",
      publication_date: "23-03-2018",
      color: const Color(0xFFAEAEAE),
    ),
    BookProduct(
      productId: "bo16",
      name: "RELATIVITY",
      isbn_no: "985-7-78-188412-7",
      brandName: 'Unknown',
      price: 53,
      size: 12,
      description:
          "From the age of Galileo until the early years of the 20th century, scientists grappled with seemingly insurmountable paradoxes inherent in the theories of classical physics. With the publication of Albert Einstein's 'special' and 'general' theories of relativity, however, traditional approaches to solving the riddles of space and time crumbled.",
      image:
          "https://images-na.ssl-images-amazon.com/images/I/513eWRTa9hL._SY291_BO1,204,203,200_QL40_FMwebp_.jpg",
      author: "Albert EinsTEIN",
      category: "Science Books",
      publication_date: "18-10-2010",
      color: const Color(0xFFAEAEAE),
    ),
    BookProduct(
      productId: "bo17",
      name: "Quantum Physics",
      isbn_no: "945-7-78-188412-6",
      brandName: 'Unknown',
      price: 64,
      size: 12,
      description:
          "Award-winner scientist, Carl J. Pratt, presents the most exhaustive and clear introduction to the topic. “Quantum Physics for Beginners” peels away layers of mystery to reveal what is behind most modern technological innovations.",
      image:
          "https://m.media-amazon.com/images/I/71bLle0wLjS._AC_UY327_FMwebp_QL65_.jpg",
      author: "Carl j. Pratt",
      category: "Science Books",
      publication_date: "14-03-2021",
      color: const Color(0xFFAEAEAE),
    ),
    BookProduct(
      productId: "bo18",
      name: "The Science Book",
      isbn_no: "385-4-78-188412-4",
      brandName: 'Unknown',
      price: 55,
      size: 12,
      description:
          "It was the war that changed everything, and yet it’s been mostly forgotten: in 1935, Italy invaded Ethiopia. It dominated newspaper headlines and newsreels. It inspired mass marches in Harlem, a play on Broadway, and independence movements in Africa. As the British Navy sailed into the Mediterranean for a white-knuckle showdown with Italian ships, riots broke out in major cities all over the United States.",
      image:
          "https://m.media-amazon.com/images/I/81HRonyB+QL._AC_UY327_FMwebp_QL65_.jpg",
      author: "National Geographic",
      category: "Science Books",
      publication_date: "16-07-2016",
      color: const Color(0xFFAEAEAE),
    ),
    BookProduct(
      productId: "bo19",
      name: "Rabindranath Thakur poem's",
      isbn_no: "965-4-78-188412-9",
      brandName: 'Unknown',
      price: 75,
      size: 12,
      description:
          "The poems of Rabindranath Tagore are among the most haunting and tender in Indian and in world literature, expressing a profound and passionate human yearning.",
      image:
          "https://images-na.ssl-images-amazon.com/images/I/41BAksKTMCL._SX323_BO1,204,203,200_.jpg",
      author: "Rabindranath Thakur",
      category: "Poems Books",
      publication_date: "27-09-2005",
      color: const Color(0xFFAEAEAE),
    ),
    BookProduct(
      productId: "bo20",
      name: "Pillow Thoughts",
      isbn_no: "895-4-78-188412-4",
      brandName: 'Unknown',
      price: 35,
      size: 12,
      description:
          "Pillow Thoughts is a collection of poetry and prose about heartbreak, love, and raw emotions. It is divided into sections to read when you feel you need them most.",
      image:
          "https://m.media-amazon.com/images/I/71bUf4gWhnL._AC_UY327_FMwebp_QL65_.jpg",
      author: "Kindle",
      category: "Poems Books",
      publication_date: "29-08-2017",
      color: const Color(0xFFAEAEAE),
    ),
    BookProduct(
      productId: "bo21",
      name: "AMANDA GORMAN",
      isbn_no: "745-9-23-288432-5",
      brandName: 'Unknown',
      price: 82,
      size: 12,
      description:
          "Formerly named The Hill We Climb and Other Poems, the luminous poetry collection by #1 New York Times bestselling author and presidential inaugural poet Amanda Gorman captures a shipwrecked moment in time and transforms it into a lyric of hope and healing.",
      image:
          "https://m.media-amazon.com/images/I/91io14GlrxL._AC_UY327_FMwebp_QL65_.jpg",
      author: "AMANDA GORMAN",
      category: "Poems Books",
      publication_date: "07-12-2021",
      color: const Color(0xFFAEAEAE),
    ),
    BookProduct(
      productId: "bo22",
      name: "Healing is a gift",
      isbn_no: "565-6-25-388432-6",
      brandName: 'Unknown',
      price: 24,
      size: 12,
      description:
          "It was the war that changed everything, and yet it’s been mostly forgotten: in 1935, Italy invaded Ethiopia. It dominated newspaper headlines and newsreels. It inspired mass marches in Harlem, a play on Broadway, and independence movements in Africa. As the British Navy sailed into the Mediterranean for a white-knuckle showdown with Italian ships, riots broke out in major cities all over the United States.",
      image:
          "https://m.media-amazon.com/images/I/51fujkVCwnL._AC_UY327_FMwebp_QL65_.jpg",
      author: "Alexandra Vasiliu",
      category: "Poems Books",
      publication_date: "25-09-2021",
      color: const Color(0xFFAEAEAE),
    ),
    BookProduct(
      productId: "bo22",
      name: "150 Famous Poems",
      isbn_no: "875-7-25-388432-8",
      brandName: 'Unknown',
      price: 15,
      size: 12,
      description:
          "This great English Poetry Anthology contains 150 of the Most Famous Poems of the last centuries. Dating from the Middle Ages to the 20th century, these famous poems remain Masterpieces of English Literature and continue to inspire and influence people all over the world.",
      image:
          "https://m.media-amazon.com/images/I/61jba1+8wzL._AC_UY327_FMwebp_QL65_.jpg",
      author: "Poetry House",
      category: "Poems Books",
      publication_date: "01-08-2020",
      color: const Color(0xFFAEAEAE),
    ),
    BookProduct(
      productId: "bo23",
      name: "Self Love Poetry",
      isbn_no: "105-8-26-388432-9",
      brandName: 'Unknown',
      price: 36,
      size: 12,
      description:
          "In Self Love Poetry, Godfred explores concepts like authenticity, surrender, resilience, gratitude, believing in yourself, and of course, love, through 100 pairs of poems, each dedicated to a central theme.",
      image:
          "https://m.media-amazon.com/images/I/71wZCVGP30S._AC_UY327_FMwebp_QL65_.jpg",
      author: "Melody Godfred",
      category: "Poems Books",
      publication_date: "05-10-2021",
      color: const Color(0xFFAEAEAE),
    ),
  ];
}
