import React, { useState, useEffect } from 'react';
import apiClient from 'api';

const UpdateMemoForm = ({ memoId }) => {
  const [memo, setMemo] = useState(null);
  const [value, setValue] = useState('');

  useEffect(() => {
    apiClient.get(`/memos/memo/${memoId}`)
      .then(response => {
        setMemo(response.data);
        setValue(response.data.content);
      })
      .catch(error => {
        console.error('Error fetching memo:', error);
      });
  }, [memoId]);

  const handleChange = (e) => {
    setValue(e.target.value);
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    apiClient.patch(`/memos/memo/${memoId}?fieldName=content&value=${value}`)
      .then(response => {
        console.log('Memo updated:', response.data);
        setValue('');
      })
      .catch(error => {
        console.error('Error updating memo:', error);
      });
  };

  if (!memo) {
    return <p>Loading...</p>;
  }

  return (
    <form onSubmit={handleSubmit}>
      <input className='border-2' type="text" value={value} onChange={handleChange} />
      <button className='ml-3 bg-green-200 font-bold' type="submit">Update Memo</button>
    </form>
  );
};

export default UpdateMemoForm;
