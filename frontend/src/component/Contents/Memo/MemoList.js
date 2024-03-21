import React, { useState, useEffect } from 'react';
import apiClient from 'api';

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

  return (
    <div>
      <h1 className='mt-3'>Memo List</h1>
      {memos.map(memo => (
        <div key={memo.memoId}>
            <p>{memo.content}</p>
            <button className='bg-green-200 font-bold' onClick={() => handleUpdate(memo.memoId)}>Update</button>
            <button className='ml-10 mb-3 bg-red-200 font-bold' onClick={() => handleDelete(memo.memoId)}>Delete</button>
            <button className='ml-10 font-bold bg-blue-200'>승인</button>
        </div>
      ))}
    </div>
  );
};

export default MemoList;
