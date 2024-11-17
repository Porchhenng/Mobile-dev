import 'package:flutter/material.dart';
import 'package:w3_s3_practice/w6-s1-practice/EXERCISE-2/model/profile_tile_model.dart';

 
ProfileData ronanProfile = ProfileData(
    name: "Porchheng",
    position: "Flutter Developer",
    avatarUrl: 'assets/w6/witch.png',
    tiles: [
      TileData(icon: Icons.phone, title: "Phone Number", value: "+123 456 7890"),
      TileData(icon: Icons.location_on, title: "Address", value: "123 Cambodia"),
      TileData(icon: Icons.email, title: "Mail", value: "porchheng.cheng@cadt.edu"),
      TileData(icon: Icons.gamepad, title: "Game", value: "valorant, chess"),
      TileData(icon: Icons.sports_basketball, title: "Basketball", value: "Point Guard"),
      TileData(icon: Icons.book, title: "Read", value: "Murim Novel"),
      TileData(icon: Icons.code, title: "Web Dev", value: "Angular, Nestjs, Laravel"),
    ]);
