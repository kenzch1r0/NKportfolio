<template>
  <div class="header" id="intro">
    <!--Content before waves-->
    <div class="inner-header flex">
      <!--Just the logo.. Don't mind this-->
      <v-container>
        <div class="mb-2" data-aos="zoom-in">
          <b-avatar
            :src="profile"
            size="12rem"
            variant="light"
            class="p-2"
          ></b-avatar>
        </div>
        <v-row>
          <b-col class="title">
            <br>
            <vue-typed-js class="title" :strings="['KEN', 'NATTAWUT KHUADPLOD']">
              <h1 class="typing"></h1>
            </vue-typed-js>
          </b-col>
        </v-row>
        <v-row>
          <v-col> </v-col>
        </v-row>
        <v-row>
          <v-col>
            <p class="sub-title">A SOFTWARE ENGINEER<br />IN LOVE WITH CODING AND DESIGN</p>
          </v-col>
        </v-row>
        <v-row>
          <v-col>
            <v-chip class="tag" data-aos="zoom-out-up" data-aos-duration="2000"
              >#WEB</v-chip
            >
            <v-chip class="tag" data-aos="zoom-out-up" data-aos-duration="2400"
              >#DESIGN</v-chip
            >
            <v-chip class="tag" data-aos="zoom-out-up" data-aos-duration="2800"
              >#CODING</v-chip
            >
            <v-chip class="tag" data-aos="zoom-out-up" data-aos-duration="3000"
              >#TECHNOLOGY</v-chip
            >
          </v-col>
        </v-row>
      </v-container>
    </div>
    <!--Waves Container-->
    <div>
      <svg
        class="waves"
        xmlns="http://www.w3.org/2000/svg"
        xmlns:xlink="http://www.w3.org/1999/xlink"
        viewBox="0 24 150 28"
        preserveAspectRatio="none"
        shape-rendering="auto"
      >
        <defs>
          <path
            id="gentle-wave"
            d="M-160 44c30 0 58-18 88-18s 58 18 88 18 58-18 88-18 58 18 88 18 v44h-352z"
          />
        </defs>
        <g class="parallax">
          <use
            xlink:href="#gentle-wave"
            x="48"
            y="0"
            :fill="($vuetify.theme.dark) ? $vuetify.theme.themes.dark.base_70 : $vuetify.theme.themes.light.base_70"
          />
          <use
            xlink:href="#gentle-wave"
            x="48"
            y="3"
            :fill="($vuetify.theme.dark) ? $vuetify.theme.themes.dark.base_50 : $vuetify.theme.themes.light.base_50"
          />
          <use
            xlink:href="#gentle-wave"
            x="48"
            y="5"
            :fill="($vuetify.theme.dark) ? $vuetify.theme.themes.dark.base_30 : $vuetify.theme.themes.light.base_30"
          />
          <use xlink:href="#gentle-wave" x="48" y="7" :fill="($vuetify.theme.dark) ? $vuetify.theme.themes.dark.base : $vuetify.theme.themes.light.base" />
        </g>
      </svg>
    </div>
    <!--Waves end-->
  </div>
  <!--Header ends-->
</template>


<script>
import profile from "../assets/me.jpg";
import NavBar from "../components/NavBar.vue";

export default {
  name: "Intro",
  data() {
    return {
      profile,
      NavBar,
    };
  },
};
</script>

<style scope>
@import "../assets/css/wave.css";

.tag {
  margin: 0.3rem !important;
  font-size: 0.55rem !important;
  font-weight: 900 !important;
  max-height: 1.3rem !important;
}

.tag :hover{
  transform: scale(1.2);
}

.icon {
  font-size: 1rem;
  color: var(--v-title-base);
  margin: 0.5em;
}

.typed-element {
  justify-content: center !important;
  color: var(--v-title-base);
  font-weight: inherit;
}

.title > h1 {
  color: var(--v-title-base)!important;
  font-weight: 500;
  font-size: 2rem;
}

.sub-title {
  font-size: 0.8rem !important;
  color: var(--v-title-base)!important;
  font-weight: 500;
}
</style>