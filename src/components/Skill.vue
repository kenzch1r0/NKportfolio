<template>
    <v-row dense>
    <v-col sm="12" :md=event.col :class="'layer-' + layerClass" v-for="(event, e) in data" :key="e">
      <v-card data-aos="fade-up" :data-aos-duration="(e+2)*200" class="block"  min-height="195" min-width="200" outlined>
        <v-list-item three-line>
          <v-list-item-content>
            <div class="headskill"><p><bold>{{event.topic}}</bold></p> </div>
            <v-list-item-title class="headline mb-1" v-for="(sk,s) in event.skill" :key="s">{{sk.title}}
                <v-list-item-subtitle class="headline mb-1" v-for="(v,k) in sk.list" :key="k">{{v}}</v-list-item-subtitle>
              <v-list-item-subtitle class="headline mb-1" >{{sk.year}}</v-list-item-subtitle>
              <div style="margin: 2px; display:inline-block" v-for="(v,k) in sk.src" :key="k"><v-img style="border-radius: 4px;"  :src="v" ></v-img></div>
            </v-list-item-title>
          </v-list-item-content>
          <!-- <v-list-item-avatar tile size="85" :src="pathLogo(event.icon)"><v-img :src="pathLogo(event.icon)"></v-img></v-list-item-avatar> -->
        </v-list-item>
      </v-card>
    </v-col>
    </v-row>
</template>

<script>
export default {
  name: "Skill",
  props: ["title", "data"],
  //   methods: {
  //   pathLogo: function (path) {
  //     console.log(require("@/" + path));
  //     return require("@/" + path);
  //   },
  // },
  computed: {
    layerClass() {
      return this.title.slice(0, 2).toLowerCase();
    },
  },
};
</script>

<style scope>
.headskill {
    font-size:22px;
    font-weight: 900;
  }
.headline {
    white-space: normal !important;
}
</style>

