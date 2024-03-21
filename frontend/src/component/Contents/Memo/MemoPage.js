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
    <div>
      <h1>Memo Page</h1>
      <CreateMemoForm />
      <MemoList onSelectMemo={handleSelectMemo} />
      {selectedMemoId && <UpdateMemoForm memoId={selectedMemoId} />}
    </div>
  );
};

export default MemoPage;
