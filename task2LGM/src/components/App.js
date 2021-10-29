import UserCard from "./User";
import "../../node_modules/bootstrap/dist/css/bootstrap.min.css";
// import "../../node_modules/bootstrap/dist/js/bootstrap.bundle";

// import logo from "../pic/logo.jpeg";

import React, { Component } from "react";

class App extends Component {
  constructor(props) {
    super(props);
    this.state = { user_data: [], visible: true };

    this.updateState = this.updateState.bind(this);
  }

  updateState() {
    const url = "https://reqres.in/api/users?page=1";
    fetch(url)
      .then((response) => response.json())
      .then((users) => {
        this.setState({ user_data: users.data, visible: false });

        console.log(users.data);
      })
      .catch((error) => {
        console.error(error);
      });
  }

  render() {
    return (
        <>
             <section>
                <header className="header">
                    <nav className="navbar">
                        <div className="logo">
                            <a href="#" className="nav-logo">
                                <p>LGM</p>
                            </a>
                        </div>
                        <ul className="nav-menu">
                            <li className="nav-item">
                                <button className="nav-link" onClick={this.updateState}>Get User</button>
                            </li>
                           
                        </ul>
                       
                    </nav>
                </header>
            </section>
        <div className="ucard">
          <UserCard
            loading={this.state.visible}
            users={this.state.user_data}
          />
        </div>
      </>
    );
  }
}

export default App;
