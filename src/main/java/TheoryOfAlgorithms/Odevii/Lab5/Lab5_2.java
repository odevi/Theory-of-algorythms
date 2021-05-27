/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TheoryOfAlgorithms.Odevii.Lab5;

import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Random;

public class Lab5_2 {
    private int modelsNumber;
    public LinkedList<Model> list;
    
    public Lab5_2(int modelsNumber)
    {
        if(modelsNumber < 0)
            modelsNumber = 20;

        this.modelsNumber = modelsNumber;
        list = new LinkedList<Model>();
    }
    
    public void InitList()
    {
        Random rd = new Random();
        list.clear();
        for (int i = 0; i < modelsNumber; i++)
            list.add(new Model("model #" + i, rd.nextInt()));
    }
    
    public String DisplayList()
    {
        String s = "";
        Iterator<Model> itr = list.iterator();
        for (int i = 0; itr.hasNext(); i++) {
            s += i + ". " + itr.next() + "<br/>";
        }
        return s;
    }
    
    public int DisplayListLength()
    {
        return list.size();
    }
    
    public int jumpSearch(String x)
    {
        int n = list.size();
 
        int step = (int)Math.floor(Math.sqrt(n));
 
        int prev = 0;
        while (list.get(Math.min(step, n)-1).getStringField().compareTo(x) < 0)
        {
            prev = step;
            step += (int)Math.floor(Math.sqrt(n));
            if (prev >= n)
                return -1;
        }
        
        while (list.get(prev).getStringField().compareTo(x) < 0)
        {
            prev++;
            if (prev == Math.min(step, n))
                return -1;
        }

        if (list.get(prev).getStringField().equals(x))
            return prev;
 
        return -1;
    }
    
    public void Sort(Comparator<Model> comparator)
    {
        int listLength = list.size();
        Model key;
        int j;
        for (int i = 1; i < listLength; ++i) {
            key = list.get(i);
            j = i - 1;
            while (j >= 0 && comparator.compare(list.get(j), key) > 0) {
                list.set(j + 1, list.get(j--));
            }
            list.set(j + 1, key);
        }
    }
    
    public void SortByStringField()
    {
        ByStringComparer comparator = new ByStringComparer();
        Sort(comparator);
    }
    
    public void SortByIntField()
    {
        ByIntComparer comparator = new ByIntComparer();
        Sort(comparator);
    }
}
