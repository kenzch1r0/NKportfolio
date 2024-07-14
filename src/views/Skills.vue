<template>
  <section class="content">
			<div class="topic-about-me" data-aos="fade-right">
        <h2>ABOUT ME</h2>
        <br/>
      <div>
        <div> 
          <h5>Descripe me with Top 5 CliftonStrengths</h5>
            <img src="https://img.shields.io/badge/-Learner-01945D?style=flat-square" style="border-radius: 4px;" v-b-tooltip.hover title="People exceptionally talented in the Learner theme have a great desire to learn and want to continuously improve. The process of learning, rather than the outcome, excites them."><p class="pipe">|</p>
            <img src="https://img.shields.io/badge/Individualization-016FCC?style=flat-square" style="border-radius: 4px;" v-b-tooltip.hover title="People exceptionally talented in the Individualization theme are intrigued with the unique qualities of each person. They have a gift for figuring out how different people can work together productively."><p class="pipe">|</p>
            <img src="https://img.shields.io/badge/Relator-016FCC?style=flat-square" style="border-radius: 4px;" v-b-tooltip.hover title="People exceptionally talented in the Relator theme enjoy close relationships with others. They find deep satisfaction in working hard with friends to achieve a goal."><p class="pipe">|</p>
            <img src="https://img.shields.io/badge/Achiever-7A2280?style=flat-square" style="border-radius: 4px;" v-b-tooltip.hover title="People exceptionally talented in the Achiever theme work hard and possess a great deal of stamina. They take immense satisfaction in being busy and productive."><p class="pipe">|</p>
            <img src="https://img.shields.io/badge/Intellection-01945D?style=flat-square" style="border-radius: 4px;" v-b-tooltip.hover title="People exceptionally talented in the Intellection theme are characterized by their intellectual activity. They are introspective and appreciate intellectual discussions.">
        </div>
      <br/>
      </div>
          <skill  title="SKILLS" :data="skills" ref="Skill"></skill>
      </div>
  </section>
</template>
<script>
import Skill from '@/components/Skill'
import { skills } from '@/assets/data/skills.json'

export default {
  name: 'Skills',
  components: {
    Skill
  },
  data() {
    return {
      skills
    }
  }
}
</script>

<style>
.topic-about-me{
padding: 2em;
font-weight: 900 !important;
color: var(--v-title-base);
}

.content{
  padding-top: 6rem;
}

.pipe{
  display: inline;
  font-size: 24px;
  color: #a3a3a3 !important;
  vertical-align: middle;
}

.spacing{
  margin: 2rem;
}
</style>
