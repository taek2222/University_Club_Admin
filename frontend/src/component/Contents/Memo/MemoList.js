import React, { useState, useEffect } from 'react';
import apiClient from 'api';
import check from 'image/content_image/check.png'

const MemoList = ({ onSelectMemo }) => {
  const [memos, setMemos] = useState([]);

  useEffect(() => {
    apiClient.get('/memos/all')
      .then(response => {
        setMemos(response.data);
      })
      .catch(error => {
        console.error('Error fetching memos:', error);
      });
  }, []);

  const handleDelete = (id) => {
    apiClient.delete(`/memos/memo/${id}`)
      .then(response => {
        if (response.status === 204) {
          setMemos(memos.filter(memo => memo.memoId !== id));
        }
      })
      .catch(error => {
        console.error('Error deleting memo:', error);
      });
  };

  const handleUpdate = (memoId) => {
    onSelectMemo(memoId);
  };

  const handleConfirm = (memoId) => {
    const memoToUpdate = memos.find(memo => memo.memoId === memoId);
    const updatedMemo = { ...memoToUpdate, confirm: true };
  
    apiClient.patch(`/memos/memo/${memoId}?fieldName=confirm`, updatedMemo)
      .then(response => {
        if (response.status === 200) {
          const updatedMemos = memos.map(memo =>
            memo.memoId === memoId ? { ...memo, confirm: true } : memo
          );
          setMemos(updatedMemos);
          console.log('Memo confirmed:', response.data);
        }
      })
      .catch(error => {
        console.error('Error confirming memo:', error);
      });
  };

  return (
    <div>
      <h1 className='mt-3'>Memo List</h1>
      {memos.map(memo => (
        <div key={memo.memoId}>
            <div className='flex'>
              <p className='font-bold'>{memo.memoId}</p>
              {memo.confirm === true ? <img src={check} alt="check" className='w-4 h-4 mt-1 ml-1' /> : ''}
            </div>
            <div className='flex'>
              <p>{memo.major}</p>
              <p className='ml-5'>{memo.classOf}</p>
              <p className='ml-5'>{memo.studentName}</p>
              <p className='ml-5'>{memo.color}</p>
            </div>
            <p>내용: {memo.content}</p>
            <button className='bg-green-200 font-bold' onClick={() => handleUpdate(memo.memoId)}>Update</button>
            <button className='ml-10 mb-3 bg-red-200 font-bold' onClick={() => handleDelete(memo.memoId)}>Delete</button>
            <button className='ml-10 font-bold bg-blue-200' onClick={() => handleConfirm(memo.memoId)}>승인</button>
        </div>
      ))}
    </div>
  );
};

export default MemoList;
