import Header from "../components/Header";
import { useEffect, useState } from 'react';
import axios from 'axios';

export function Home(){

    const [dogsData, setDogsData] = useState()
    const [isLoading, setIsLoading] = useState(false)

    const fetchData = async () => {
        try {
            setIsLoading(true)
            const response = await axios.get(`http://localhost/backend-API/api/index.php`);
            setDogsData(response.data);
            console.log(response.data);
        } catch (error) {
            console.log(error);
        }
        setIsLoading(false)
    }
    
    
      useEffect(() =>{
            fetchData()      
    }, [])

    return !isLoading ? (
        <>
        <Header/>
        <div style={{display: "flex", flexWrap:'wrap'}}>
        {dogsData && dogsData.map((dog, index) => (
                    <div style={{width: '50%', padding: 10, boxSizing:"border-box"}} key={index}>
                        <h2>{dog.name}</h2>
                        <p>Breed: {dog.breed}</p>
                        <p>Age: {dog.age}</p>
                        
                        {dog.photo_name && (
                            <a onClick={()=> window.open(`./Form`)}>
                                <img className="dogo" src={require(`../img/${dog.photo_name}`)} alt={dog.name} style={{width:320, height:200, borderRadius:15}}/>                          
                            </a>
                            
                        )}
                    </div>
                ))}
        </div>
       </>
    ) : (
        <div>
            <p>Loading...</p>
        </div>
    )

    
}

