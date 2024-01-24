import './App.css';
import { Link, Route, Routes } from 'react-router-dom';
import {Home} from './screens/Home'
import {Form} from './screens/Form'

function App() {

  return (
    <div className="App">
      <nav style={{backgroundColor: 'orange', padding: 10}}>
        <ul style={{display: 'flex'}}>
          <li style={{marginRight:20, listStyle: 'none'}}>
            <Link to="./">Home</Link>
          </li>
          <li style={{marginRight:20, listStyle: 'none'}}>
            <Link to="./Form">Form</Link>
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
