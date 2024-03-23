import React from 'react';
import ScheduleList from './ScheduleList';

const SchedulePage = () => {

  return (
    <div className='p-5'>
      <h1>Schedule Page</h1>
      <div className='flex'>
        <ScheduleList />
      </div>
    </div>
  );
};

export default SchedulePage;
