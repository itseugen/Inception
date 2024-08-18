<h1 align="center">
	<p>
		Inception
	</p>
</h1>
<h2 align="center">
	<p>
			Docker Container Love
	</p>
</h2>
<p align="center">
Coded in
	<a href="https://skillicons.dev">
		<img src="https://skillicons.dev/icons?i=docker" />
		<img src="https://skillicons.dev/icons?i=bash" />
	</a>
</p>

---
## The project:
- Learning the usage of Docker and Docker Compose to setup a wordpress page.
- Three different containers for NGINX, MariaDB and wordpress.
- Connecting the three containers via a docker network.
- Accessing wordpress over the browser.
---
## Installation and Usage
1. Clone the repository:
```shell
git clone https://github.com/itseugen/Inception
```
2. Change line 19 in nginx/nginx.conf from
```
	server_name eweiberl.42.fr;
```
to your own URL. For example:
```
	server_name example.42.fr;
```
3. Create a folder with two empty subfolders to store the MariaDB and wordpress data.
4. Enter the directory and build the program:
```shell
cd minishell
make
```
5. Enter the variables for the .env into the terminal.<br>❗️ Important: The WP_URL should be the same as in the nginx.conf except beginning with a  `https://`.
6. Wait for the program to start before opening the URL in your browser.
7. Access https://yoururl.com/wp-config to log in as admin and change your wordpress page.
---
<sub><sup>This project is part of my studies at 42 Heilbronn</sup></sub>