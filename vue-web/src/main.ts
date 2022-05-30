// import Bugsnag from "@bugsnag/js";
// import BugsnagPluginVue from "@bugsnag/plugin-vue";
// Bugsnag.start({
//   apiKey: process.env.BUGSNAG_API_KEY,
//   plugins: [new BugsnagPluginVue()],
// });

import { createApp } from "vue";
import { createPinia } from "pinia";
import "bootstrap/dist/css/bootstrap.min.css";
import "bootstrap";
import App from "./App.vue";
import router from "./router";

const app = createApp(App);


app.use(createPinia());
app.use(router);

app.mount("#app");
