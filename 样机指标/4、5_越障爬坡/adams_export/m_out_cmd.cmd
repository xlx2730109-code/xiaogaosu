! CMD Version:2
! Version 2 enables expanded acceptable characters for object names.
! If unspecified, set to 1 or set to an invalid value, Adams View assumes traditional naming requirements.
!
!-------------------------- Default Units for Model ---------------------------!
!
!
defaults units  &
   length = meter  &
   angle = deg  &
   force = newton  &
   mass = kg  &
   time = sec
!
defaults units  &
   coordinate_system_type = cartesian  &
   orientation_type = body313
!
!------------------------ Default Attributes for Model ------------------------!
!
!
defaults attributes  &
   inheritance = bottom_up  &
   icon_visibility = off  &
   grid_visibility = off  &
   size_of_icons = 5.0E-02  &
   spacing_for_grid = 1.0
!
!------------------------------ Adams View Model ------------------------------!
!
!
model create  &
   model_name = MODEL_3xiaogaosufuyang26061702
!
view erase
!
!-------------------------------- Rigid Parts ---------------------------------!
!
! Create parts and their dependent markers and graphics
!
!----------------------------------- ground -----------------------------------!
!
!
! ****** Ground Part ******
!
defaults model  &
   part_name = ground
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.ground.MARKER_22  &
   adams_id = 22  &
   location = -0.1699497806, 0.1216350586, 1.2022814354  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.ground.MARKER_370  &
   adams_id = 370  &
   location = -0.1944725728, 0.1502350223, -8.5106656605E-02  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.ground.MARKER_440  &
   adams_id = 440  &
   location = 0.0, -0.2, 0.4  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.ground.MARKER_444  &
   adams_id = 444  &
   location = 0.0, -0.25, 1.2  &
   orientation = 270.0d, 90.0d, 90.0d
!
!------------------------------ _______________ -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702._______________  &
   adams_id = 2  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702._______________
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702._______________.PSMAR  &
   adams_id = 23  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702._______________.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702._______________.cm  &
   adams_id = 24  &
   location = -0.2242078156, 0.1535620438, -2.9795626058  &
   orientation = 0.0d, 12.4489968422d, 0.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702._______________.MARKER_439  &
   adams_id = 439  &
   location = 0.0, -0.2, 0.4  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702._______________.MARKER_442  &
   adams_id = 442  &
   location = 0.0, 0.15, -5.0E-02  &
   orientation = 90.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702._______________  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702._______________  &
   active = off  &
   color = WHITE  &
   visibility = off
!
!----------------------------------- PART3 ------------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.PART3  &
   adams_id = 3  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.PART3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.PART3.PSMAR  &
   adams_id = 25  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.PART3.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.PART3.cm  &
   adams_id = 26  &
   location = -0.1796284178, 0.1038448312, 0.1866409953  &
   orientation = 90.0019948344d, 90.1814621993d, 4.2659599714d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.PART3.MARKER_361  &
   adams_id = 361  &
   location = 0.1548274272, 5.8331595216E-02, 9.929019882E-02  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.PART3.MARKER_364  &
   adams_id = 364  &
   location = 0.1548274272, 5.4548596763E-02, 0.2993044269  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.PART3.MARKER_366  &
   adams_id = 366  &
   location = 0.2103274272, 0.1107490431, 0.2290085534  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.PART3.MARKER_368  &
   adams_id = 368  &
   location = 0.2103274272, 0.1144605538, 2.8937231488E-02  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.PART3.MARKER_369  &
   adams_id = 369  &
   location = -0.1944725728, 0.1502350223, -8.5106656605E-02  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.PART3.MARKER_371  &
   adams_id = 371  &
   location = 4.7827427221E-02, 5.4548596763E-02, 0.2993044269  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.PART3.MARKER_373  &
   adams_id = 373  &
   location = -7.6725727786E-03, 0.1106858869, 0.2289717964  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.PART3.MARKER_376  &
   adams_id = 376  &
   location = -8.1725727786E-03, 0.1144634432, 2.8862272724E-02  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.PART3.MARKER_378  &
   adams_id = 378  &
   location = 4.7827427221E-02, 5.8331595216E-02, 9.929019882E-02  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.PART3.MARKER_380  &
   adams_id = 380  &
   location = -0.5697725728, 0.1106858869, 0.2289717964  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.PART3.MARKER_382  &
   adams_id = 382  &
   location = -0.5697725728, 0.1144634432, 2.8862272724E-02  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.PART3.MARKER_384  &
   adams_id = 384  &
   location = -0.5137725728, 5.8331595216E-02, 9.929019882E-02  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.PART3.MARKER_386  &
   adams_id = 386  &
   location = -0.5137725728, 5.4548596763E-02, 0.2993044269  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.PART3.MARKER_388  &
   adams_id = 388  &
   location = -0.4067725728, 5.4548596763E-02, 0.2993044269  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.PART3.MARKER_390  &
   adams_id = 390  &
   location = -0.4067725728, 5.8331595216E-02, 9.929019882E-02  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.PART3.MARKER_392  &
   adams_id = 392  &
   location = -0.3512725728, 0.1107490431, 0.2290085534  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.PART3.MARKER_394  &
   adams_id = 394  &
   location = -0.3512725728, 0.1144605538, 2.8937231488E-02  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.PART3.MARKER_431  &
   adams_id = 431  &
   location = -0.5083117437, 0.1283104905, 0.4130678258  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.PART3.MARKER_433  &
   adams_id = 433  &
   location = -0.1926725728, 8.4801042613E-02, -3.6335309431E-02  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.PART3.MARKER_441  &
   adams_id = 441  &
   location = 0.0, 0.15, -5.0E-02  &
   orientation = 90.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.PART3  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.PART3  &
   color = WHITE
!
!----------------------------------- PART4 ------------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.PART4  &
   adams_id = 4  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.PART4
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.PART4.PSMAR  &
   adams_id = 27  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.PART4.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.PART4.cm  &
   adams_id = 28  &
   location = -0.1794887979, 8.9499440622E-02, 0.9451491693  &
   orientation = 90.0047779353d, 90.1463522042d, 4.6895999358d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.PART4.MARKER_10  &
   adams_id = 10  &
   location = 0.2103274272, 9.639239434E-02, 0.9880715178  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.PART4.MARKER_12  &
   adams_id = 12  &
   location = 0.2103274272, 0.100103905, 0.7880001959  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.PART4.MARKER_21  &
   adams_id = 21  &
   location = -0.1699497806, 0.1216350586, 1.2022814354  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.PART4.MARKER_396  &
   adams_id = 396  &
   location = -7.6725727786E-03, 9.6329238101E-02, 0.9880347608  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.PART4.MARKER_398  &
   adams_id = 398  &
   location = -8.1725727786E-03, 0.1001067944, 0.7879252371  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.PART4.MARKER_400  &
   adams_id = 400  &
   location = 4.7827427221E-02, 4.3974946449E-02, 0.8583531632  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.PART4.MARKER_402  &
   adams_id = 402  &
   location = 4.7827427221E-02, 4.0191947995E-02, 1.0583673913  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.PART4.MARKER_404  &
   adams_id = 404  &
   location = -0.5697725728, 0.1001067944, 0.7879252371  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.PART4.MARKER_406  &
   adams_id = 406  &
   location = -0.5697725728, 9.6329238101E-02, 0.9880347608  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.PART4.MARKER_408  &
   adams_id = 408  &
   location = 0.1548274272, 4.0191947995E-02, 1.0583673913  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.PART4.MARKER_410  &
   adams_id = 410  &
   location = 0.1545274272, 4.3974946449E-02, 0.8583531632  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.PART4.MARKER_411  &
   adams_id = 411  &
   location = -0.3512725728, 0.100103905, 0.7880001959  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.PART4.MARKER_414  &
   adams_id = 414  &
   location = -0.3512725728, 9.639239434E-02, 0.9880715178  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.PART4.MARKER_416  &
   adams_id = 416  &
   location = -0.4067725728, 4.3974946449E-02, 0.8583531632  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.PART4.MARKER_418  &
   adams_id = 418  &
   location = -0.4067725728, 4.0191947995E-02, 1.0583673913  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.PART4.MARKER_420  &
   adams_id = 420  &
   location = -0.5137725728, 4.0191947995E-02, 1.0583673913  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.PART4.MARKER_422  &
   adams_id = 422  &
   location = -0.5137725728, 4.3974946449E-02, 0.8583531632  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.PART4.MARKER_423  &
   adams_id = 423  &
   location = -0.4814311284, 0.1228133008, 0.7037145651  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.PART4.MARKER_428  &
   adams_id = 428  &
   location = -0.185474351, 6.237916595E-02, 1.1491513904  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.PART4  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.PART4  &
   color = WHITE
!
!----------------------------- ________________3 ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________3  &
   adams_id = 6  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.________________3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________3.PSMAR  &
   adams_id = 31  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________3.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________3.cm  &
   adams_id = 32  &
   location = -0.1806741579, 0.1126734857, 0.5582906651  &
   orientation = 89.9928618461d, 89.9044955363d, 0.990025787d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________3.MARKER_424  &
   adams_id = 424  &
   location = -0.4814311284, 0.1228133008, 0.7037145651  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________3.MARKER_426  &
   adams_id = 426  &
   location = -0.1926725728, 6.0405208558E-02, 0.708358001  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________3.MARKER_435  &
   adams_id = 435  &
   location = -0.1926725728, 6.6394937839E-02, 0.4057650027  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________3.PSMAR1  &
   adams_id = 33  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________3.PSMAR1  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________3.MARKER_432  &
   adams_id = 432  &
   location = -0.5083117437, 0.1283104905, 0.4130678258  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________3.PSMAR2  &
   adams_id = 29  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________3.PSMAR2  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________3.MARKER_445  &
   adams_id = 445  &
   location = 1.999, -0.1586914978, 1.561088623  &
   orientation = 90.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________3  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________3  &
   color = WHITE
!
!----------------------------- ________________5 ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________5  &
   adams_id = 8  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.________________5
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________5.PSMAR  &
   adams_id = 35  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________5.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________5.cm  &
   adams_id = 36  &
   location = 1.882487081E-02, -9.8473677324E-02, 0.7230313994  &
   orientation = 359.9984774533d, 103.0927459957d, 359.9942930149d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________5.MARKER_237  &
   adams_id = 237  &
   location = 3.3827427221E-02, 3.2667836758E-02, 0.7285320851  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________5.MARKER_240  &
   adams_id = 240  &
   location = 3.3327427221E-02, -2.1297092496E-02, 0.7597287332  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________5  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________5  &
   color = WHITE
!
!----------------------------- ________________6 ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________6  &
   adams_id = 9  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.________________6
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________6.PSMAR  &
   adams_id = 37  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________6.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________6.cm  &
   adams_id = 38  &
   location = 0.1838248973, -0.1137335672, 0.8374450181  &
   orientation = 359.9985569197d, 81.897255626d, 359.9947059565d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________6.MARKER_15  &
   adams_id = 15  &
   location = 0.1988274272, 1.0525439499E-02, 0.7951596676  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________6.MARKER_17  &
   adams_id = 17  &
   location = 0.1988274272, -2.8509875046E-02, 0.843756876  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________6  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________6  &
   color = WHITE
!
!----------------------------- ________________7 ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________7  &
   adams_id = 10  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.________________7
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________7.PSMAR  &
   adams_id = 39  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________7.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________7.cm  &
   adams_id = 40  &
   location = 0.1838248957, -0.107732874, 1.0467531067  &
   orientation = 359.9984742497d, 71.3649984869d, 359.99503054d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________7.MARKER_1  &
   adams_id = 1  &
   location = 0.1988274272, -2.2791254486E-02, 1.0373804282  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________7.MARKER_3  &
   adams_id = 3  &
   location = 0.1988274272, 6.7032348522E-03, 0.9824666818  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________7  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________7  &
   color = WHITE
!
!----------------------------- ________________8 ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________8  &
   adams_id = 11  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.________________8
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________8.PSMAR  &
   adams_id = 41  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________8.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________8.cm  &
   adams_id = 42  &
   location = 0.1838248975, -9.9376913793E-02, 7.8382051029E-02  &
   orientation = 359.9985561931d, 81.8972462436d, 359.9947071979d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________8.MARKER_346  &
   adams_id = 346  &
   location = 0.1988274272, -1.4153226279E-02, 8.4693911595E-02  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________8.MARKER_350  &
   adams_id = 350  &
   location = 0.1988274272, 2.4882088267E-02, 3.6096703211E-02  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________8  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________8  &
   color = WHITE
!
!----------------------------- ________________9 ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________9  &
   adams_id = 12  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.________________9
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________9.PSMAR  &
   adams_id = 43  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________9.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________9.cm  &
   adams_id = 44  &
   location = 1.8824857652E-02, -9.863480827E-02, 0.1693446772  &
   orientation = 359.9983736699d, 108.1958870784d, 359.9939600909d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________9.MARKER_328  &
   adams_id = 328  &
   location = 3.3827427221E-02, -2.5028014155E-02, 0.2127614921  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________9.MARKER_330  &
   adams_id = 330  &
   location = 3.3827427221E-02, 3.1497902085E-02, 0.1864885928  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________9  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________9  &
   color = WHITE
!
!----------------------------- ________________10 -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________10  &
   adams_id = 13  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.________________10
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________10.PSMAR  &
   adams_id = 45  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________10.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________10.cm  &
   adams_id = 46  &
   location = -0.5427751423, -9.863480827E-02, 0.1693446772  &
   orientation = 359.9983736699d, 108.1958870784d, 359.9939600909d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________10.MARKER_318  &
   adams_id = 318  &
   location = -0.5277725728, 3.1497902085E-02, 0.1864885928  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________10.MARKER_319  &
   adams_id = 319  &
   location = -0.5277725728, -2.5028014155E-02, 0.2127614921  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________10  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________10  &
   color = WHITE
!
!----------------------------- ________________11 -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________11  &
   adams_id = 14  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.________________11
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________11.PSMAR  &
   adams_id = 47  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________11.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________11.cm  &
   adams_id = 48  &
   location = -0.3777751041, -9.3376221112E-02, 0.2876901387  &
   orientation = 359.9984734842d, 71.3649890366d, 359.9950319387d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________11.MARKER_286  &
   adams_id = 286  &
   location = -0.3627725728, -8.4346057185E-03, 0.2783174638  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________11.MARKER_289  &
   adams_id = 289  &
   location = -0.3627725728, 2.105988362E-02, 0.2234037174  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________11  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________11  &
   color = WHITE
!
!----------------------------- ________________12 -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________12  &
   adams_id = 15  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.________________12
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________12.PSMAR  &
   adams_id = 49  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________12.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________12.cm  &
   adams_id = 50  &
   location = -0.5427751296, -8.4117028403E-02, -3.6031565061E-02  &
   orientation = 359.9984773407d, 103.0927460351d, 359.9942932331d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________12.MARKER_306  &
   adams_id = 306  &
   location = -0.5277725728, -6.9404437283E-03, 6.6576882088E-04  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________12.MARKER_308  &
   adams_id = 308  &
   location = -0.5277725728, 4.7024485526E-02, -3.0530879317E-02  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________12  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________12  &
   color = WHITE
!
!----------------------------- ________________13 -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________13  &
   adams_id = 16  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.________________13
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________13.PSMAR  &
   adams_id = 51  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________13.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________13.cm  &
   adams_id = 52  &
   location = 1.8824857658E-02, -0.112991457, 0.9284076416  &
   orientation = 359.9983736727d, 108.1958870783d, 359.9939600973d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________13.MARKER_226  &
   adams_id = 226  &
   location = 3.3827427221E-02, -3.9384662922E-02, 0.9718244566  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________13.MARKER_228  &
   adams_id = 228  &
   location = 3.3327427221E-02, 1.7141253317E-02, 0.9455515573  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________13  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________13  &
   color = WHITE
!
!----------------------------- ________________14 -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________14  &
   adams_id = 17  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.________________14
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________14.PSMAR  &
   adams_id = 53  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________14.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________14.cm  &
   adams_id = 54  &
   location = -0.3777751043, -0.107732874, 1.0467531067  &
   orientation = 359.9984742497d, 71.3649984869d, 359.99503054d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________14.MARKER_245  &
   adams_id = 245  &
   location = -0.3627725728, -2.2791254486E-02, 1.0373804282  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________14.MARKER_247  &
   adams_id = 247  &
   location = -0.3627725728, 6.7032348522E-03, 0.9824666818  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________14  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________14  &
   color = WHITE
!
!----------------------------- ________________15 -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________15  &
   adams_id = 18  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.________________15
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________15.PSMAR  &
   adams_id = 55  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________15.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________15.cm  &
   adams_id = 56  &
   location = -0.5427751294, -9.8473682884E-02, 0.7230314002  &
   orientation = 359.9984782236d, 103.0927556902d, 359.9942920024d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________15.MARKER_278  &
   adams_id = 278  &
   location = -0.5282725728, -2.1297092496E-02, 0.7597287332  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________15.MARKER_280  &
   adams_id = 280  &
   location = -0.5277725728, 3.2667836758E-02, 0.7285320851  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________15  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________15  &
   color = WHITE
!
!----------------------------- ________________16 -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________16  &
   adams_id = 19  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.________________16
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________16.PSMAR  &
   adams_id = 57  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________16.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________16.cm  &
   adams_id = 58  &
   location = -0.5427751426, -0.1129914626, 0.928407642  &
   orientation = 359.9983744447d, 108.1958969462d, 359.9939591165d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________16.MARKER_255  &
   adams_id = 255  &
   location = -0.5277725728, -3.9384662922E-02, 0.9718244566  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________16.MARKER_260  &
   adams_id = 260  &
   location = -0.5277725728, 1.7141253317E-02, 0.9455515573  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________16  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________16  &
   color = WHITE
!
!----------------------------- ________________17 -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________17  &
   adams_id = 20  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.________________17
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________17.PSMAR  &
   adams_id = 59  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________17.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________17.cm  &
   adams_id = 60  &
   location = 0.1838248959, -9.337622111E-02, 0.2876901387  &
   orientation = 359.9984734828d, 71.3649890362d, 359.9950319364d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________17.MARKER_358  &
   adams_id = 358  &
   location = 0.1988274272, 2.105988362E-02, 0.2234037174  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________17.MARKER_360  &
   adams_id = 360  &
   location = 0.1988274272, -8.4346057185E-03, 0.2783174638  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________17  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________17  &
   color = WHITE
!
!----------------------------- ________________18 -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________18  &
   adams_id = 21  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.________________18
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________18.PSMAR  &
   adams_id = 61  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________18.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________18.cm  &
   adams_id = 62  &
   location = -0.3777751025, -0.1137335626, 0.8374450155  &
   orientation = 359.9985561944d, 81.8972462439d, 359.9947072005d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________18.MARKER_265  &
   adams_id = 265  &
   location = -0.3627725728, -2.8509875046E-02, 0.843756876  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________18.MARKER_269  &
   adams_id = 269  &
   location = -0.3627725728, 1.0525439499E-02, 0.7951596676  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________18  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________18  &
   color = WHITE
!
!----------------------------- ________________19 -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________19  &
   adams_id = 22  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.________________19
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________19.PSMAR  &
   adams_id = 63  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________19.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________19.cm  &
   adams_id = 64  &
   location = -0.3777751025, -9.9376913793E-02, 7.8382051029E-02  &
   orientation = 359.9985561931d, 81.8972462436d, 359.9947071979d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________19.MARKER_298  &
   adams_id = 298  &
   location = -0.3627725728, -1.4153226279E-02, 8.4693911595E-02  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________19.MARKER_299  &
   adams_id = 299  &
   location = -0.3627725728, 2.4882088267E-02, 3.6096703211E-02  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________19  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________19  &
   color = WHITE
!
!----------------------------- ________________20 -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________20  &
   adams_id = 23  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.________________20
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________20.PSMAR  &
   adams_id = 65  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________20.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________20.cm  &
   adams_id = 66  &
   location = 1.8824870448E-02, -8.4117028403E-02, -3.6031565061E-02  &
   orientation = 359.9984773435d, 103.0927460351d, 359.9942932392d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________20.MARKER_338  &
   adams_id = 338  &
   location = 3.3827427221E-02, 4.7024485526E-02, -3.0530879317E-02  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________20.MARKER_340  &
   adams_id = 340  &
   location = 3.3827427221E-02, -6.9404437283E-03, 6.6576882088E-04  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________20  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________20  &
   color = WHITE
!
!------------------------------------ NONE ------------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE  &
   adams_id = 24  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE.PSMAR  &
   adams_id = 67  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE.cm  &
   adams_id = 68  &
   location = 0.1838274542, 5.302475204E-02, 0.9884858413  &
   orientation = 180.0001169333d, 87.6965828066d, 89.9990923582d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE.MARKER_4  &
   adams_id = 4  &
   location = 0.1988274272, 6.7032348522E-03, 0.9824666818  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE.MARKER_9  &
   adams_id = 9  &
   location = 0.2103274272, 9.639239434E-02, 0.9880715178  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE.MARKER_218  &
   adams_id = 218  &
   location = 0.1988274272, 4.0226543206E-02, 0.9955887166  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE  &
   color = WHITE
!
!----------------------------------- NONE_2 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_2  &
   adams_id = 25  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_2.PSMAR  &
   adams_id = 69  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_2.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_2.cm  &
   adams_id = 70  &
   location = 0.1838274323, 5.723252905E-02, 0.7945549692  &
   orientation = 180.0001015215d, 95.842003347d, 89.9991175215d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_2.MARKER_11  &
   adams_id = 11  &
   location = 0.2103274272, 0.100103905, 0.7880001959  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_2.MARKER_13  &
   adams_id = 13  &
   location = 0.1988274272, 4.5569767716E-02, 0.8033995135  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_2.MARKER_16  &
   adams_id = 16  &
   location = 0.1988274272, 1.0525439499E-02, 0.7951596676  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_2  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_2  &
   color = WHITE
!
!----------------------------------- NONE_3 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_3  &
   adams_id = 26  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_3.PSMAR  &
   adams_id = 71  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_3.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_3.cm  &
   adams_id = 72  &
   location = 0.1838273792, 4.6134304277E-05, 0.858564208  &
   orientation = 180.000173054d, 62.5904757768d, 89.9997808045d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_3.MARKER_18  &
   adams_id = 18  &
   location = 0.1988274272, -2.8509875046E-02, 0.843756876  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_3.MARKER_19  &
   adams_id = 19  &
   location = 0.1988274272, 2.8601835103E-02, 0.8733715741  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_3  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_3  &
   color = WHITE
!
!----------------------------------- NONE_4 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_4  &
   adams_id = 27  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_4
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_4.PSMAR  &
   adams_id = 73  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_4.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_4.cm  &
   adams_id = 74  &
   location = 1.8827426424E-02, 5.6736511372E-02, 0.9703333391  &
   orientation = 180.0001197249d, 63.0571723663d, 89.9989483505d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_4.MARKER_227  &
   adams_id = 227  &
   location = 3.3327427221E-02, 1.7141253317E-02, 0.9455515573  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_4.MARKER_230  &
   adams_id = 230  &
   location = 3.3827427221E-02, 4.2142662162E-02, 0.9714538652  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_4.MARKER_395  &
   adams_id = 395  &
   location = -7.6725727786E-03, 9.6329238101E-02, 0.9880347608  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_4  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_4  &
   color = WHITE
!
!----------------------------------- NONE_5 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_5  &
   adams_id = 28  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_5
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_5.PSMAR  &
   adams_id = 75  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_5.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_5.cm  &
   adams_id = 76  &
   location = 1.8827379229E-02, -2.2084128742E-02, 0.9989426104  &
   orientation = 2.8564621078E-04d, 147.4645363722d, 270.0003803398d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_5.MARKER_224  &
   adams_id = 224  &
   location = 2.7327427222E-02, -1.1949799156E-02, 1.0306322454  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_5.MARKER_225  &
   adams_id = 225  &
   location = 3.3827427221E-02, -3.9384662922E-02, 0.9718244566  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_5  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_5  &
   color = WHITE
!
!----------------------------------- NONE_6 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_6  &
   adams_id = 29  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_6
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_6.PSMAR  &
   adams_id = 77  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_6.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_6.cm  &
   adams_id = 78  &
   location = 0.1838273792, 5.6769391464E-03, 1.0523558982  &
   orientation = 180.0001735879d, 62.2525992093d, 89.9997796514d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_6.MARKER_2  &
   adams_id = 2  &
   location = 0.1988274272, -2.2791254486E-02, 1.0373804282  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_6.MARKER_6  &
   adams_id = 6  &
   location = 0.1988274272, 3.4144824031E-02, 1.0673314005  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_6  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_6  &
   color = WHITE
!
!----------------------------------- NONE_7 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_7  &
   adams_id = 30  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_7
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_7.PSMAR  &
   adams_id = 79  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_7.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_7.cm  &
   adams_id = 80  &
   location = 1.8827468468E-02, 3.0918220235E-02, 0.8007601656  &
   orientation = 359.9996682026d, 23.1681363906d, 359.9984001516d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_7.MARKER_232  &
   adams_id = 232  &
   location = 5.7327427221E-02, 3.0930189569E-02, 0.8354778761  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_7.MARKER_233  &
   adams_id = 233  &
   location = 3.3827427221E-02, 7.9177554541E-03, 0.8170460119  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_7.MARKER_235  &
   adams_id = 235  &
   location = 3.3827427221E-02, 5.1116910333E-02, 0.7594453781  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_7  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_7  &
   color = WHITE
!
!----------------------------------- NONE_8 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_8  &
   adams_id = 31  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_8
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_8.PSMAR  &
   adams_id = 81  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_8.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_8.cm  &
   adams_id = 82  &
   location = 1.8827454908E-02, 1.9246762803E-02, 1.011337923  &
   orientation = 359.9996783586d, 26.9716295817d, 359.9982368608d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_8.MARKER_222  &
   adams_id = 222  &
   location = 5.6827427221E-02, 1.6954607883E-02, 1.0459790714  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_8.MARKER_223  &
   adams_id = 223  &
   location = 2.7327427222E-02, -1.1949799156E-02, 1.0306322454  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_8.MARKER_229  &
   adams_id = 229  &
   location = 3.3827427221E-02, 4.2142662162E-02, 0.9714538652  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_8  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_8  &
   color = WHITE
!
!----------------------------------- NONE_9 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_9  &
   adams_id = 32  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_9
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_9.PSMAR  &
   adams_id = 83  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_9.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_9.cm  &
   adams_id = 84  &
   location = 0.1838274545, 4.5008859172E-02, 1.0413269054  &
   orientation = 180.0010311917d, 8.8538263199d, 179.9970235308d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_9.MARKER_5  &
   adams_id = 5  &
   location = 0.1988274272, 3.4144824031E-02, 1.0673314005  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_9.MARKER_8  &
   adams_id = 8  &
   location = 0.1903274272, 6.3429288108E-02, 1.0707557111  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_9.MARKER_217  &
   adams_id = 217  &
   location = 0.1988274272, 4.0226543206E-02, 0.9955887166  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_9  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_9  &
   color = WHITE
!
!---------------------------------- NONE_10 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_10  &
   adams_id = 33  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_10
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_10.PSMAR  &
   adams_id = 85  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_10.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_10.cm  &
   adams_id = 86  &
   location = 4.9494986323E-02, 3.7272172668E-02, 0.8466002702  &
   orientation = 131.5922028125d, 40.6630367569d, 49.4626591953d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_10.MARKER_231  &
   adams_id = 231  &
   location = 5.7327427221E-02, 3.0930189569E-02, 0.8354778761  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_10.MARKER_399  &
   adams_id = 399  &
   location = 4.7827427221E-02, 4.3974946449E-02, 0.8583531632  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_10  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_10  &
   color = WHITE
!
!---------------------------------- NONE_11 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_11  &
   adams_id = 34  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_11
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_11.PSMAR  &
   adams_id = 87  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_11.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_11.cm  &
   adams_id = 88  &
   location = 4.949497496E-02, 2.8252611298E-02, 1.0520027806  &
   orientation = 147.6884999675d, 65.7435679726d, 104.583821979d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_11.MARKER_221  &
   adams_id = 221  &
   location = 5.6827427221E-02, 1.6954607883E-02, 1.0459790714  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_11.MARKER_401  &
   adams_id = 401  &
   location = 4.7827427221E-02, 4.0191947995E-02, 1.0583673913  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_11  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_11  &
   color = WHITE
!
!---------------------------------- NONE_12 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_12  &
   adams_id = 35  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_12
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_12.PSMAR  &
   adams_id = 89  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_12.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_12.cm  &
   adams_id = 90  &
   location = 0.1531598789, 5.0676830152E-02, 0.8701064965  &
   orientation = 131.5943471564d, 40.6647988098d, 310.4958111379d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_12.MARKER_219  &
   adams_id = 219  &
   location = 0.1903274272, 5.7019703329E-02, 0.8812284504  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_12.MARKER_409  &
   adams_id = 409  &
   location = 0.1545274272, 4.3974946449E-02, 0.8583531632  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_12  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_12  &
   color = WHITE
!
!---------------------------------- NONE_13 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_13  &
   adams_id = 36  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_13
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_13.PSMAR  &
   adams_id = 91  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_13.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_13.cm  &
   adams_id = 92  &
   location = 0.1531598677, 5.2130876612E-02, 1.0647329035  &
   orientation = 147.6892189669d, 65.745731168d, 104.5436690625d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_13.MARKER_7  &
   adams_id = 7  &
   location = 0.1903274272, 6.3429288108E-02, 1.0707557111  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_13.MARKER_407  &
   adams_id = 407  &
   location = 0.1548274272, 4.0191947995E-02, 1.0583673913  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_13  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_13  &
   color = WHITE
!
!---------------------------------- NONE_14 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_14  &
   adams_id = 37  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_14
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_14.PSMAR  &
   adams_id = 93  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_14.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_14.cm  &
   adams_id = 94  &
   location = 0.1838274548, 4.3310241932E-02, 0.8493315455  &
   orientation = 180.1317099268d, 6.857157289E-02d, 179.8663297866d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_14.MARKER_14  &
   adams_id = 14  &
   location = 0.1988274272, 4.5569767716E-02, 0.8033995135  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_14.MARKER_20  &
   adams_id = 20  &
   location = 0.1988274272, 2.8601835103E-02, 0.8733715741  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_14.MARKER_220  &
   adams_id = 220  &
   location = 0.1903274272, 5.7019703329E-02, 0.8812284504  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_14  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_14  &
   color = WHITE
!
!---------------------------------- NONE_15 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_15  &
   adams_id = 38  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_15
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_15.PSMAR  &
   adams_id = 95  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_15.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_15.cm  &
   adams_id = 96  &
   location = 1.8827379229E-02, -6.6895331497E-03, 0.7883874485  &
   orientation = 3.3830938204E-04d, 152.9928627485d, 270.0004409473d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_15.MARKER_234  &
   adams_id = 234  &
   location = 3.3827427221E-02, 7.9177554541E-03, 0.8170460119  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_15.MARKER_239  &
   adams_id = 239  &
   location = 3.3327427221E-02, -2.1297092496E-02, 0.7597287332  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_15  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_15  &
   color = WHITE
!
!---------------------------------- NONE_16 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_16  &
   adams_id = 39  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_16
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_16.PSMAR  &
   adams_id = 97  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_16.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_16.cm  &
   adams_id = 98  &
   location = 1.8827419873E-02, 6.5582740473E-02, 0.7616761939  &
   orientation = 180.0001542822d, 49.8998598114d, 89.9989121015d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_16.MARKER_236  &
   adams_id = 236  &
   location = 3.3827427221E-02, 5.1116910333E-02, 0.7594453781  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_16.MARKER_238  &
   adams_id = 238  &
   location = 3.3827427221E-02, 3.2667836758E-02, 0.7285320851  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_16.MARKER_397  &
   adams_id = 397  &
   location = -8.1725727786E-03, 0.1001067944, 0.7879252371  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_16  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_16  &
   color = WHITE
!
!---------------------------------- NONE_17 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_17  &
   adams_id = 40  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_17
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_17.PSMAR  &
   adams_id = 99  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_17.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_17.cm  &
   adams_id = 100  &
   location = -0.3777726208, 5.6769391464E-03, 1.0523558982  &
   orientation = 180.0001735879d, 62.2525992093d, 89.9997796514d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_17.MARKER_244  &
   adams_id = 244  &
   location = -0.3627725728, 3.4144824031E-02, 1.0673314005  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_17.MARKER_246  &
   adams_id = 246  &
   location = -0.3627725728, -2.2791254486E-02, 1.0373804282  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_17  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_17  &
   color = WHITE
!
!---------------------------------- NONE_18 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_18  &
   adams_id = 41  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_18
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_18.PSMAR  &
   adams_id = 101  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_18.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_18.cm  &
   adams_id = 102  &
   location = -0.5427725451, 1.9246762803E-02, 1.011337923  &
   orientation = 359.9996783586d, 26.9716295817d, 359.9982368608d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_18.MARKER_252  &
   adams_id = 252  &
   location = -0.5042725728, 1.6954607883E-02, 1.0459790714  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_18.MARKER_253  &
   adams_id = 253  &
   location = -0.5277725728, -4.7838786536E-03, 1.0260606392  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_18.MARKER_257  &
   adams_id = 257  &
   location = -0.5277725728, 4.2142662162E-02, 0.9714538652  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_18  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_18  &
   color = WHITE
!
!---------------------------------- NONE_19 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_19  &
   adams_id = 42  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_19
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_19.PSMAR  &
   adams_id = 103  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_19.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_19.cm  &
   adams_id = 104  &
   location = -0.3777725455, 4.5008859172E-02, 1.0413269054  &
   orientation = 180.0010311917d, 8.8538263199d, 179.9970235308d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_19.MARKER_242  &
   adams_id = 242  &
   location = -0.3712725728, 6.3429288108E-02, 1.0707557111  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_19.MARKER_243  &
   adams_id = 243  &
   location = -0.3627725728, 3.4144824031E-02, 1.0673314005  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_19.MARKER_249  &
   adams_id = 249  &
   location = -0.3627725728, 4.0226543206E-02, 0.9955887166  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_19  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_19  &
   color = WHITE
!
!---------------------------------- NONE_20 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_20  &
   adams_id = 43  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_20
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_20.PSMAR  &
   adams_id = 105  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_20.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_20.cm  &
   adams_id = 106  &
   location = -0.5121050137, 3.7272172668E-02, 0.8466002702  &
   orientation = 131.5922028125d, 40.6630367569d, 49.4626591954d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_20.MARKER_271  &
   adams_id = 271  &
   location = -0.5042725728, 3.0930189569E-02, 0.8354778761  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_20.MARKER_421  &
   adams_id = 421  &
   location = -0.5137725728, 4.3974946449E-02, 0.8583531632  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_20  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_20  &
   color = WHITE
!
!---------------------------------- NONE_21 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_21  &
   adams_id = 44  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_21
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_21.PSMAR  &
   adams_id = 107  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_21.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_21.cm  &
   adams_id = 108  &
   location = -0.4084401211, 5.0676830152E-02, 0.8701064965  &
   orientation = 131.5943471564d, 40.6647988098d, 310.4958111379d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_21.MARKER_261  &
   adams_id = 261  &
   location = -0.3712725728, 5.7019703329E-02, 0.8812284504  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_21.MARKER_415  &
   adams_id = 415  &
   location = -0.4067725728, 4.3974946449E-02, 0.8583531632  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_21  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_21  &
   color = WHITE
!
!---------------------------------- NONE_22 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_22  &
   adams_id = 45  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_22
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_22.PSMAR  &
   adams_id = 109  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_22.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_22.cm  &
   adams_id = 110  &
   location = -0.512105025, 2.8252611298E-02, 1.0520027806  &
   orientation = 147.6884999675d, 65.7435679726d, 104.5838219789d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_22.MARKER_251  &
   adams_id = 251  &
   location = -0.5042725728, 1.6954607883E-02, 1.0459790714  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_22.MARKER_419  &
   adams_id = 419  &
   location = -0.5137725728, 4.0191947995E-02, 1.0583673913  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_22  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_22  &
   color = WHITE
!
!---------------------------------- NONE_23 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_23  &
   adams_id = 46  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_23
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_23.PSMAR  &
   adams_id = 111  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_23.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_23.cm  &
   adams_id = 112  &
   location = -0.4084401323, 5.2130876612E-02, 1.0647329035  &
   orientation = 147.6892189669d, 65.745731168d, 104.5436690631d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_23.MARKER_241  &
   adams_id = 241  &
   location = -0.3712725728, 6.3429288108E-02, 1.0707557111  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_23.MARKER_417  &
   adams_id = 417  &
   location = -0.4067725728, 4.0191947995E-02, 1.0583673913  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_23  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_23  &
   color = WHITE
!
!---------------------------------- NONE_24 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_24  &
   adams_id = 47  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_24
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_24.PSMAR  &
   adams_id = 113  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_24.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_24.cm  &
   adams_id = 114  &
   location = -0.5427725315, 3.0918220235E-02, 0.8007601656  &
   orientation = 359.9996682026d, 23.1681363906d, 359.9984001516d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_24.MARKER_272  &
   adams_id = 272  &
   location = -0.5042725728, 3.0930189569E-02, 0.8354778761  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_24.MARKER_274  &
   adams_id = 274  &
   location = -0.5277725728, 7.9177554541E-03, 0.8170460119  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_24.MARKER_275  &
   adams_id = 275  &
   location = -0.5282725728, 5.1116910333E-02, 0.7594453781  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_24  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_24  &
   color = WHITE
!
!---------------------------------- NONE_25 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_25  &
   adams_id = 48  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_25
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_25.PSMAR  &
   adams_id = 115  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_25.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_25.cm  &
   adams_id = 116  &
   location = -0.3777725452, 4.3310241932E-02, 0.8493315455  &
   orientation = 180.1317099229d, 6.857157289E-02d, 179.8663297904d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_25.MARKER_262  &
   adams_id = 262  &
   location = -0.3712725728, 5.7019703329E-02, 0.8812284504  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_25.MARKER_263  &
   adams_id = 263  &
   location = -0.3627725728, 2.8601835103E-02, 0.8733715741  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_25.MARKER_267  &
   adams_id = 267  &
   location = -0.3627725728, 4.5569767716E-02, 0.8033995135  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_25  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_25  &
   color = WHITE
!
!---------------------------------- NONE_26 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_26  &
   adams_id = 49  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_26
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_26.PSMAR  &
   adams_id = 117  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_26.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_26.cm  &
   adams_id = 118  &
   location = -0.5427726208, -6.6895331497E-03, 0.7883874485  &
   orientation = 3.3830938071E-04d, 152.9928627485d, 270.0004409473d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_26.MARKER_273  &
   adams_id = 273  &
   location = -0.5277725728, 7.9177554541E-03, 0.8170460119  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_26.MARKER_277  &
   adams_id = 277  &
   location = -0.5282725728, -2.1297092496E-02, 0.7597287332  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_26  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_26  &
   color = WHITE
!
!---------------------------------- NONE_27 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_27  &
   adams_id = 50  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_27
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_27.PSMAR  &
   adams_id = 119  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_27.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_27.cm  &
   adams_id = 120  &
   location = -0.5427726208, -2.2084128731E-02, 0.9989426104  &
   orientation = 2.8564642309E-04d, 147.4645363722d, 270.0003803472d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_27.MARKER_254  &
   adams_id = 254  &
   location = -0.5277725728, -4.7838786536E-03, 1.0260606392  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_27.MARKER_256  &
   adams_id = 256  &
   location = -0.5277725728, -3.9384662922E-02, 0.9718244566  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_27  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_27  &
   color = WHITE
!
!---------------------------------- NONE_28 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_28  &
   adams_id = 51  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_28
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_28.PSMAR  &
   adams_id = 121  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_28.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_28.cm  &
   adams_id = 122  &
   location = -0.3777726208, 4.6134304277E-05, 0.858564208  &
   orientation = 180.000173054d, 62.5904757768d, 89.9997808045d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_28.MARKER_264  &
   adams_id = 264  &
   location = -0.3627725728, 2.8601835103E-02, 0.8733715741  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_28.MARKER_266  &
   adams_id = 266  &
   location = -0.3627725728, -2.8509875046E-02, 0.843756876  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_28  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_28  &
   color = WHITE
!
!---------------------------------- NONE_29 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_29  &
   adams_id = 52  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_29
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_29.PSMAR  &
   adams_id = 123  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_29.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_29.cm  &
   adams_id = 124  &
   location = -0.3777725458, 5.3024752045E-02, 0.9884858413  &
   orientation = 180.0001169313d, 87.6965828054d, 89.9990923618d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_29.MARKER_248  &
   adams_id = 248  &
   location = -0.3627725728, 6.7032348522E-03, 0.9824666818  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_29.MARKER_250  &
   adams_id = 250  &
   location = -0.3627725728, 4.0226543206E-02, 0.9955887166  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_29.MARKER_413  &
   adams_id = 413  &
   location = -0.3512725728, 9.639239434E-02, 0.9880715178  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_29  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_29  &
   color = WHITE
!
!---------------------------------- NONE_30 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_30  &
   adams_id = 53  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_30
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_30.PSMAR  &
   adams_id = 125  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_30.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_30.cm  &
   adams_id = 126  &
   location = -0.3777725677, 5.723252905E-02, 0.7945549692  &
   orientation = 180.0001015215d, 95.842003347d, 89.9991175214d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_30.MARKER_268  &
   adams_id = 268  &
   location = -0.3627725728, 4.5569767716E-02, 0.8033995135  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_30.MARKER_270  &
   adams_id = 270  &
   location = -0.3627725728, 1.0525439499E-02, 0.7951596676  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_30.MARKER_412  &
   adams_id = 412  &
   location = -0.3512725728, 0.100103905, 0.7880001959  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_30  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_30  &
   color = WHITE
!
!---------------------------------- NONE_31 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_31  &
   adams_id = 54  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_31
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_31.PSMAR  &
   adams_id = 127  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_31.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_31.cm  &
   adams_id = 128  &
   location = -0.5427725736, 5.6736511373E-02, 0.9703333391  &
   orientation = 180.0001197243d, 63.0571723659d, 89.9989483521d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_31.MARKER_258  &
   adams_id = 258  &
   location = -0.5277725728, 4.2142662162E-02, 0.9714538652  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_31.MARKER_259  &
   adams_id = 259  &
   location = -0.5277725728, 1.7141253317E-02, 0.9455515573  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_31.MARKER_405  &
   adams_id = 405  &
   location = -0.5697725728, 9.6329238101E-02, 0.9880347608  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_31  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_31  &
   color = WHITE
!
!---------------------------------- NONE_32 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_32  &
   adams_id = 55  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_32
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_32.PSMAR  &
   adams_id = 129  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_32.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_32.cm  &
   adams_id = 130  &
   location = -0.5427725801, 6.5582740473E-02, 0.7616761939  &
   orientation = 180.0001542822d, 49.8998598114d, 89.9989121015d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_32.MARKER_276  &
   adams_id = 276  &
   location = -0.5282725728, 5.1116910333E-02, 0.7594453781  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_32.MARKER_279  &
   adams_id = 279  &
   location = -0.5277725728, 3.2667836758E-02, 0.7285320851  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_32.MARKER_403  &
   adams_id = 403  &
   location = -0.5697725728, 0.1001067944, 0.7879252371  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_32  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_32  &
   color = WHITE
!
!---------------------------------- NONE_33 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_33  &
   adams_id = 56  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_33
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_33.PSMAR  &
   adams_id = 131  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_33.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_33.cm  &
   adams_id = 132  &
   location = 0.1838273792, 2.0033587914E-02, 0.2932929338  &
   orientation = 180.0001735879d, 62.2525992093d, 89.9997796514d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_33.MARKER_354  &
   adams_id = 354  &
   location = 0.1988274272, 4.8501472799E-02, 0.308268436  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_33.MARKER_359  &
   adams_id = 359  &
   location = 0.1988274272, -8.4346057185E-03, 0.2783174638  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_33  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_33  &
   color = WHITE
!
!---------------------------------- NONE_34 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_34  &
   adams_id = 57  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_34
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_34.PSMAR  &
   adams_id = 133  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_34.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_34.cm  &
   adams_id = 134  &
   location = 1.8827379229E-02, 7.6671156176E-03, 2.9324484099E-02  &
   orientation = 3.3830938306E-04d, 152.9928627485d, 270.0004409473d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_34.MARKER_333  &
   adams_id = 333  &
   location = 3.3827427221E-02, 2.2274404221E-02, 5.7983047516E-02  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_34.MARKER_339  &
   adams_id = 339  &
   location = 3.3827427221E-02, -6.9404437283E-03, 6.6576882088E-04  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_34  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_34  &
   color = WHITE
!
!---------------------------------- NONE_35 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_35  &
   adams_id = 58  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_35
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_35.PSMAR  &
   adams_id = 135  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_35.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_35.cm  &
   adams_id = 136  &
   location = 1.882737923E-02, -7.727479964E-03, 0.239879646  &
   orientation = 2.8564642102E-04d, 147.4645363722d, 270.0003803472d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_35.MARKER_323  &
   adams_id = 323  &
   location = 3.3827427221E-02, 9.5727701137E-03, 0.2669976748  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_35.MARKER_327  &
   adams_id = 327  &
   location = 3.3827427221E-02, -2.5028014155E-02, 0.2127614921  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_35  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_35  &
   color = WHITE
!
!---------------------------------- NONE_36 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_36  &
   adams_id = 59  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_36
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_36.PSMAR  &
   adams_id = 137  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_36.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_36.cm  &
   adams_id = 138  &
   location = 0.1838273792, 1.4402783072E-02, 9.950124361E-02  &
   orientation = 180.000173054d, 62.5904757768d, 89.9997808045d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_36.MARKER_344  &
   adams_id = 344  &
   location = 0.1988274272, 4.295848387E-02, 0.1143086097  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_36.MARKER_345  &
   adams_id = 345  &
   location = 0.1988274272, -1.4153226279E-02, 8.4693911595E-02  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_36  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_36  &
   color = WHITE
!
!---------------------------------- NONE_37 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_37  &
   adams_id = 60  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_37
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_37.PSMAR  &
   adams_id = 139  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_37.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_37.cm  &
   adams_id = 140  &
   location = 1.8827426424E-02, 7.109316014E-02, 0.2112703746  &
   orientation = 180.0001197242d, 63.0571723658d, 89.9989483522d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_37.MARKER_326  &
   adams_id = 326  &
   location = 3.3827427221E-02, 5.6499310929E-02, 0.2123909008  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_37.MARKER_329  &
   adams_id = 329  &
   location = 3.3827427221E-02, 3.1497902085E-02, 0.1864885928  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_37.MARKER_374  &
   adams_id = 374  &
   location = -7.6725727786E-03, 0.1106858869, 0.2289717964  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_37  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_37  &
   color = WHITE
!
!---------------------------------- NONE_38 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_38  &
   adams_id = 61  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_38
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_38.PSMAR  &
   adams_id = 141  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_38.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_38.cm  &
   adams_id = 142  &
   location = 0.1838274323, 7.1589177812E-02, 3.5492004802E-02  &
   orientation = 180.0001015238d, 95.8420033484d, 89.9991175178d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_38.MARKER_348  &
   adams_id = 348  &
   location = 0.1983274272, 5.9926416483E-02, 4.4336549075E-02  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_38.MARKER_349  &
   adams_id = 349  &
   location = 0.1988274272, 2.4882088267E-02, 3.6096703211E-02  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_38.MARKER_367  &
   adams_id = 367  &
   location = 0.2103274272, 0.1144605538, 2.8937231488E-02  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_38  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_38  &
   color = WHITE
!
!---------------------------------- NONE_39 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_39  &
   adams_id = 62  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_39
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_39.PSMAR  &
   adams_id = 143  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_39.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_39.cm  &
   adams_id = 144  &
   location = 0.1838274542, 6.7381400812E-02, 0.2294228769  &
   orientation = 180.0001169313d, 87.6965828054d, 89.9990923618d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_39.MARKER_356  &
   adams_id = 356  &
   location = 0.1988274272, 5.4583191973E-02, 0.2365257522  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_39.MARKER_357  &
   adams_id = 357  &
   location = 0.1988274272, 2.105988362E-02, 0.2234037174  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_39.MARKER_365  &
   adams_id = 365  &
   location = 0.2103274272, 0.1107490431, 0.2290085534  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_39  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_39  &
   color = WHITE
!
!---------------------------------- NONE_40 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_40  &
   adams_id = 63  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_40
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_40.PSMAR  &
   adams_id = 145  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_40.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_40.cm  &
   adams_id = 146  &
   location = 1.8827419874E-02, 7.993938924E-02, 2.6132295054E-03  &
   orientation = 180.0001542826d, 49.8998598117d, 89.9989121006d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_40.MARKER_336  &
   adams_id = 336  &
   location = 3.3827427221E-02, 6.54735591E-02, 3.8241368489E-04  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_40.MARKER_337  &
   adams_id = 337  &
   location = 3.3827427221E-02, 4.7024485526E-02, -3.0530879317E-02  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_40.MARKER_375  &
   adams_id = 375  &
   location = -8.1725727786E-03, 0.1144634432, 2.8862272724E-02  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_40  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_40  &
   color = WHITE
!
!---------------------------------- NONE_41 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_41  &
   adams_id = 64  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_41
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_41.PSMAR  &
   adams_id = 147  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_41.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_41.cm  &
   adams_id = 148  &
   location = 0.1838274548, 5.76668907E-02, 9.0268581039E-02  &
   orientation = 180.131709925d, 6.857157289E-02d, 179.8663297884d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_41.MARKER_342  &
   adams_id = 342  &
   location = 0.1903274272, 7.1376352097E-02, 0.122165486  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_41.MARKER_343  &
   adams_id = 343  &
   location = 0.1988274272, 4.295848387E-02, 0.1143086097  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_41.MARKER_347  &
   adams_id = 347  &
   location = 0.1983274272, 5.9926416483E-02, 4.4336549075E-02  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_41  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_41  &
   color = WHITE
!
!---------------------------------- NONE_42 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_42  &
   adams_id = 65  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_42
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_42.PSMAR  &
   adams_id = 149  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_42.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_42.cm  &
   adams_id = 150  &
   location = 1.8827454908E-02, 3.3603411571E-02, 0.2522749586  &
   orientation = 359.9996783586d, 26.9716295817d, 359.9982368608d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_42.MARKER_322  &
   adams_id = 322  &
   location = 5.7327427221E-02, 3.131125665E-02, 0.286916107  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_42.MARKER_324  &
   adams_id = 324  &
   location = 3.3827427221E-02, 9.5727701137E-03, 0.2669976748  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_42.MARKER_325  &
   adams_id = 325  &
   location = 3.3827427221E-02, 5.6499310929E-02, 0.2123909008  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_42  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_42  &
   color = WHITE
!
!---------------------------------- NONE_43 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_43  &
   adams_id = 66  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_43
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_43.PSMAR  &
   adams_id = 151  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_43.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_43.cm  &
   adams_id = 152  &
   location = 0.1838274545, 5.9365507939E-02, 0.282263941  &
   orientation = 180.0010311917d, 8.8538263199d, 179.9970235308d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_43.MARKER_352  &
   adams_id = 352  &
   location = 0.1903274272, 7.7785936875E-02, 0.3116927467  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_43.MARKER_353  &
   adams_id = 353  &
   location = 0.1988274272, 4.8501472799E-02, 0.308268436  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_43.MARKER_355  &
   adams_id = 355  &
   location = 0.1988274272, 5.4583191973E-02, 0.2365257522  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_43  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_43  &
   color = WHITE
!
!---------------------------------- NONE_44 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_44  &
   adams_id = 67  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_44
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_44.PSMAR  &
   adams_id = 153  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_44.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_44.cm  &
   adams_id = 154  &
   location = 1.8827468468E-02, 4.5274869002E-02, 4.1697201178E-02  &
   orientation = 359.9996682026d, 23.1681363906d, 359.9984001516d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_44.MARKER_332  &
   adams_id = 332  &
   location = 5.6827427221E-02, 4.5286838336E-02, 7.6414911666E-02  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_44.MARKER_334  &
   adams_id = 334  &
   location = 3.3827427221E-02, 2.2274404221E-02, 5.7983047516E-02  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_44.MARKER_335  &
   adams_id = 335  &
   location = 3.3827427221E-02, 6.54735591E-02, 3.8241368489E-04  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_44  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_44  &
   color = WHITE
!
!---------------------------------- NONE_45 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_45  &
   adams_id = 68  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_45
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_45.PSMAR  &
   adams_id = 155  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_45.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_45.cm  &
   adams_id = 156  &
   location = 4.9494986323E-02, 5.1628821435E-02, 8.753730581E-02  &
   orientation = 131.5922028125d, 40.6630367569d, 49.4626591953d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_45.MARKER_331  &
   adams_id = 331  &
   location = 5.6827427221E-02, 4.5286838336E-02, 7.6414911666E-02  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_45.MARKER_377  &
   adams_id = 377  &
   location = 4.7827427221E-02, 5.8331595216E-02, 9.929019882E-02  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_45  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_45  &
   color = WHITE
!
!---------------------------------- NONE_46 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_46  &
   adams_id = 69  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_46
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_46.PSMAR  &
   adams_id = 157  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_46.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_46.cm  &
   adams_id = 158  &
   location = 0.1531598789, 6.503347892E-02, 0.111043532  &
   orientation = 131.5943471564d, 40.6647988098d, 310.495811138d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_46.MARKER_341  &
   adams_id = 341  &
   location = 0.1903274272, 7.1376352097E-02, 0.122165486  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_46.MARKER_362  &
   adams_id = 362  &
   location = 0.1548274272, 5.8331595216E-02, 9.929019882E-02  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_46  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_46  &
   color = WHITE
!
!---------------------------------- NONE_47 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_47  &
   adams_id = 70  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_47
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_47.PSMAR  &
   adams_id = 159  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_47.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_47.cm  &
   adams_id = 160  &
   location = 0.1531598677, 6.6487525379E-02, 0.3056699391  &
   orientation = 147.689218967d, 65.745731168d, 104.5436690628d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_47.MARKER_351  &
   adams_id = 351  &
   location = 0.1903274272, 7.7785936875E-02, 0.3116927467  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_47.MARKER_363  &
   adams_id = 363  &
   location = 0.1548274272, 5.4548596763E-02, 0.2993044269  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_47  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_47  &
   color = WHITE
!
!---------------------------------- NONE_48 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_48  &
   adams_id = 71  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_48
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_48.PSMAR  &
   adams_id = 161  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_48.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_48.cm  &
   adams_id = 162  &
   location = 4.949497496E-02, 4.2609260066E-02, 0.2929398162  &
   orientation = 147.6884999675d, 65.7435679726d, 104.583821979d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_48.MARKER_321  &
   adams_id = 321  &
   location = 5.7327427221E-02, 3.131125665E-02, 0.286916107  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_48.MARKER_372  &
   adams_id = 372  &
   location = 4.7827427221E-02, 5.4548596763E-02, 0.2993044269  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_48  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_48  &
   color = WHITE
!
!---------------------------------- NONE_49 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_49  &
   adams_id = 72  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_49
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_49.PSMAR  &
   adams_id = 163  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_49.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_49.cm  &
   adams_id = 164  &
   location = -0.3777726208, 2.0033587914E-02, 0.2932929338  &
   orientation = 180.0001735879d, 62.2525992093d, 89.9997796514d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_49.MARKER_284  &
   adams_id = 284  &
   location = -0.3627725728, 4.8501472799E-02, 0.308268436  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_49.MARKER_285  &
   adams_id = 285  &
   location = -0.3627725728, -8.4346057185E-03, 0.2783174638  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_49  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_49  &
   color = WHITE
!
!---------------------------------- NONE_50 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_50  &
   adams_id = 73  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_50
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_50.PSMAR  &
   adams_id = 165  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_50.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_50.cm  &
   adams_id = 166  &
   location = -0.5427726208, 7.6671156176E-03, 2.9324484099E-02  &
   orientation = 3.3830938327E-04d, 152.9928627485d, 270.0004409473d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_50.MARKER_304  &
   adams_id = 304  &
   location = -0.5277725728, 2.2274404221E-02, 5.7983047516E-02  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_50.MARKER_305  &
   adams_id = 305  &
   location = -0.5277725728, -6.9404437283E-03, 6.6576882088E-04  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_50  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_50  &
   color = WHITE
!
!---------------------------------- NONE_51 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_51  &
   adams_id = 74  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_51
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_51.PSMAR  &
   adams_id = 167  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_51.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_51.cm  &
   adams_id = 168  &
   location = -0.5427726208, -7.727479964E-03, 0.239879646  &
   orientation = 2.8564642806E-04d, 147.4645363722d, 270.0003803472d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_51.MARKER_314  &
   adams_id = 314  &
   location = -0.5277725728, 9.5727701137E-03, 0.2669976748  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_51.MARKER_320  &
   adams_id = 320  &
   location = -0.5277725728, -2.5028014155E-02, 0.2127614921  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_51  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_51  &
   color = WHITE
!
!---------------------------------- NONE_52 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_52  &
   adams_id = 75  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_52
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_52.PSMAR  &
   adams_id = 169  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_52.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_52.cm  &
   adams_id = 170  &
   location = -0.3777726208, 1.4402783072E-02, 9.950124361E-02  &
   orientation = 180.000173054d, 62.5904757768d, 89.9997808045d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_52.MARKER_294  &
   adams_id = 294  &
   location = -0.3627725728, 4.295848387E-02, 0.1143086097  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_52.MARKER_297  &
   adams_id = 297  &
   location = -0.3627725728, -1.4153226279E-02, 8.4693911595E-02  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_52  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_52  &
   color = WHITE
!
!---------------------------------- NONE_53 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_53  &
   adams_id = 76  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_53
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_53.PSMAR  &
   adams_id = 171  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_53.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_53.cm  &
   adams_id = 172  &
   location = -0.5427725315, 4.5274869002E-02, 4.1697201178E-02  &
   orientation = 359.9996682026d, 23.1681363906d, 359.9984001516d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_53.MARKER_301  &
   adams_id = 301  &
   location = -0.5047725728, 4.5286838336E-02, 7.6414911666E-02  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_53.MARKER_303  &
   adams_id = 303  &
   location = -0.5277725728, 2.2274404221E-02, 5.7983047516E-02  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_53.MARKER_309  &
   adams_id = 309  &
   location = -0.5277725728, 6.54735591E-02, 3.8241368489E-04  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_53  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_53  &
   color = WHITE
!
!---------------------------------- NONE_54 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_54  &
   adams_id = 77  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_54
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_54.PSMAR  &
   adams_id = 173  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_54.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_54.cm  &
   adams_id = 174  &
   location = -0.5427725451, 3.3603411571E-02, 0.2522749586  &
   orientation = 359.9996783586d, 26.9716295817d, 359.9982368608d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_54.MARKER_312  &
   adams_id = 312  &
   location = -0.5042725728, 3.131125665E-02, 0.286916107  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_54.MARKER_313  &
   adams_id = 313  &
   location = -0.5277725728, 9.5727701137E-03, 0.2669976748  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_54.MARKER_315  &
   adams_id = 315  &
   location = -0.5277725728, 5.6499310929E-02, 0.2123909008  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_54  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_54  &
   color = WHITE
!
!---------------------------------- NONE_55 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_55  &
   adams_id = 78  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_55
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_55.PSMAR  &
   adams_id = 175  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_55.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_55.cm  &
   adams_id = 176  &
   location = -0.3777725455, 5.9365507939E-02, 0.282263941  &
   orientation = 180.0010311917d, 8.8538263199d, 179.9970235308d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_55.MARKER_282  &
   adams_id = 282  &
   location = -0.3712725728, 7.7785936875E-02, 0.3116927467  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_55.MARKER_283  &
   adams_id = 283  &
   location = -0.3627725728, 4.8501472799E-02, 0.308268436  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_55.MARKER_287  &
   adams_id = 287  &
   location = -0.3627725728, 5.4583191973E-02, 0.2365257522  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_55  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_55  &
   color = WHITE
!
!---------------------------------- NONE_56 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_56  &
   adams_id = 79  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_56
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_56.PSMAR  &
   adams_id = 177  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_56.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_56.cm  &
   adams_id = 178  &
   location = -0.3777725452, 5.76668907E-02, 9.0268581039E-02  &
   orientation = 180.1317099253d, 6.857157289E-02d, 179.866329788d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_56.MARKER_292  &
   adams_id = 292  &
   location = -0.3712725728, 7.1376352097E-02, 0.122165486  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_56.MARKER_293  &
   adams_id = 293  &
   location = -0.3627725728, 4.295848387E-02, 0.1143086097  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_56.MARKER_295  &
   adams_id = 295  &
   location = -0.3627725728, 5.9926416483E-02, 4.4336549075E-02  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_56  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_56  &
   color = WHITE
!
!---------------------------------- NONE_57 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_57  &
   adams_id = 80  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_57
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_57.PSMAR  &
   adams_id = 179  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_57.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_57.cm  &
   adams_id = 180  &
   location = -0.3777725458, 6.738140081E-02, 0.2294228769  &
   orientation = 180.0001169322d, 87.696582806d, 89.9990923603d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_57.MARKER_288  &
   adams_id = 288  &
   location = -0.3627725728, 5.4583191973E-02, 0.2365257522  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_57.MARKER_290  &
   adams_id = 290  &
   location = -0.3627725728, 2.105988362E-02, 0.2234037174  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_57.MARKER_391  &
   adams_id = 391  &
   location = -0.3512725728, 0.1107490431, 0.2290085534  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_57  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_57  &
   color = WHITE
!
!---------------------------------- NONE_58 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_58  &
   adams_id = 81  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_58
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_58.PSMAR  &
   adams_id = 181  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_58.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_58.cm  &
   adams_id = 182  &
   location = -0.3777725677, 7.1589177816E-02, 3.5492004802E-02  &
   orientation = 180.0001015209d, 95.8420033483d, 89.9991175326d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_58.MARKER_296  &
   adams_id = 296  &
   location = -0.3627725728, 5.9926416483E-02, 4.4336549075E-02  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_58.MARKER_300  &
   adams_id = 300  &
   location = -0.3627725728, 2.4882088267E-02, 3.6096703211E-02  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_58.MARKER_393  &
   adams_id = 393  &
   location = -0.3512725728, 0.1144605538, 2.8937231488E-02  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_58  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_58  &
   color = WHITE
!
!---------------------------------- NONE_59 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_59  &
   adams_id = 82  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_59
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_59.PSMAR  &
   adams_id = 183  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_59.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_59.cm  &
   adams_id = 184  &
   location = -0.5427725736, 7.1093160139E-02, 0.2112703746  &
   orientation = 180.0001197249d, 63.0571723663d, 89.9989483505d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_59.MARKER_316  &
   adams_id = 316  &
   location = -0.5277725728, 5.6499310929E-02, 0.2123909008  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_59.MARKER_317  &
   adams_id = 317  &
   location = -0.5277725728, 3.1497902085E-02, 0.1864885928  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_59.MARKER_379  &
   adams_id = 379  &
   location = -0.5697725728, 0.1106858869, 0.2289717964  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_59  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_59  &
   color = WHITE
!
!---------------------------------- NONE_60 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_60  &
   adams_id = 83  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_60
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_60.PSMAR  &
   adams_id = 185  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_60.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_60.cm  &
   adams_id = 186  &
   location = -0.5427725801, 7.9939389239E-02, 2.6132295053E-03  &
   orientation = 180.0001542829d, 49.8998598117d, 89.9989120999d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_60.MARKER_307  &
   adams_id = 307  &
   location = -0.5277725728, 4.7024485526E-02, -3.0530879317E-02  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_60.MARKER_310  &
   adams_id = 310  &
   location = -0.5277725728, 6.54735591E-02, 3.8241368489E-04  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_60.MARKER_381  &
   adams_id = 381  &
   location = -0.5697725728, 0.1144634432, 2.8862272724E-02  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_60  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_60  &
   color = WHITE
!
!---------------------------------- NONE_61 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_61  &
   adams_id = 84  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_61
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_61.PSMAR  &
   adams_id = 187  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_61.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_61.cm  &
   adams_id = 188  &
   location = -0.4084401323, 6.6487525379E-02, 0.3056699391  &
   orientation = 147.689218967d, 65.745731168d, 104.5436690628d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_61.MARKER_281  &
   adams_id = 281  &
   location = -0.3712725728, 7.7785936875E-02, 0.3116927467  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_61.MARKER_387  &
   adams_id = 387  &
   location = -0.4067725728, 5.4548596763E-02, 0.2993044269  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_61  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_61  &
   color = WHITE
!
!---------------------------------- NONE_62 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_62  &
   adams_id = 85  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_62
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_62.PSMAR  &
   adams_id = 189  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_62.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_62.cm  &
   adams_id = 190  &
   location = -0.512105025, 4.2609260066E-02, 0.2929398162  &
   orientation = 147.6884999675d, 65.7435679726d, 104.5838219791d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_62.MARKER_311  &
   adams_id = 311  &
   location = -0.5042725728, 3.131125665E-02, 0.286916107  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_62.MARKER_385  &
   adams_id = 385  &
   location = -0.5137725728, 5.4548596763E-02, 0.2993044269  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_62  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_62  &
   color = WHITE
!
!---------------------------------- NONE_63 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_63  &
   adams_id = 86  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_63
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_63.PSMAR  &
   adams_id = 191  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_63.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_63.cm  &
   adams_id = 192  &
   location = -0.4084401211, 6.503347892E-02, 0.111043532  &
   orientation = 131.5943471564d, 40.6647988098d, 310.4958111381d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_63.MARKER_291  &
   adams_id = 291  &
   location = -0.3712725728, 7.1376352097E-02, 0.122165486  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_63.MARKER_389  &
   adams_id = 389  &
   location = -0.4067725728, 5.8331595216E-02, 9.929019882E-02  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_63  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_63  &
   color = WHITE
!
!---------------------------------- NONE_64 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_64  &
   adams_id = 87  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_64
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_64.PSMAR  &
   adams_id = 193  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_64.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_64.cm  &
   adams_id = 194  &
   location = -0.5121050137, 5.1628821435E-02, 8.753730581E-02  &
   orientation = 131.5922028125d, 40.6630367569d, 49.4626591953d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_64.MARKER_302  &
   adams_id = 302  &
   location = -0.5047725728, 4.5286838336E-02, 7.6414911666E-02  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_64.MARKER_383  &
   adams_id = 383  &
   location = -0.5137725728, 5.8331595216E-02, 9.929019882E-02  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_64  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_64  &
   color = WHITE
!
!----------------------------- ________________21 -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________21  &
   adams_id = 88  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.________________21
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________21.PSMAR  &
   adams_id = 195  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________21.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________21.cm  &
   adams_id = 196  &
   location = 0.0, -0.7259333826, -6.9343866467  &
   orientation = 180.0d, 179.825233158d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________21.MARKER_443  &
   adams_id = 443  &
   location = 0.0, -0.25, 1.2  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________21.MARKER_446  &
   adams_id = 446  &
   location = 1.999, -0.1586914978, 1.561088623  &
   orientation = 90.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________21  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________21  &
   color = WHITE
!
!----------------------------- ________________22 -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________22  &
   adams_id = 89  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.________________22
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________22.PSMAR  &
   adams_id = 197  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________22.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________22.cm  &
   adams_id = 198  &
   location = 0.0, -1.0243668671, -9.2029985352  &
   orientation = 90.0d, 180.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________22  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________22  &
   color = WHITE  &
   visibility = off
!
!----------------------------- ________________23 -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________23  &
   adams_id = 90  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.________________23
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________23.PSMAR  &
   adams_id = 199  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________23.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.________________23.cm  &
   adams_id = 200  &
   location = 0.0, -1.5362640839, -49.1881377564  &
   orientation = 90.0d, 180.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________23  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.________________23  &
   color = WHITE  &
   visibility = off
!
!---------------------------------- NONE_66 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_66  &
   adams_id = 92  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_66
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_66.PSMAR  &
   adams_id = 203  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_66.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_66.cm  &
   adams_id = 204  &
   location = -0.1767888515, 5.3411656113E-02, 1.0098966366  &
   orientation = 0.3800447327d, 4.8618834216d, 359.9920651162d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_66.PSMAR2  &
   adams_id = 205  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_66.PSMAR2  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_66.PSMAR1  &
   adams_id = 201  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_66.PSMAR1  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_66.MARKER_427  &
   adams_id = 427  &
   location = -0.185474351, 6.237916595E-02, 1.1491513904  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_66.MARKER_430  &
   adams_id = 430  &
   location = -0.186874351, 8.0168765104E-02, 0.7730435152  &
   orientation = 0.0d, 179.6723646671d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_66  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_66  &
   color = WHITE
!
!---------------------------------- NONE_68 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_68  &
   adams_id = 94  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_68
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_68.PSMAR  &
   adams_id = 207  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_68.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_68.cm  &
   adams_id = 208  &
   location = -0.1768743495, 6.1376997859E-02, 0.8782991153  &
   orientation = 180.0002241058d, 0.327634021d, 179.8437982347d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_68.MARKER_425  &
   adams_id = 425  &
   location = -0.1926725728, 6.0405208558E-02, 0.708358001  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_68.MARKER_429  &
   adams_id = 429  &
   location = -0.186874351, 8.0168765104E-02, 0.7730435152  &
   orientation = 0.0d, 179.6723646671d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_68  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_68  &
   color = WHITE
!
!---------------------------------- NONE_71 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_71  &
   adams_id = 97  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_71
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_71.PSMAR  &
   adams_id = 213  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_71.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_71.cm  &
   adams_id = 214  &
   location = -0.179558072, 7.0669731294E-02, 0.1024904897  &
   orientation = 179.3247870256d, 2.7343073485d, 180.3037220858d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_71.PSMAR1  &
   adams_id = 209  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_71.PSMAR1  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_71.PSMAR2  &
   adams_id = 211  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_71.PSMAR2  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_71.MARKER_434  &
   adams_id = 434  &
   location = -0.1926725728, 8.4801042613E-02, -3.6335309431E-02  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_71.MARKER_438  &
   adams_id = 438  &
   location = -0.1894725728, 8.8614958653E-02, 0.340173734  &
   orientation = 0.0d, 1.0835429423d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_71  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_71  &
   color = WHITE
!
!---------------------------------- NONE_72 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_72  &
   adams_id = 98  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.NONE_72
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_72.PSMAR  &
   adams_id = 215  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_72.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_72.cm  &
   adams_id = 216  &
   location = -0.1794725743, 7.3743877994E-02, 0.234293033  &
   orientation = 359.9999700864d, 2.4552925804d, 0.1560075498d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_72.MARKER_436  &
   adams_id = 436  &
   location = -0.1926725728, 6.6394937839E-02, 0.4057650027  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_72.MARKER_437  &
   adams_id = 437  &
   location = -0.1894725728, 8.8614958653E-02, 0.340173734  &
   orientation = 0.0d, 1.0835429423d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_72  &
   density = 2700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MODEL_3xiaogaosufuyang26061702.NONE_72  &
   color = WHITE
!
! ****** Graphics from Parasolid file ******
!
file parasolid read  &
   file_name = "m_out_cmd.x_t"  &
   model_name = .MODEL_3xiaogaosufuyang26061702
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702._______________.SOLID1  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.PART3.SOLID2  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.PART4.SOLID3  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.________________3.SOLID5  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.________________3.SOLID6  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.________________3.SOLID4  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.________________5.SOLID7  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.________________6.SOLID8  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.________________7.SOLID9  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.________________8.SOLID10  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.________________9.SOLID11  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.________________10.SOLID12  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.________________11.SOLID13  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.________________12.SOLID14  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.________________13.SOLID15  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.________________14.SOLID16  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.________________15.SOLID17  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.________________16.SOLID18  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.________________17.SOLID19  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.________________18.SOLID20  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.________________19.SOLID21  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.________________20.SOLID22  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE.SOLID23  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_2.SOLID24  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_3.SOLID25  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_4.SOLID26  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_5.SOLID27  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_6.SOLID28  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_7.SOLID29  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_8.SOLID30  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_9.SOLID31  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_10.SOLID32  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_11.SOLID33  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_12.SOLID34  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_13.SOLID35  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_14.SOLID36  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_15.SOLID37  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_16.SOLID38  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_17.SOLID39  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_18.SOLID40  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_19.SOLID41  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_20.SOLID42  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_21.SOLID43  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_22.SOLID44  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_23.SOLID45  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_24.SOLID46  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_25.SOLID47  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_26.SOLID48  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_27.SOLID49  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_28.SOLID50  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_29.SOLID51  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_30.SOLID52  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_31.SOLID53  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_32.SOLID54  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_33.SOLID55  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_34.SOLID56  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_35.SOLID57  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_36.SOLID58  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_37.SOLID59  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_38.SOLID60  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_39.SOLID61  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_40.SOLID62  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_41.SOLID63  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_42.SOLID64  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_43.SOLID65  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_44.SOLID66  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_45.SOLID67  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_46.SOLID68  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_47.SOLID69  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_48.SOLID70  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_49.SOLID71  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_50.SOLID72  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_51.SOLID73  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_52.SOLID74  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_53.SOLID75  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_54.SOLID76  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_55.SOLID77  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_56.SOLID78  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_57.SOLID79  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_58.SOLID80  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_59.SOLID81  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_60.SOLID82  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_61.SOLID83  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_62.SOLID84  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_63.SOLID85  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_64.SOLID86  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.________________21.SOLID87  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.________________22.SOLID88  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.________________23.SOLID89  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_66.SOLID91  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_66.SOLID92  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_66.SOLID90  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_68.SOLID93  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_71.SOLID96  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_71.SOLID94  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_71.SOLID95  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.NONE_72.SOLID97  &
   color = WHITE
!
!---------------------------------- Contacts ----------------------------------!
!
!
contact create  &
   contact_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_1  &
   adams_id = 1  &
   type = solid_to_solid  &
   i_geometry_name = .MODEL_3xiaogaosufuyang26061702._______________.SOLID1  &
   j_geometry_name = .MODEL_3xiaogaosufuyang26061702.________________7.SOLID9  &
   stiffness = 1.0E+08  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 5.0  &
   mu_dynamic = 1.0  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
force attributes  &
   force_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_1  &
   active = off
!
contact create  &
   contact_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_2  &
   adams_id = 2  &
   type = solid_to_solid  &
   i_geometry_name = .MODEL_3xiaogaosufuyang26061702.________________14.SOLID16  &
   j_geometry_name = .MODEL_3xiaogaosufuyang26061702._______________.SOLID1  &
   stiffness = 1.0E+08  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 5.0  &
   mu_dynamic = 1.0  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
force attributes  &
   force_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_2  &
   active = off
!
contact create  &
   contact_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_3  &
   adams_id = 3  &
   type = solid_to_solid  &
   i_geometry_name = .MODEL_3xiaogaosufuyang26061702.________________13.SOLID15  &
   j_geometry_name = .MODEL_3xiaogaosufuyang26061702._______________.SOLID1  &
   stiffness = 1.0E+08  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 5.0  &
   mu_dynamic = 1.0  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
force attributes  &
   force_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_3  &
   active = off
!
contact create  &
   contact_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_4  &
   adams_id = 4  &
   type = solid_to_solid  &
   i_geometry_name = .MODEL_3xiaogaosufuyang26061702.________________18.SOLID20  &
   j_geometry_name = .MODEL_3xiaogaosufuyang26061702._______________.SOLID1  &
   stiffness = 1.0E+08  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 5.0  &
   mu_dynamic = 1.0  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
force attributes  &
   force_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_4  &
   active = off
!
contact create  &
   contact_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_5  &
   adams_id = 5  &
   type = solid_to_solid  &
   i_geometry_name = .MODEL_3xiaogaosufuyang26061702.________________5.SOLID7  &
   j_geometry_name = .MODEL_3xiaogaosufuyang26061702._______________.SOLID1  &
   stiffness = 1.0E+08  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 2.0  &
   mu_dynamic = 1.0  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
force attributes  &
   force_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_5  &
   active = off
!
contact create  &
   contact_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_6  &
   adams_id = 6  &
   type = solid_to_solid  &
   i_geometry_name = .MODEL_3xiaogaosufuyang26061702.________________15.SOLID17  &
   j_geometry_name = .MODEL_3xiaogaosufuyang26061702._______________.SOLID1  &
   stiffness = 1.0E+08  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 5.0  &
   mu_dynamic = 1.0  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
force attributes  &
   force_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_6  &
   active = off
!
contact create  &
   contact_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_7  &
   adams_id = 7  &
   type = solid_to_solid  &
   i_geometry_name = .MODEL_3xiaogaosufuyang26061702.________________17.SOLID19  &
   j_geometry_name = .MODEL_3xiaogaosufuyang26061702._______________.SOLID1  &
   stiffness = 1.0E+08  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 5.0  &
   mu_dynamic = 1.0  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
force attributes  &
   force_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_7  &
   active = off
!
contact create  &
   contact_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_8  &
   adams_id = 8  &
   type = solid_to_solid  &
   i_geometry_name = .MODEL_3xiaogaosufuyang26061702.________________11.SOLID13  &
   j_geometry_name = .MODEL_3xiaogaosufuyang26061702._______________.SOLID1  &
   stiffness = 1.0E+08  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 5.0  &
   mu_dynamic = 1.0  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
force attributes  &
   force_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_8  &
   active = off
!
contact create  &
   contact_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_9  &
   adams_id = 9  &
   type = solid_to_solid  &
   i_geometry_name = .MODEL_3xiaogaosufuyang26061702.________________9.SOLID11  &
   j_geometry_name = .MODEL_3xiaogaosufuyang26061702._______________.SOLID1  &
   stiffness = 1.0E+08  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 5.0  &
   mu_dynamic = 1.0  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
force attributes  &
   force_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_9  &
   active = off
!
contact create  &
   contact_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_10  &
   adams_id = 10  &
   type = solid_to_solid  &
   i_geometry_name = .MODEL_3xiaogaosufuyang26061702.________________8.SOLID10  &
   j_geometry_name = .MODEL_3xiaogaosufuyang26061702._______________.SOLID1  &
   stiffness = 1.0E+08  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 5.0  &
   mu_dynamic = 1.0  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
force attributes  &
   force_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_10  &
   active = off
!
contact create  &
   contact_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_11  &
   adams_id = 11  &
   type = solid_to_solid  &
   i_geometry_name = .MODEL_3xiaogaosufuyang26061702.________________10.SOLID12  &
   j_geometry_name = .MODEL_3xiaogaosufuyang26061702._______________.SOLID1  &
   stiffness = 1.0E+08  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 5.0  &
   mu_dynamic = 1.0  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
force attributes  &
   force_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_11  &
   active = off
!
contact create  &
   contact_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_12  &
   adams_id = 12  &
   type = solid_to_solid  &
   i_geometry_name = .MODEL_3xiaogaosufuyang26061702.________________19.SOLID21  &
   j_geometry_name = .MODEL_3xiaogaosufuyang26061702._______________.SOLID1  &
   stiffness = 1.0E+08  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 5.0  &
   mu_dynamic = 1.0  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
force attributes  &
   force_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_12  &
   active = off
!
contact create  &
   contact_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_13  &
   adams_id = 13  &
   type = solid_to_solid  &
   i_geometry_name = .MODEL_3xiaogaosufuyang26061702.________________20.SOLID22  &
   j_geometry_name = .MODEL_3xiaogaosufuyang26061702._______________.SOLID1  &
   stiffness = 1.0E+08  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 5.0  &
   mu_dynamic = 1.0  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
force attributes  &
   force_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_13  &
   active = off
!
contact create  &
   contact_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_14  &
   adams_id = 14  &
   type = solid_to_solid  &
   i_geometry_name = .MODEL_3xiaogaosufuyang26061702.________________12.SOLID14  &
   j_geometry_name = .MODEL_3xiaogaosufuyang26061702._______________.SOLID1  &
   stiffness = 1.0E+08  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 5.0  &
   mu_dynamic = 1.0  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
force attributes  &
   force_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_14  &
   active = off
!
contact create  &
   contact_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_15  &
   adams_id = 15  &
   type = solid_to_solid  &
   i_geometry_name = .MODEL_3xiaogaosufuyang26061702.________________6.SOLID8  &
   j_geometry_name = .MODEL_3xiaogaosufuyang26061702._______________.SOLID1  &
   stiffness = 1.0E+08  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 5.0  &
   mu_dynamic = 1.0  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
force attributes  &
   force_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_15  &
   active = off
!
contact create  &
   contact_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_16  &
   adams_id = 16  &
   type = solid_to_solid  &
   i_geometry_name = .MODEL_3xiaogaosufuyang26061702.________________16.SOLID18  &
   j_geometry_name = .MODEL_3xiaogaosufuyang26061702._______________.SOLID1  &
   stiffness = 1.0E+08  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 5.0  &
   mu_dynamic = 1.0  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
force attributes  &
   force_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_16  &
   active = off
!
contact create  &
   contact_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_17  &
   adams_id = 17  &
   type = solid_to_solid  &
   i_geometry_name = .MODEL_3xiaogaosufuyang26061702.________________14.SOLID16  &
   j_geometry_name = .MODEL_3xiaogaosufuyang26061702.________________21.SOLID87  &
   stiffness = 1.0E+08  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 2.0  &
   mu_dynamic = 0.1  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
contact create  &
   contact_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_18  &
   adams_id = 18  &
   type = solid_to_solid  &
   i_geometry_name = .MODEL_3xiaogaosufuyang26061702.________________16.SOLID18  &
   j_geometry_name = .MODEL_3xiaogaosufuyang26061702.________________21.SOLID87  &
   stiffness = 1.0E+08  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 2.0  &
   mu_dynamic = 0.1  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
contact create  &
   contact_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_19  &
   adams_id = 19  &
   type = solid_to_solid  &
   i_geometry_name = .MODEL_3xiaogaosufuyang26061702.________________7.SOLID9  &
   j_geometry_name = .MODEL_3xiaogaosufuyang26061702.________________21.SOLID87  &
   stiffness = 1.0E+08  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 2.0  &
   mu_dynamic = 0.1  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
contact create  &
   contact_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_20  &
   adams_id = 20  &
   type = solid_to_solid  &
   i_geometry_name = .MODEL_3xiaogaosufuyang26061702.________________13.SOLID15  &
   j_geometry_name = .MODEL_3xiaogaosufuyang26061702.________________21.SOLID87  &
   stiffness = 1.0E+08  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 2.0  &
   mu_dynamic = 0.1  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
contact create  &
   contact_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_21  &
   adams_id = 21  &
   type = solid_to_solid  &
   i_geometry_name = .MODEL_3xiaogaosufuyang26061702.________________18.SOLID20  &
   j_geometry_name = .MODEL_3xiaogaosufuyang26061702.________________21.SOLID87  &
   stiffness = 1.0E+08  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 2.0  &
   mu_dynamic = 0.1  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
contact create  &
   contact_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_22  &
   adams_id = 22  &
   type = solid_to_solid  &
   i_geometry_name = .MODEL_3xiaogaosufuyang26061702.________________15.SOLID17  &
   j_geometry_name = .MODEL_3xiaogaosufuyang26061702.________________21.SOLID87  &
   stiffness = 1.0E+08  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 2.0  &
   mu_dynamic = 0.1  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
contact create  &
   contact_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_23  &
   adams_id = 23  &
   type = solid_to_solid  &
   i_geometry_name = .MODEL_3xiaogaosufuyang26061702.________________6.SOLID8  &
   j_geometry_name = .MODEL_3xiaogaosufuyang26061702.________________21.SOLID87  &
   stiffness = 1.0E+08  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 2.0  &
   mu_dynamic = 0.1  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
contact create  &
   contact_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_24  &
   adams_id = 24  &
   type = solid_to_solid  &
   i_geometry_name = .MODEL_3xiaogaosufuyang26061702.________________5.SOLID7  &
   j_geometry_name = .MODEL_3xiaogaosufuyang26061702.________________21.SOLID87  &
   stiffness = 1.0E+08  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 2.0  &
   mu_dynamic = 0.1  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
contact create  &
   contact_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_25  &
   adams_id = 25  &
   type = solid_to_solid  &
   i_geometry_name = .MODEL_3xiaogaosufuyang26061702.________________11.SOLID13  &
   j_geometry_name = .MODEL_3xiaogaosufuyang26061702.________________21.SOLID87  &
   stiffness = 1.0E+08  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 2.0  &
   mu_dynamic = 0.1  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
contact create  &
   contact_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_26  &
   adams_id = 26  &
   type = solid_to_solid  &
   i_geometry_name = .MODEL_3xiaogaosufuyang26061702.________________10.SOLID12  &
   j_geometry_name = .MODEL_3xiaogaosufuyang26061702.________________21.SOLID87  &
   stiffness = 1.0E+08  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 2.0  &
   mu_dynamic = 0.1  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
contact create  &
   contact_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_27  &
   adams_id = 27  &
   type = solid_to_solid  &
   i_geometry_name = .MODEL_3xiaogaosufuyang26061702.________________17.SOLID19  &
   j_geometry_name = .MODEL_3xiaogaosufuyang26061702.________________21.SOLID87  &
   stiffness = 1.0E+08  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 2.0  &
   mu_dynamic = 0.1  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
contact create  &
   contact_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_28  &
   adams_id = 28  &
   type = solid_to_solid  &
   i_geometry_name = .MODEL_3xiaogaosufuyang26061702.________________9.SOLID11  &
   j_geometry_name = .MODEL_3xiaogaosufuyang26061702.________________21.SOLID87  &
   stiffness = 1.0E+08  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 2.0  &
   mu_dynamic = 0.1  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
contact create  &
   contact_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_29  &
   adams_id = 29  &
   type = solid_to_solid  &
   i_geometry_name = .MODEL_3xiaogaosufuyang26061702.________________19.SOLID21  &
   j_geometry_name = .MODEL_3xiaogaosufuyang26061702.________________21.SOLID87  &
   stiffness = 1.0E+08  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 2.0  &
   mu_dynamic = 0.1  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
contact create  &
   contact_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_30  &
   adams_id = 30  &
   type = solid_to_solid  &
   i_geometry_name = .MODEL_3xiaogaosufuyang26061702.________________12.SOLID14  &
   j_geometry_name = .MODEL_3xiaogaosufuyang26061702.________________21.SOLID87  &
   stiffness = 1.0E+08  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 2.0  &
   mu_dynamic = 0.1  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
contact create  &
   contact_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_31  &
   adams_id = 31  &
   type = solid_to_solid  &
   i_geometry_name = .MODEL_3xiaogaosufuyang26061702.________________8.SOLID10  &
   j_geometry_name = .MODEL_3xiaogaosufuyang26061702.________________21.SOLID87  &
   stiffness = 1.0E+08  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 2.0  &
   mu_dynamic = 0.1  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
contact create  &
   contact_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_32  &
   adams_id = 32  &
   type = solid_to_solid  &
   i_geometry_name = .MODEL_3xiaogaosufuyang26061702.________________20.SOLID22  &
   j_geometry_name = .MODEL_3xiaogaosufuyang26061702.________________21.SOLID87  &
   stiffness = 1.0E+08  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 2.0  &
   mu_dynamic = 0.1  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
!----------------------------------- Joints -----------------------------------!
!
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_1  &
   adams_id = 1  &
   i_marker_name =   &
                   .MODEL_3xiaogaosufuyang26061702.________________7.MARKER_1  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_6.MARKER_2
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_1  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_2  &
   adams_id = 2  &
   i_marker_name =   &
                   .MODEL_3xiaogaosufuyang26061702.________________7.MARKER_3  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE.MARKER_4
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_2  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_3  &
   adams_id = 3  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_9.MARKER_5  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_6.MARKER_6
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_3  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_4  &
   adams_id = 4  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_13.MARKER_7  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_9.MARKER_8
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_4  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_5  &
   adams_id = 5  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE.MARKER_9  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.PART4.MARKER_10
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_5  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_6  &
   adams_id = 6  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_2.MARKER_11  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.PART4.MARKER_12
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_6  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_7  &
   adams_id = 7  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_2.MARKER_13  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_14.MARKER_14
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_7  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_8  &
   adams_id = 8  &
   i_marker_name =   &
                   .MODEL_3xiaogaosufuyang26061702.________________6.MARKER_15  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_2.MARKER_16
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_8  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_9  &
   adams_id = 9  &
   i_marker_name =   &
                   .MODEL_3xiaogaosufuyang26061702.________________6.MARKER_17  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_3.MARKER_18
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_9  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_10  &
   adams_id = 10  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_3.MARKER_19  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_14.MARKER_20
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_10  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_11  &
   adams_id = 11  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.PART4.MARKER_21  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.ground.MARKER_22
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_11  &
   active = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_12  &
   adams_id = 12  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_9.MARKER_217  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE.MARKER_218
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_12  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_13  &
   adams_id = 13  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_12.MARKER_219  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_14.MARKER_220
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_13  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_14  &
   adams_id = 14  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_11.MARKER_221  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_8.MARKER_222
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_14  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_15  &
   adams_id = 15  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_8.MARKER_223  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_5.MARKER_224
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_15  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_16  &
   adams_id = 16  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_5.MARKER_225  &
   j_marker_name =   &
                   .MODEL_3xiaogaosufuyang26061702.________________13.MARKER_226
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_16  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_17  &
   adams_id = 17  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_4.MARKER_227  &
   j_marker_name =   &
                   .MODEL_3xiaogaosufuyang26061702.________________13.MARKER_228
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_17  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_18  &
   adams_id = 18  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_8.MARKER_229  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_4.MARKER_230
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_18  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_19  &
   adams_id = 19  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_10.MARKER_231  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_7.MARKER_232
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_19  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_20  &
   adams_id = 20  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_7.MARKER_233  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_15.MARKER_234
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_20  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_21  &
   adams_id = 21  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_7.MARKER_235  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_16.MARKER_236
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_21  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_22  &
   adams_id = 22  &
   i_marker_name =   &
                   .MODEL_3xiaogaosufuyang26061702.________________5.MARKER_237  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_16.MARKER_238
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_22  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_23  &
   adams_id = 23  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_15.MARKER_239  &
   j_marker_name =   &
                   .MODEL_3xiaogaosufuyang26061702.________________5.MARKER_240
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_23  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_24  &
   adams_id = 24  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_23.MARKER_241  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_19.MARKER_242
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_24  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_25  &
   adams_id = 25  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_19.MARKER_243  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_17.MARKER_244
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_25  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_26  &
   adams_id = 26  &
   i_marker_name =   &
                   .MODEL_3xiaogaosufuyang26061702.________________14.MARKER_245  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_17.MARKER_246
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_26  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_27  &
   adams_id = 27  &
   i_marker_name =   &
                   .MODEL_3xiaogaosufuyang26061702.________________14.MARKER_247  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_29.MARKER_248
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_27  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_28  &
   adams_id = 28  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_19.MARKER_249  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_29.MARKER_250
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_28  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_29  &
   adams_id = 29  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_22.MARKER_251  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_18.MARKER_252
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_29  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_30  &
   adams_id = 30  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_18.MARKER_253  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_27.MARKER_254
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_30  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_31  &
   adams_id = 31  &
   i_marker_name =   &
                   .MODEL_3xiaogaosufuyang26061702.________________16.MARKER_255  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_27.MARKER_256
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_31  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_32  &
   adams_id = 32  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_18.MARKER_257  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_31.MARKER_258
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_32  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_33  &
   adams_id = 33  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_31.MARKER_259  &
   j_marker_name =   &
                   .MODEL_3xiaogaosufuyang26061702.________________16.MARKER_260
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_33  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_34  &
   adams_id = 34  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_21.MARKER_261  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_25.MARKER_262
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_34  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_35  &
   adams_id = 35  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_25.MARKER_263  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_28.MARKER_264
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_35  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_36  &
   adams_id = 36  &
   i_marker_name =   &
                   .MODEL_3xiaogaosufuyang26061702.________________18.MARKER_265  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_28.MARKER_266
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_36  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_37  &
   adams_id = 37  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_25.MARKER_267  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_30.MARKER_268
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_37  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_38  &
   adams_id = 38  &
   i_marker_name =   &
                   .MODEL_3xiaogaosufuyang26061702.________________18.MARKER_269  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_30.MARKER_270
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_38  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_39  &
   adams_id = 39  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_20.MARKER_271  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_24.MARKER_272
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_39  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_40  &
   adams_id = 40  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_26.MARKER_273  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_24.MARKER_274
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_40  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_41  &
   adams_id = 41  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_24.MARKER_275  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_32.MARKER_276
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_41  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_42  &
   adams_id = 42  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_26.MARKER_277  &
   j_marker_name =   &
                   .MODEL_3xiaogaosufuyang26061702.________________15.MARKER_278
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_42  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_43  &
   adams_id = 43  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_32.MARKER_279  &
   j_marker_name =   &
                   .MODEL_3xiaogaosufuyang26061702.________________15.MARKER_280
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_43  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_44  &
   adams_id = 44  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_61.MARKER_281  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_55.MARKER_282
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_44  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_45  &
   adams_id = 45  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_55.MARKER_283  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_49.MARKER_284
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_45  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_46  &
   adams_id = 46  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_49.MARKER_285  &
   j_marker_name =   &
                   .MODEL_3xiaogaosufuyang26061702.________________11.MARKER_286
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_46  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_47  &
   adams_id = 47  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_55.MARKER_287  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_57.MARKER_288
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_47  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_48  &
   adams_id = 48  &
   i_marker_name =   &
                   .MODEL_3xiaogaosufuyang26061702.________________11.MARKER_289  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_57.MARKER_290
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_48  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_49  &
   adams_id = 49  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_63.MARKER_291  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_56.MARKER_292
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_49  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_50  &
   adams_id = 50  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_56.MARKER_293  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_52.MARKER_294
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_50  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_51  &
   adams_id = 51  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_56.MARKER_295  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_58.MARKER_296
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_51  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_52  &
   adams_id = 52  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_52.MARKER_297  &
   j_marker_name =   &
                   .MODEL_3xiaogaosufuyang26061702.________________19.MARKER_298
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_52  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_53  &
   adams_id = 53  &
   i_marker_name =   &
                   .MODEL_3xiaogaosufuyang26061702.________________19.MARKER_299  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_58.MARKER_300
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_53  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_54  &
   adams_id = 54  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_53.MARKER_301  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_64.MARKER_302
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_54  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_55  &
   adams_id = 55  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_53.MARKER_303  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_50.MARKER_304
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_55  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_56  &
   adams_id = 56  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_50.MARKER_305  &
   j_marker_name =   &
                   .MODEL_3xiaogaosufuyang26061702.________________12.MARKER_306
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_56  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_57  &
   adams_id = 57  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_60.MARKER_307  &
   j_marker_name =   &
                   .MODEL_3xiaogaosufuyang26061702.________________12.MARKER_308
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_57  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_58  &
   adams_id = 58  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_53.MARKER_309  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_60.MARKER_310
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_58  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_59  &
   adams_id = 59  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_62.MARKER_311  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_54.MARKER_312
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_59  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_60  &
   adams_id = 60  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_54.MARKER_313  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_51.MARKER_314
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_60  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_61  &
   adams_id = 61  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_54.MARKER_315  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_59.MARKER_316
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_61  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_62  &
   adams_id = 62  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_59.MARKER_317  &
   j_marker_name =   &
                   .MODEL_3xiaogaosufuyang26061702.________________10.MARKER_318
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_62  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_63  &
   adams_id = 63  &
   i_marker_name =   &
                   .MODEL_3xiaogaosufuyang26061702.________________10.MARKER_319  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_51.MARKER_320
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_63  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_64  &
   adams_id = 64  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_48.MARKER_321  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_42.MARKER_322
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_64  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_65  &
   adams_id = 65  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_35.MARKER_323  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_42.MARKER_324
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_65  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_66  &
   adams_id = 66  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_42.MARKER_325  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_37.MARKER_326
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_66  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_67  &
   adams_id = 67  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_35.MARKER_327  &
   j_marker_name =   &
                   .MODEL_3xiaogaosufuyang26061702.________________9.MARKER_328
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_67  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_68  &
   adams_id = 68  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_37.MARKER_329  &
   j_marker_name =   &
                   .MODEL_3xiaogaosufuyang26061702.________________9.MARKER_330
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_68  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_69  &
   adams_id = 69  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_45.MARKER_331  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_44.MARKER_332
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_69  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_70  &
   adams_id = 70  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_34.MARKER_333  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_44.MARKER_334
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_70  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_71  &
   adams_id = 71  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_44.MARKER_335  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_40.MARKER_336
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_71  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_72  &
   adams_id = 72  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_40.MARKER_337  &
   j_marker_name =   &
                   .MODEL_3xiaogaosufuyang26061702.________________20.MARKER_338
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_72  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_73  &
   adams_id = 73  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_34.MARKER_339  &
   j_marker_name =   &
                   .MODEL_3xiaogaosufuyang26061702.________________20.MARKER_340
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_73  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_74  &
   adams_id = 74  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_46.MARKER_341  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_41.MARKER_342
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_74  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_75  &
   adams_id = 75  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_41.MARKER_343  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_36.MARKER_344
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_75  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_76  &
   adams_id = 76  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_36.MARKER_345  &
   j_marker_name =   &
                   .MODEL_3xiaogaosufuyang26061702.________________8.MARKER_346
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_76  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_77  &
   adams_id = 77  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_41.MARKER_347  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_38.MARKER_348
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_77  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_78  &
   adams_id = 78  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_38.MARKER_349  &
   j_marker_name =   &
                   .MODEL_3xiaogaosufuyang26061702.________________8.MARKER_350
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_78  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_79  &
   adams_id = 79  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_47.MARKER_351  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_43.MARKER_352
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_79  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_80  &
   adams_id = 80  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_43.MARKER_353  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_33.MARKER_354
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_80  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_81  &
   adams_id = 81  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_43.MARKER_355  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_39.MARKER_356
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_81  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_82  &
   adams_id = 82  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_39.MARKER_357  &
   j_marker_name =   &
                   .MODEL_3xiaogaosufuyang26061702.________________17.MARKER_358
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_82  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_83  &
   adams_id = 83  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_33.MARKER_359  &
   j_marker_name =   &
                   .MODEL_3xiaogaosufuyang26061702.________________17.MARKER_360
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_83  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_84  &
   adams_id = 84  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.PART3.MARKER_361  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_46.MARKER_362
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_84  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_85  &
   adams_id = 85  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_47.MARKER_363  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.PART3.MARKER_364
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_85  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_86  &
   adams_id = 86  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_39.MARKER_365  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.PART3.MARKER_366
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_86  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_87  &
   adams_id = 87  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_38.MARKER_367  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.PART3.MARKER_368
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_87  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_88  &
   adams_id = 88  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.PART3.MARKER_369  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.ground.MARKER_370
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_88  &
   active = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_89  &
   adams_id = 89  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.PART3.MARKER_371  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_48.MARKER_372
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_89  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_90  &
   adams_id = 90  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.PART3.MARKER_373  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_37.MARKER_374
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_90  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_91  &
   adams_id = 91  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_40.MARKER_375  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.PART3.MARKER_376
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_91  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_92  &
   adams_id = 92  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_45.MARKER_377  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.PART3.MARKER_378
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_92  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_93  &
   adams_id = 93  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_59.MARKER_379  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.PART3.MARKER_380
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_93  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_94  &
   adams_id = 94  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_60.MARKER_381  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.PART3.MARKER_382
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_94  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_95  &
   adams_id = 95  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_64.MARKER_383  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.PART3.MARKER_384
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_95  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_96  &
   adams_id = 96  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_62.MARKER_385  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.PART3.MARKER_386
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_96  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_97  &
   adams_id = 97  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_61.MARKER_387  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.PART3.MARKER_388
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_97  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_98  &
   adams_id = 98  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_63.MARKER_389  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.PART3.MARKER_390
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_98  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_99  &
   adams_id = 99  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_57.MARKER_391  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.PART3.MARKER_392
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_99  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_100  &
   adams_id = 100  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_58.MARKER_393  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.PART3.MARKER_394
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_100  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_101  &
   adams_id = 101  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_4.MARKER_395  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.PART4.MARKER_396
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_101  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_102  &
   adams_id = 102  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_16.MARKER_397  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.PART4.MARKER_398
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_102  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_103  &
   adams_id = 103  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_10.MARKER_399  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.PART4.MARKER_400
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_103  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_104  &
   adams_id = 104  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_11.MARKER_401  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.PART4.MARKER_402
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_104  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_105  &
   adams_id = 105  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_32.MARKER_403  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.PART4.MARKER_404
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_105  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_106  &
   adams_id = 106  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_31.MARKER_405  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.PART4.MARKER_406
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_106  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_107  &
   adams_id = 107  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_13.MARKER_407  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.PART4.MARKER_408
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_107  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_108  &
   adams_id = 108  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_12.MARKER_409  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.PART4.MARKER_410
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_108  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_109  &
   adams_id = 109  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.PART4.MARKER_411  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_30.MARKER_412
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_109  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_110  &
   adams_id = 110  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_29.MARKER_413  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.PART4.MARKER_414
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_110  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_111  &
   adams_id = 111  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_21.MARKER_415  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.PART4.MARKER_416
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_111  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_112  &
   adams_id = 112  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_23.MARKER_417  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.PART4.MARKER_418
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_112  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_113  &
   adams_id = 113  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_22.MARKER_419  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.PART4.MARKER_420
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_113  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_114  &
   adams_id = 114  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_20.MARKER_421  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.PART4.MARKER_422
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_114  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_115  &
   adams_id = 115  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.PART4.MARKER_423  &
   j_marker_name =   &
                   .MODEL_3xiaogaosufuyang26061702.________________3.MARKER_424
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_115  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_116  &
   adams_id = 116  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_68.MARKER_425  &
   j_marker_name =   &
                   .MODEL_3xiaogaosufuyang26061702.________________3.MARKER_426
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_116  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_117  &
   adams_id = 117  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_66.MARKER_427  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.PART4.MARKER_428
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_117  &
   name_visibility = off
!
constraint create joint translational  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_118  &
   adams_id = 118  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_68.MARKER_429  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_66.MARKER_430
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_118  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_119  &
   adams_id = 119  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.PART3.MARKER_431  &
   j_marker_name =   &
                   .MODEL_3xiaogaosufuyang26061702.________________3.MARKER_432
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_119  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_120  &
   adams_id = 120  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.PART3.MARKER_433  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_71.MARKER_434
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_120  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_121  &
   adams_id = 121  &
   i_marker_name =   &
                   .MODEL_3xiaogaosufuyang26061702.________________3.MARKER_435  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_72.MARKER_436
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_121  &
   name_visibility = off
!
constraint create joint translational  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_122  &
   adams_id = 122  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_72.MARKER_437  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.NONE_71.MARKER_438
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_122  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_123  &
   adams_id = 123  &
   i_marker_name =   &
                   .MODEL_3xiaogaosufuyang26061702._______________.MARKER_439  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.ground.MARKER_440
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_123  &
   active = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_124  &
   adams_id = 124  &
   i_marker_name =   &
                   .MODEL_3xiaogaosufuyang26061702.________________21.MARKER_443  &
   j_marker_name = .MODEL_3xiaogaosufuyang26061702.ground.MARKER_444
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_124  &
   name_visibility = off
!
!------------------------------ Joint Primitives ------------------------------!
!
!
constraint create primitive_joint parallel_axis  &
   jprim_name = .MODEL_3xiaogaosufuyang26061702.JPRIM_1  &
   adams_id = 1  &
   i_marker_name = .MODEL_3xiaogaosufuyang26061702.PART3.MARKER_441  &
   j_marker_name =   &
                   .MODEL_3xiaogaosufuyang26061702._______________.MARKER_442
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JPRIM_1  &
   active = off  &
   name_visibility = off
!
constraint create primitive_joint parallel_axis  &
   jprim_name = .MODEL_3xiaogaosufuyang26061702.JPRIM_2  &
   adams_id = 2  &
   i_marker_name =   &
                   .MODEL_3xiaogaosufuyang26061702.________________3.MARKER_445  &
   j_marker_name =   &
                   .MODEL_3xiaogaosufuyang26061702.________________21.MARKER_446
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.JPRIM_2  &
   name_visibility = off
!
!----------------------------------- Forces -----------------------------------!
!
!
!----------------------------- Simulation Scripts -----------------------------!
!
!
simulation script create  &
   sim_script_name = .MODEL_3xiaogaosufuyang26061702.Last_Sim  &
   commands =   &
              "simulation single_run transient type=auto_select initial_static=no end_time=250.0 step_size=0.1 model_name=.MODEL_3xiaogaosufuyang26061702"
!
!------------------------------ Dynamic Graphics ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_3xiaogaosufuyang26061702.ground
!
geometry create shape gcontact  &
   contact_force_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_100  &
   adams_id = 100  &
   contact_element_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_1  &
   force_display = components
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_100  &
   active = off  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_101  &
   adams_id = 101  &
   contact_element_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_2  &
   force_display = components
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_101  &
   active = off  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_102  &
   adams_id = 102  &
   contact_element_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_3  &
   force_display = components
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_102  &
   active = off  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_103  &
   adams_id = 103  &
   contact_element_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_4  &
   force_display = components
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_103  &
   active = off  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_104  &
   adams_id = 104  &
   contact_element_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_5  &
   force_display = components
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_104  &
   active = off  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_105  &
   adams_id = 105  &
   contact_element_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_6  &
   force_display = components
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_105  &
   active = off  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_106  &
   adams_id = 106  &
   contact_element_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_7  &
   force_display = components
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_106  &
   active = off  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_107  &
   adams_id = 107  &
   contact_element_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_8  &
   force_display = components
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_107  &
   active = off  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_108  &
   adams_id = 108  &
   contact_element_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_9  &
   force_display = components
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_108  &
   active = off  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_109  &
   adams_id = 109  &
   contact_element_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_10  &
   force_display = components
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_109  &
   active = off  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_110  &
   adams_id = 110  &
   contact_element_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_11  &
   force_display = components
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_110  &
   active = off  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_111  &
   adams_id = 111  &
   contact_element_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_12  &
   force_display = components
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_111  &
   active = off  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_112  &
   adams_id = 112  &
   contact_element_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_13  &
   force_display = components
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_112  &
   active = off  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_113  &
   adams_id = 113  &
   contact_element_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_14  &
   force_display = components
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_113  &
   active = off  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_116  &
   adams_id = 116  &
   contact_element_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_15  &
   force_display = components
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_116  &
   active = off  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_119  &
   adams_id = 119  &
   contact_element_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_16  &
   force_display = components
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_119  &
   active = off  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_122  &
   adams_id = 122  &
   contact_element_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_17  &
   force_display = components
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_122  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_123  &
   adams_id = 123  &
   contact_element_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_18  &
   force_display = components
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_123  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_124  &
   adams_id = 124  &
   contact_element_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_19  &
   force_display = components
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_124  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_125  &
   adams_id = 125  &
   contact_element_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_20  &
   force_display = components
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_125  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_126  &
   adams_id = 126  &
   contact_element_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_21  &
   force_display = components
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_126  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_127  &
   adams_id = 127  &
   contact_element_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_22  &
   force_display = components
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_127  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_128  &
   adams_id = 128  &
   contact_element_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_23  &
   force_display = components
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_128  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_129  &
   adams_id = 129  &
   contact_element_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_24  &
   force_display = components
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_129  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_130  &
   adams_id = 130  &
   contact_element_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_25  &
   force_display = components
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_130  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_131  &
   adams_id = 131  &
   contact_element_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_26  &
   force_display = components
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_131  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_132  &
   adams_id = 132  &
   contact_element_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_27  &
   force_display = components
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_132  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_133  &
   adams_id = 133  &
   contact_element_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_28  &
   force_display = components
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_133  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_134  &
   adams_id = 134  &
   contact_element_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_29  &
   force_display = components
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_134  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_135  &
   adams_id = 135  &
   contact_element_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_30  &
   force_display = components
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_135  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_136  &
   adams_id = 136  &
   contact_element_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_31  &
   force_display = components
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_136  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_137  &
   adams_id = 137  &
   contact_element_name = .MODEL_3xiaogaosufuyang26061702.CONTACT_32  &
   force_display = components
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.GCONTACT_137  &
   color = RED
!
geometry create curve polyline  &
   polyline_name = .MODEL_3xiaogaosufuyang26061702.tmpcurvesided1  &
   location = 0.0, 0.0, 0.0
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.tmpcurvesided1  &
   visibility = off
!
geometry create curve polyline  &
   polyline_name = .MODEL_3xiaogaosufuyang26061702.tmpcurvesided2  &
   location = 0.0, 0.0, 0.0
!
geometry attributes  &
   geometry_name = .MODEL_3xiaogaosufuyang26061702.tmpcurvesided2  &
   visibility = off
!
!---------------------------------- Motions -----------------------------------!
!
!
constraint create motion_generator  &
   motion_name = .MODEL_3xiaogaosufuyang26061702.MOTION_1  &
   adams_id = 1  &
   type_of_freedom = rotational  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_107  &
   function = ""
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.MOTION_1  &
   name_visibility = off
!
constraint create motion_generator  &
   motion_name = .MODEL_3xiaogaosufuyang26061702.MOTION_2  &
   adams_id = 2  &
   type_of_freedom = rotational  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_108  &
   function = ""
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.MOTION_2  &
   name_visibility = off
!
constraint create motion_generator  &
   motion_name = .MODEL_3xiaogaosufuyang26061702.MOTION_3  &
   adams_id = 3  &
   type_of_freedom = rotational  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_103  &
   function = ""
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.MOTION_3  &
   name_visibility = off
!
constraint create motion_generator  &
   motion_name = .MODEL_3xiaogaosufuyang26061702.MOTION_4  &
   adams_id = 4  &
   type_of_freedom = rotational  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_104  &
   function = ""
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.MOTION_4  &
   name_visibility = off
!
constraint create motion_generator  &
   motion_name = .MODEL_3xiaogaosufuyang26061702.MOTION_5  &
   adams_id = 5  &
   type_of_freedom = rotational  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_111  &
   function = ""
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.MOTION_5  &
   name_visibility = off
!
constraint create motion_generator  &
   motion_name = .MODEL_3xiaogaosufuyang26061702.MOTION_6  &
   adams_id = 6  &
   type_of_freedom = rotational  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_112  &
   function = ""
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.MOTION_6  &
   name_visibility = off
!
constraint create motion_generator  &
   motion_name = .MODEL_3xiaogaosufuyang26061702.MOTION_7  &
   adams_id = 7  &
   type_of_freedom = rotational  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_113  &
   function = ""
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.MOTION_7  &
   name_visibility = off
!
constraint create motion_generator  &
   motion_name = .MODEL_3xiaogaosufuyang26061702.MOTION_8  &
   adams_id = 8  &
   type_of_freedom = rotational  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_114  &
   function = ""
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.MOTION_8  &
   name_visibility = off
!
constraint create motion_generator  &
   motion_name = .MODEL_3xiaogaosufuyang26061702.MOTION_9  &
   adams_id = 9  &
   type_of_freedom = rotational  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_85  &
   function = ""
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.MOTION_9  &
   name_visibility = off
!
constraint create motion_generator  &
   motion_name = .MODEL_3xiaogaosufuyang26061702.MOTION_10  &
   adams_id = 10  &
   type_of_freedom = rotational  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_84  &
   function = ""
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.MOTION_10  &
   name_visibility = off
!
constraint create motion_generator  &
   motion_name = .MODEL_3xiaogaosufuyang26061702.MOTION_11  &
   adams_id = 11  &
   type_of_freedom = rotational  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_69  &
   function = ""
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.MOTION_11  &
   name_visibility = off
!
constraint create motion_generator  &
   motion_name = .MODEL_3xiaogaosufuyang26061702.MOTION_12  &
   adams_id = 12  &
   type_of_freedom = rotational  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_89  &
   function = ""
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.MOTION_12  &
   name_visibility = off
!
constraint create motion_generator  &
   motion_name = .MODEL_3xiaogaosufuyang26061702.MOTION_13  &
   adams_id = 13  &
   type_of_freedom = rotational  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_98  &
   function = ""
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.MOTION_13  &
   name_visibility = off
!
constraint create motion_generator  &
   motion_name = .MODEL_3xiaogaosufuyang26061702.MOTION_14  &
   adams_id = 14  &
   type_of_freedom = rotational  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_97  &
   function = ""
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.MOTION_14  &
   name_visibility = off
!
constraint create motion_generator  &
   motion_name = .MODEL_3xiaogaosufuyang26061702.MOTION_15  &
   adams_id = 15  &
   type_of_freedom = rotational  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_96  &
   function = ""
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.MOTION_15  &
   name_visibility = off
!
constraint create motion_generator  &
   motion_name = .MODEL_3xiaogaosufuyang26061702.MOTION_16  &
   adams_id = 16  &
   type_of_freedom = rotational  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_95  &
   function = ""
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.MOTION_16  &
   name_visibility = off
!
constraint create motion_generator  &
   motion_name = .MODEL_3xiaogaosufuyang26061702.MOTION_17  &
   adams_id = 17  &
   type_of_freedom = translational  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_122  &
   function = ""
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.MOTION_17  &
   name_visibility = off
!
constraint create motion_generator  &
   motion_name = .MODEL_3xiaogaosufuyang26061702.MOTION_18  &
   adams_id = 18  &
   type_of_freedom = translational  &
   joint_name = .MODEL_3xiaogaosufuyang26061702.JOINT_118  &
   function = ""
!
constraint attributes  &
   constraint_name = .MODEL_3xiaogaosufuyang26061702.MOTION_18  &
   name_visibility = off
!
!---------------------------------- Accgrav -----------------------------------!
!
!
force create body gravitational  &
   gravity_field_name = ACCGRAV_1  &
   x_component_gravity = 0.0  &
   y_component_gravity = -9.80665  &
   z_component_gravity = 0.0
!
!----------------------------- Analysis settings ------------------------------!
!
!
!---------------------------------- Measures ----------------------------------!
!
!
measure create object  &
   measure_name = .MODEL_3xiaogaosufuyang26061702.MOTION_1_MEA_1  &
   from_first = yes  &
   object = .MODEL_3xiaogaosufuyang26061702.MOTION_1  &
   characteristic = element_torque  &
   component = mag_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .MODEL_3xiaogaosufuyang26061702.MOTION_1_MEA_1  &
   color = WHITE
!
measure create object  &
   measure_name = .MODEL_3xiaogaosufuyang26061702.MOTION_8_MEA_1  &
   from_first = yes  &
   object = .MODEL_3xiaogaosufuyang26061702.MOTION_8  &
   characteristic = element_torque  &
   component = mag_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .MODEL_3xiaogaosufuyang26061702.MOTION_8_MEA_1  &
   color = WHITE
!
!---------------------------- Function definitions ----------------------------!
!
!
constraint modify motion_generator  &
   motion_name = .MODEL_3xiaogaosufuyang26061702.MOTION_1  &
   function = "30.0d * time"
!
constraint modify motion_generator  &
   motion_name = .MODEL_3xiaogaosufuyang26061702.MOTION_2  &
   function = "30.0d * time"
!
constraint modify motion_generator  &
   motion_name = .MODEL_3xiaogaosufuyang26061702.MOTION_3  &
   function = "30.0d * time"
!
constraint modify motion_generator  &
   motion_name = .MODEL_3xiaogaosufuyang26061702.MOTION_4  &
   function = "30.0d * time"
!
constraint modify motion_generator  &
   motion_name = .MODEL_3xiaogaosufuyang26061702.MOTION_5  &
   function = "30.0d * time"
!
constraint modify motion_generator  &
   motion_name = .MODEL_3xiaogaosufuyang26061702.MOTION_6  &
   function = "30.0d * time"
!
constraint modify motion_generator  &
   motion_name = .MODEL_3xiaogaosufuyang26061702.MOTION_7  &
   function = "30.0d * time"
!
constraint modify motion_generator  &
   motion_name = .MODEL_3xiaogaosufuyang26061702.MOTION_8  &
   function = "30.0d * time"
!
constraint modify motion_generator  &
   motion_name = .MODEL_3xiaogaosufuyang26061702.MOTION_9  &
   function = "30.0d * time"
!
constraint modify motion_generator  &
   motion_name = .MODEL_3xiaogaosufuyang26061702.MOTION_10  &
   function = "30.0d * time"
!
constraint modify motion_generator  &
   motion_name = .MODEL_3xiaogaosufuyang26061702.MOTION_11  &
   function = "30.0d * time"
!
constraint modify motion_generator  &
   motion_name = .MODEL_3xiaogaosufuyang26061702.MOTION_12  &
   function = "30.0d * time"
!
constraint modify motion_generator  &
   motion_name = .MODEL_3xiaogaosufuyang26061702.MOTION_13  &
   function = "30.0d * time"
!
constraint modify motion_generator  &
   motion_name = .MODEL_3xiaogaosufuyang26061702.MOTION_14  &
   function = "30.0d * time"
!
constraint modify motion_generator  &
   motion_name = .MODEL_3xiaogaosufuyang26061702.MOTION_15  &
   function = "30.0d * time"
!
constraint modify motion_generator  &
   motion_name = .MODEL_3xiaogaosufuyang26061702.MOTION_16  &
   function = "30.0d * time"
!
constraint modify motion_generator  &
   motion_name = .MODEL_3xiaogaosufuyang26061702.MOTION_17  &
   function = "STEP(time,20,0,30,0.05) + STEP(time,50,0,60,-0.05)"
!
constraint modify motion_generator  &
   motion_name = .MODEL_3xiaogaosufuyang26061702.MOTION_18  &
   function = "STEP(time,80,0,90,-0.05) + STEP(time,100,0,110,0.05)"
!
model display  &
   model_name = MODEL_3xiaogaosufuyang26061702
