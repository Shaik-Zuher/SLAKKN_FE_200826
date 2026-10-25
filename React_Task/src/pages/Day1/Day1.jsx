import Navbar from "../../components/navbar";
import react3 from "../../assets/Day1/react3.png";
import vite from "../../assets/Day1/vite.png";
import "./Day1.css";
const Day1=()=>{
    return (
        <>
        
        <Navbar name="React-Basics" task_count="1"/>
        <section class="task" id="task1">
            <h1>Task1 Check differences</h1>
            <h2>Using React3</h2>
            <img src={react3} alt="not_available"/>
            <h2>Using Vite</h2>
            <img src={vite} alt="not_available"/>
        </section>
        </>
    );
}
export default Day1;