import React, { useState } from 'react';
import MemoList from './MemoList';
import CreateMemoForm from './CreateMemoForm';
import UpdateMemoForm from './UpdateMemoForm';

const MemoPage = () => {
  const [selectedMemoId, setSelectedMemoId] = useState(null);

  const handleSelectMemo = (memoId) => {
    setSelectedMemoId(memoId);
  };

  return (
    <div className='p-5'>
      <h1>Memo Page</h1>
      <CreateMemoForm />
      <div className='flex'>
        <MemoList onSelectMemo={handleSelectMemo} />
        {selectedMemoId && <UpdateMemoForm memoId={selectedMemoId} />}
      </div>
    </div>
  );
};

export default MemoPage;
