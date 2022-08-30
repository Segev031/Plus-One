List<int> plusOne(List<int> digits) {
      var reversedList = new List.from(digits.reversed);
      int i = 0;
      for (; i < reversedList.length; i++) {
          if (reversedList[i] == 9)
              reversedList[i] = 0;
          else 
              break;
      }
      if (i != reversedList.length)
          reversedList[i] += 1;
      else {
          reversedList.add(1);
      }
      digits = new List.from(reversedList.reversed);
      return digits;
  }