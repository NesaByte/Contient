<template>
  <div id="app">
    <header class="navg">
      <b-navbar fixed="top" toggleable="lg" type="dark">
        <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>

        <b-collapse id="nav-collapse" is-nav>
          <b-navbar-nav>
            <b-nav-item href="" to="/">CONTIENT </b-nav-item>
          </b-navbar-nav>
          <b-navbar-nav class="navv">
            <b-nav-item href="" to="/patientinfo">Patient Info </b-nav-item>
            <b-nav-item href="" to="/termsandcondition"
              >Terms and Condition
            </b-nav-item>
            <b-nav-item href="" to="/help">Help </b-nav-item>
            <b-nav-item href="" to="/history">History </b-nav-item>
            <b-nav-item href="" to="/overview">Overview </b-nav-item>
          </b-navbar-nav>
          <b-navbar-nav class="ml-auto">
            <b-nav-item href="" to="/"><p>Logout</p> </b-nav-item>
          </b-navbar-nav>
        </b-collapse>
      </b-navbar>
    </header>
    <router-view />
  </div>
</template>

<script>
export default {};

import "bootstrap/dist/css/bootstrap.css";
import "bootstrap/dist/css/bootstrap-grid.css";
</script>

<style lang="scss" scoped>
p{
    color: red;
}

.navbar {
  background-color: #060702bf;
  padding-bottom: 0;
  .navbar-nav {
    margin-left: auto;
    margin-right: auto;
    .nav-item {
      .nav-link {
        color: white;
        transition: all ease-in-out 0.5s;
        border-bottom: 3px solid transparent;
        font-weight: 500;
        font-size: 15px;
        padding: 1rem;
        &.router-link-active {
          color: paleturquoise;
          border-bottom: 3px solid peru;
        }
      }
      &:hover {
        .nav-link {
          color: yellow;
          border-bottom: 3px solid yellow;
        }
      }
    }
  }
}

@media all and (max-width: 600px) {
  .header-info {
    border: none;
    justify-content: center;
    .info-list {
      display: none;
    }
  }
}
</style>