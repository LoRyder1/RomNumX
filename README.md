**ROMAN NUMERALS KATA**

The Romans wrote their numbers using letters; specifically the letters 'I' meaning '1', 'V' meaning '5', 'X' meaning '10', 'L' meaning '50', 'C' meaning '100', 'D' meaning '500', and 'M' meaning '1000'. There were certain rules that the numerals followed which should be observed.

The symbols 'I', 'X', 'C', and 'M' can be repeated at most 3 times in a row. The symbols 'V', 'L', and 'D' can never be repeated. The '1' symbols ('I', 'X', and 'C') can only be subtracted from the 2 next highest values ('IV' and 'IX', 'XL' and 'XC', 'CD' and 'CM'). Only one subtraction can be made per numeral ('XC' is allowed, 'XXC' is not). The '5' symbols ('V', 'L', and 'D') can never be subtracted.

Feature 1 - Converting Arabic to Roman

Feature 2 - Converting Roman to Arabic

The test names should describe a behavior. The tests are telling me that it "should convert 9 to IX" but I'm not really sure why. Consider a test name that would describe that there is actually a subtraction occurring: "when a smaller numeral is placed before a larger numeral then the smaller numeral is subtracted" for example. Sometimes the description of the problem or acceptance criteria is a good starting point for a testable behavior. "The '5' symbols ('V', 'L', and 'D') can never be subtracted." taken from the kata description could be a worthwhile test too, possibly.