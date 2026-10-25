const Navbar=({name,...rest})=>{
    let content=[];
    if(name=="React Tasks"){
        content=(<>
        <a href="https://shaik-zuher.github.io/SLAKKN_FE_200826/ "target="_blank">Home</a>
        <div className="quick-nav">
            <a href="#" id="quick">Quick Navigation</a>
            <ul>
                <li><a href="https://shaik-zuher.github.io/SLAKKN_FE_200826/HTML%20Tasks/index.html" target="_blank">HTML</a></li>
                <li><a href="https://shaik-zuher.github.io/SLAKKN_FE_200826/CSS%20Tasks/index.html" target="_blank">CSS</a></li>
                <li><a href="https://shaik-zuher.github.io/SLAKKN_FE_200826/BS%20&Tailwind%20Tasks/index.html" target="_blank">Bootstrap & Tailwind</a></li>
                <li><a href="https://shaik-zuher.github.io/SLAKKN_FE_200826/JS%20Tasks/index.html" target="_blank">JS</a></li>
                <li><a href="#">React</a></li>
            </ul>
        </div>
        </>);
    }
    else{
        for(var i=1;i<=rest["task_count"];i++){
            content.push(<a key={i} href={`#task${1}`}>Task{i}</a>);
        }
    }
    return (
        <>
        <header className="main-header">
            <h1>{name}</h1>
            <nav>
                {content}
            </nav>
        </header>
        </>
    );
}
export default Navbar;