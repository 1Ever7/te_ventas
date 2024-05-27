<%
    String opcion = request.getParameter("opcion");
%>

    
    <header>
  <!-- Fixed navbar -->
  <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">PUNTO DE VENTA</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav me-auto mb-2 mb-md-0">
          <li class="nav-item">
            <a class="nav-link <%=(opcion.equals("clientes")?"active":"")%>" href="ClienteController">Clientes</a>
          </li>
          <li class="nav-item">
            <a class="nav-link <%=(opcion.equals("productos")?"active":"")%>" href="ProductoController">Productos</a>
          </li>
          <li class="nav-item">
            <a class="nav-link <%=(opcion.equals("ventas")?"active":"")%>" href="VentaController" tabindex="-1" aria-disabled="true">Ventas</a>
          </li>
        </ul>
        <form class="d-flex">
          
          <a href="LoginControlador?action=logout" class="btn btn-outline-success" >Cerrar sesión</a>
        </form>
      </div>
    </div>
  </nav>
</header>