function buscarCidade() {
    var estadoInput = document.getElementById("estado").value;
    var cidadeInput = document.getElementById("cidade").value;
    var linhas = document.getElementsByTagName("tbody")[0].getElementsByTagName("tr");

    for (var i = 0; i < linhas.length; i++) {
        var colunas = linhas[i].getElementsByTagName("td");
        var estado = colunas[0].innerText;
        var cidade = colunas[1].innerText;

        if (estado === estadoInput && cidade === cidadeInput) {
            linhas[i].style.display = "table-row";
        } else {
            linhas[i].style.display = "none";
        }
    }
}  