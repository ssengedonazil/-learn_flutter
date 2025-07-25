
import 'package:flutter/material.dart';

// use valuenotifier to refresh content(handle data)
// use ValueListenableBuilder:listen to data without state 
ValueNotifier<int> selectedPageNotifier = ValueNotifier(0);
ValueNotifier<bool> isDarkModeNotifier = ValueNotifier(false);