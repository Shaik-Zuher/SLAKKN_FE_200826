
import Navbar from "./components/navbar";
import { Routes, Route, Link } from "react-router-dom";
import Day1 from "./pages/Day1/Day1";

const Home = () => {
  return (
    <>
      <Navbar name="React Tasks" />

      <main>
        <p id="heading">&bull; Choose your task &bull;</p>

        <section id="task">
          <div className="days">
            <h1>Day 1</h1>
            <div className="tasks">
              <div className="highlights">
                <Link to="/Day1" target="_blank">Task1 - Basics</Link>
              </div>
            </div>
          </div>

          <div className="days">
            <h1>Day 2</h1>
            <div className="tasks">
              <div className="highlights">
                <Link to="/Day2">Task2 - Basics</Link>
              </div>
            </div>
          </div>
        </section>
      </main>

      <footer>
        <p>Shaik Zuheruddin &copy; 2026</p>
      </footer>
    </>
  );
};

const App = () => {
  return (
    <Routes>
      <Route path="/" element={<Home />} />
      <Route path="/Day1" element={<Day1 />} />
    </Routes>
  );
};

export default App;
