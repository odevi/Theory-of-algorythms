/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TheoryOfAlgorithms.Odevii.Lab6_7;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class Calculator {
    public static int GetSumOfNumbers(int i, int number)
    {
        if(number < 1)
            return 0;
        return number % 10 + GetSumOfNumbers(i + 1, number / 10);
    }
}
