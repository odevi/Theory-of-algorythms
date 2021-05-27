
<%@page import="TheoryOfAlgorithms.Odevii.Lab5.Lab5_2"%>
<%@page import="TheoryOfAlgorithms.Odevii.Lab5.Lab5_1"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 5</title>
    </head>
    <body>
        <a href="index.jsp">Back to landing page</a>
        <%! Lab5_1 lab5_1 = new Lab5_1("Psychology is the science of mind and behavior. "
            + "Psychology includes the study of conscious and unconscious phenomena, "
            + "as well as feelings and thought. It is an academic discipline of immense"
            + " scope. Psychologists also seek an understanding of the emergent properties "
            + "of brains, linking the discipline to neuroscience. As a social science, "
            + "psychologists aim to understand the behavior of individuals and groups."
            + "A professional practitioner or researcher involved in the discipline is"
            + " called a psychologist and can be classified as a social, behavioral, or"
            + " cognitive scientist. Some psychologists attempt to understand the role of "
            + "mental functions in individual and social behavior. Others explore the "
            + "physiological and biological processes that underlie cognitive functions and behaviors. "
            + "Psychologists explore behavior and mental processes, including perception, "
            + "cognition, attention, emotion, intelligence, subjective experiences, "
            + "motivation, brain functioning, and personality. Psychologists' interests "
            + "extend to interpersonal relationships, psychological resilience, family "
            + "resilience, and other areas within social psychology. Psychologists also "
            + "consider the unconscious mind. Research psychologists employ empirical"
            + " methods to infer causal and correlational relationships between psychosocial "
            + "variables. Some, but not all, clinical and counseling psychologists rely on "
            + "symbolic interpretation. While psychological knowledge is often "
            + "applied to the assessment and treatment of mental health problems, "
            + "it is also directed towards understanding and solving problems in several "
            + "spheres of human activity. By many accounts, psychology ultimately aims to"
            + " benefit society. Many psychologists are involved in some kind of therapeutic "
            + "role, practicing in clinical, counseling, or school settings. Other psychologists"
            + " conduct scientific research on a wide range of topics related to mental processes"
            + " and behavior. Typically the latter group of psychologists work in academic settings"
            + " (e.g., universities, medical schools, hospitals). Another group of psychologists is"
            + " employed in industrial and organizational settings. Yet others are involved in work "
            + "on human development, aging, sports, health, forensics, and the media.");%>
            <p><b>Text:</b> <%= lab5_1.GetText()%></p>
            <form action="./lab5" method="post" class="form-inline">
                <label for="x"><b>Enter word to search for: </b></label>
                <div class="input-group">
                    <input  class="form-control" id="find" type="text" name="find"/>
                    <input class="btn btn-success" type="submit" value="Submit"/>
                </div>
                <p class="mt-3 mb-0"><b>Word number: </b><%=request.getAttribute("result")%></p>
            </form>
            <p><b>Most popular words:</b> <%= lab5_1.GetMostPopularWords()%></p>
            <p><b>Most popular sequences (4):</b>
                <%= lab5_1.MostPopularSequences(4)%></p>
            <%! Lab5_2 lab5_2 = new Lab5_2(20); %>
            <% lab5_2.InitList(); %>
            <p><b>List: </b><br/> <%= lab5_2.DisplayList()%></p>
            <%! String find = "model #18"; %>
            <% lab5_2.SortByStringField();%>
            <p><b>Sorted by string field: </b><br/> <%= lab5_2.DisplayList()%></p>
            <p><b>Index of element with value </b><%= find %>: <%= lab5_2.jumpSearch(find)%></p>
            <% lab5_2.SortByIntField();%>
            <p><b>Sorted by byte field: </b><br/> <%= lab5_2.DisplayList()%></p>
    </body>
</html>
