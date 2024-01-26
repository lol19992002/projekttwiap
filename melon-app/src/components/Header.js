export default function Header(){
    return(
        <div style={{width:'99.9%', height:220, backgroundColor:'#FFCE32', padding:1}}>
            <h1>DZIĘKUJEMY</h1>
            <p>Łącznie do nowego domu trafiło</p>
            <h2>60 kochanych psów</h2>
            <p>Dziękujemy za wsparcie</p> 
            <img src={require(`../img/like.gif`)}style={{width:80, height:40}}/>
        </div>
    )
}