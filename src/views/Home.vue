<template>
  <div class="front"> 
    <div class="center-box">
        <form @submit.prevent="login">
          <div class="row-contact">
            <div class="col-logo">
                <p>Health Card Number</p> 
              <input
                type="text"
                id="name"
                name="name"
                placeholder="Health Card Number"
                v-model="name"
                required
              />
            </div>
          </div>

          <div class="row-contact">

            <div class="col-logo">
                <p>Password</p> 

              <input
                type="password"
                id="password"
                name="password"
                placeholder="Password"
                v-model="password"
                required
              />
            </div>
          </div> 
          <div class="row-contact">
              <router-link to="/ack" tag="button">LOGIN</router-link>
          <router-view />
          </div>
        </form>
      </div><div > 
        
    </div>
  </div>
</template>

<script>
export default {
  name: "Login", 
  data() {
    return {
      name: "",
      password: "", 
    };
  },
    methods: {
    login() { 

      alert(
          "Thank you for contacting NesaByte. We will get back to you shortly."
        );

      // Reset form field
      this.name = "";
      this.password = ""; 
    },
  },
};
</script>

<style scoped>

.row-contact {
  width: 90%;
  margin-right: 5%;
  margin-left: 5%;
  margin-top: 5%;
}
input[type="text"],
input[type="password"] {
  background-color: white;
  padding: 12px 20px;
  box-shadow: 0px 2px 12px rgba(0, 0, 0, 0.2);
  border-radius: 20px;
  width: 70%;
  height: 70px;
  font-size: 16px;
  margin: 0% 1%;
  border: none;
  color: #2283b2;
}
 
 button{
  background-color: #7C96F3;
  color: white;
  outline: none;
  border: none;
  padding: 15px 32px;
  font-size: 18px;
  box-shadow: 0px 2px 12px rgba(0, 0, 0, 0.2);
  border-radius: 20px;
  margin: 1% 15%;
}

button:hover {
  background-color: #243575;
}

input[type="text"]:focus, input[type="password"]:focus, 
textarea:focus {
  outline: none;
  border: 2px solid #243575;
}

.row-contact {
  flex-basis: 100%;
  max-width: 100%;
}

.front {
  background-image: url("../assets/c_main.svg");
  width: 100%;
  height: 100vh;
  background-repeat: no-repeat;
  background-position: center;
  background-size: cover; 
}

.center-box {
  position: relative;
  height: 20vh;
  margin-left: 10%;
  width: 40%;
  top: 20%;
  bottom: 20%; 
  border: 1px solid transparent;

} 


</style>
