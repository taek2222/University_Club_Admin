import React, {useState} from 'react';
import Header from 'component/Header/Header'
import Contents from 'component/Contents/Contents';

const App = () => {
  const [activeMainContent, setActiveMainContent] = useState('Memo');

  return (
    <div>
      <Header activeMainContent={activeMainContent} setActiveMainContent={setActiveMainContent} />
      <Contents activeMainContent={activeMainContent} />
    </div>
  );
};

export default App;