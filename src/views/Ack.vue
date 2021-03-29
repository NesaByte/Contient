<template>
  <div class="pi">
    <div class="row">
      <div class="row-division">
        <div class="row-front">
          <h3>ACKNOWLEDGMENT</h3>
          <p>
            I understand that the following information is confidential and is
            only to be seen and or modified by the patient on the given health
            card.
          </p>
          <router-link to="/patientinfo" tag="button">I UNDERSTAND</router-link>
          <router-link to="/" tag="button" class="red">BACK</router-link>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
// @ is an alias to /src

export default {
  name: "Ack",
  components: {},
};
</script>

<style scoped>
button {
  background-color: #7c96f3;
  color: white;
  outline: none;
  border: none;
  padding: 12px 20%;
  font-size: 10px;
  box-shadow: 0px 2px 12px rgba(0, 0, 0, 0.2);
  border-radius: 10px;
  margin: 5% auto 0% auto;
  display: block;
}

.red {
  background-color: #f37c7c;
}

.red:hover {
  background-color: #b51515;
}

button:hover {
  background-color: #243575;
}

h3 {
  text-align: center;
  color: #476aea;
}

p {
  font-weight: normal;
  text-align: center;
}
.row-division {
  flex-basis: 60%;
  max-width: 60%;
  /* border: 1px solid red; */
  margin-top: 100px;

  margin-left: 30%;
  margin-right: 30%;
  background: white;
  padding: 5%;
  border-radius: 20px;
}

.row-front {
  flex-basis: 100%;
  max-width: 100%;
}
/* .row {
  display: block;
  margin-top: 5%;

  margin-left: 0%;
  display: flex;
  flex-wrap: wrap;
  width: 100%;
  height: auto;
  padding-right: 0%;
  padding-left: 0%;
} */
.pi {
  background-image: url("../assets/ack.svg");
  width: 100%;
  height: 100vh;
  background-repeat: no-repeat;
  background-position: center;
  background-size: cover;
  position: relative;
}
</style>