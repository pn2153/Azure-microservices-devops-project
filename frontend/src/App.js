import React, { useEffect, useState } from "react";

function App() {

  const [message, setMessage] = useState("");
  const [dbStatus, setDbStatus] = useState("");

  useEffect(() => {

    fetch("http://localhost:5000/")
      .then((res) => res.text())
      .then((data) => setMessage(data))
      .catch((err) => console.error(err));

    fetch("http://localhost:5000/users")
      .then((res) => res.json())
      .then((data) => setDbStatus(data.message))
      .catch((err) => console.error(err));

  }, []);

  return (

    <div style={{ padding: "40px", fontFamily: "Arial" }}>

      <h1>Azure Microservices DevOps Project</h1>

      <h2>Backend Status:</h2>
      <p>{message}</p>

      <h2>Database Status:</h2>
      <p>{dbStatus}</p>

    </div>
  );
}

export default App;