import React, { useState, useEffect } from 'react';
import apiClient from 'api';

const UpdateMemoForm = ({ memoId }) => {
  const [memo, setMemo] = useState({
    major: '',
    classOf: '',
    anonymous: false,
    studentName: '',
    content: '',
    color: '',
    confirm: false,
  });

  useEffect(() => {
    apiClient.get(`/memos/memo/${memoId}`)
      .then(response => {
        setMemo(response.data);
      })
      .catch(error => {
        console.error('Error fetching memo:', error);
      });
  }, [memoId]);

  const handleSubmit = (e) => {
    e.preventDefault();
    const data = {
      major: memo.major,
      classOf: memo.classOf,
      anonymous: memo.anonymous,
      studentName: memo.studentName,
      content: memo.content,
      color: memo.color,
      confirm: memo.confirm,
    };
  
    apiClient.patch(`/memos/memo/${memoId}`, data)
      .then(response => {
        console.log('Memo updated:', response.data);
        window.location.reload();
      })
      .catch(error => {
        console.error('Error updating memo:', error);
      });
  };

  if (!memo) {
    return <p>Loading...</p>;
  }

  return (
    <form onSubmit={handleSubmit} className='mt-10 ml-20'>
      <label className='ml-3'>전공:</label>
      <input className='border-2 w-28' type="text" value={memo.major} onChange={(e) => setMemo({...memo, major: e.target.value})} />
      <label className='ml-3'>학번:</label>
      <input className='border-2 w-20' type="text" value={memo.classOf} onChange={(e) => setMemo({...memo, classOf: e.target.value})} />
      <label className='ml-3'>익명:</label>
      <input className='border-2 w-20' type="text" value={memo.anonymous} onChange={(e) => setMemo({...memo, anonymous: e.target.value})} />
      <label className='ml-3'>이름:</label>
      <input className='border-2 w-20' type="text" value={memo.studentName} onChange={(e) => setMemo({...memo, studentName: e.target.value})} />
      <label className='ml-3'>내용:</label>
      <input className='border-2 w-32' type="text" value={memo.content} onChange={(e) => setMemo({...memo, content: e.target.value})} />
      <label className='ml-3'>색상:</label>
      <input className='border-2 w-24' type="text" value={memo.color} onChange={(e) => setMemo({...memo, color: e.target.value})} />
      <button className='ml-3 bg-green-200 font-bold' type="submit">Update Memo</button>
    </form>
  );
};

export default UpdateMemoForm;
