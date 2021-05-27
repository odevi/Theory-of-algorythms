package TheoryOfAlgorithms.Odevii;

import TheoryOfAlgorithms.Odevii.Lab3.Lab3;
import TheoryOfAlgorithms.Odevii.Lab5.Lab5_2;
import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class OdeviiApplicationTests {

    @Test
    void contextLoads() {
    }
    
    @Test
    void Laba3Test()
    {
        Lab3 lab3 = new Lab3(-5);
        assertEquals(20, lab3.GetArrayLength());
        
        lab3 = new Lab3(30);
        lab3.InitArray();
        assertEquals(30, lab3.GetArrayLength());
        
        assertEquals("Out of range!", lab3.GetElement(-5));
        assertEquals("Out of range!", lab3.GetElement(50));
        assertEquals("5", lab3.GetElement(21));
    }
    
    @Test
    void Laba5Test()
    {
        Lab5_2 lab5 = new Lab5_2(-4);
        lab5.InitList();
        assertEquals(20, lab5.DisplayListLength());
        lab5 = new Lab5_2(10);
        lab5.InitList();
        assertEquals(10, lab5.DisplayListLength());
        assertEquals(-1, lab5.jumpSearch("test"));
        lab5.SortByStringField();
        assertEquals(7, lab5.jumpSearch("model #7"));
    }
}
