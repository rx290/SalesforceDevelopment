# String Class

    Documentation: https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_string.htm

Useful Methods:
    1. Capitalize()
    2. Contains()
    3. ToUpperCase()
    4. ToLowerCase()
    5. endsWith()
    6. equals()
    7. indexOf()
    8. length()
    9. remove()
    10. replace(target, replacement)
    11. reverse()
    12. split(regexp)
    13. trim()
    14. valueOf()
    15. isBlank()
    16. isEmpty()
    17. join()
    18. isWhitespace()

Example:
        String str = 'i am a the first part of a sentence';
        String str_2 = 'and this is the capitalized part of the sentence.'
        // Capitalize Method
        system.debug(str+ str_2.capitalize());

        // Contain Method
        system.debug('Contains First Part Keywords? : '+ str_2.contains('first part'));

        // ToUpperCase()
        system.debug(str.toUpperCase());

        // ToLowerCase()
        system.debug(str_2.toLowerCase());

        // equal
        system.debug(str.equals(str_2));

        //indexof
        system.debug(str.indexOf('first'));

        //replace
        system.debug(str.replace('the',''));

        //split
        System.debug('Split by space: '+str.split('string_var'))

        //trim
        String str_var =' sss sss ';
        System.debug(str.trim(str_var))
        result would be sss sss without trailing or ending whitespace.

        // ValueOf
        // Convert any value to string.
        Integer x = 22;
        System.debug(valueOf(x))

        //IsBlank()
        // Returns true or false considering white spaces, i.e. if a string has only white spaces this will return false.
        System.debug(IsBlank(str_var))

        // IsEmpty()
        // Returns true or false without considering white space.
        system.debut(IsEmpty(str_var))

        //IsNumeric()
        // Returns true if the string has only unicode digits or white spaces.

        //IsAlphanumveric()
        // Returns true if the string contains both numeric, alphabets and special character.

        