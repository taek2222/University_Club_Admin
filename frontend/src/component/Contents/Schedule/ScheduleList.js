import React, { useState, useEffect } from 'react';
import apiClient from 'api';

const ScheduleList = () => {
  const [schedules, setSchedules] = useState([]);

  useEffect(() => {
    apiClient.get('/schedules/all')
      .then(response => {
        setSchedules(response.data);
      })
      .catch(error => {
        console.error('Error fetching schedules:', error);
      });
  }, []);

  const handleDelete = (id) => {
    apiClient.delete(`/schedules/delete/${id}`)
      .then(response => {
        if (response.status === 204) {
            setSchedules(schedules.filter(schedule => schedule.scheduleId !== id));
        }
        window.location.reload();
      })
      .catch(error => {
        console.error('Error deleting schedule:', error);
      });
  };

  const handleUpdate = (scheduleId, newStatus) => {
    const scheduleToUpdate = schedules.find(schedule => schedule.scheduleId === scheduleId);
    const updatedschedule = { ...scheduleToUpdate, status: newStatus };
  
    apiClient.patch(`/schedules/update/${scheduleId}`, updatedschedule)
      .then(response => {
        if (response.status === 200) {
          const updatedschedules = schedules.map(schedule =>
            schedule.scheduleId === scheduleId ? { ...schedule, status: newStatus } : schedule
          );
          setSchedules(updatedschedules);
          console.log('Schedule updated:', response.data);
        }
      })
      .catch(error => {
        console.error('Error updating schedule:', error);
      });
  };
  

  return (
    <div>
      <h1 className='mt-3'>schedule List</h1>
      {schedules.map(schedule => (
        <div key={schedule.scheduleId}>
            <div className='flex'>
              <p className='font-bold'>{schedule.scheduleId}</p>
            </div>
            <div className='flex'>
              <p>동아리:{schedule.clubName}</p>
              <p className='ml-3'>시작시간:{schedule.eventTime}</p>
              <p className='ml-3'>종료시간:{schedule.eventEndTime}</p>
              <p className='ml-3'>상태:{schedule.status}</p>
            </div>
            <button className='bg-green-200 font-bold' onClick={() => handleUpdate(schedule.scheduleId, '운영중')}>운영중</button>
            <button className='ml-10 bg-gray-200 font-bold' onClick={() => handleUpdate(schedule.scheduleId, '종료')}>종료</button>
            <button className='ml-10 font-bold bg-orange-200' onClick={() => handleUpdate(schedule.scheduleId, '조기종료')}>조기종료</button>
            <button className='ml-10 bg-yellow-200 font-bold' onClick={() => handleUpdate(schedule.scheduleId, '일시중지')}>일시중지</button>
            <button className='ml-10 bg-red-200 font-bold' onClick={() => handleUpdate(schedule.scheduleId, '혼잡')}>혼잡</button>
            <button className='ml-10 mb-3 bg-red-400 font-bold' onClick={() => handleDelete(schedule.scheduleId)}>삭제</button>
        </div>
      ))}
    </div>
  );
};

export default ScheduleList;
