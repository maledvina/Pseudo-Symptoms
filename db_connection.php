<?php

Class Connection {

	private $server = "mysql:host=localhost;dbname=Symptoms";
	private $user = "root";
	private $pass = "";
	# unlike in the other copies of db_connection I've given you, here we leave the error handling on its default silent mode.
	# the reason for this is that database failure is an expected part of this site's functionality: if there's already a pokemon
	# with number 1 in the database and a user tries to insert another, the INSERT operation fails. we want to deal with that organically,
	# not throw a bunch of raw PDO exception text out.
	private $options = array(PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC);

	protected $con;

	public function openConnection() {
		try {
			$this->con = new PDO($this->server, $this->user, $this->pass, $this->options);
			return $this->con;
		} catch (PDOException $e) {
			echo "Database error:" . $e->getMessage();
		}
	}

	public function closeConnection(){
		$this->con = null;
	}

}

?>
