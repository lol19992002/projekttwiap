import './App.css';
import { Link, Route, Routes } from 'react-router-dom';
import {Home} from './screens/Home'
import {Form} from './screens/Form'

function App() {

  return (
    <div className="App">
      <nav className='Header' >
        <ul style={{display: 'flex'}}>
          <li style={{marginRight:20, listStyle: 'none'}}>
          <img src={require(`../src/img/logo.png`)} style={{width:50, height:50, borderRadius:15}}/>
          </li>
          <li id='li1' style={{marginRight:20, listStyle: 'none'}}>
            <Link to="./" style={{color: 'white',textDecoration:'none'}}>Home</Link>
          </li>
          <li id='li1' style={{marginRight:20, listStyle: 'none'}}>
            <Link to="./Form" style={{color: 'white',textDecoration:'none'}}>Form</Link>
          </li>
        </ul>
      </nav>
        <Routes>
          <Route path='/' element={<Home/>}/>
          <Route path='/Form' element={<Form/>}/>
        </Routes>
    </div>
   

  );
}

export default App;
