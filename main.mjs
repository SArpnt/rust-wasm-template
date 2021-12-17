import init, { main } from "./web_build/rustWasm.js";

init.then(() => {
	main();
});