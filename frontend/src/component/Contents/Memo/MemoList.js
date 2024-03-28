import React, { useState, useEffect } from 'react';
import apiClient from 'api';
import check from 'image/content_image/check.png'
import axios from 'axios';

const MemoList = ({ onSelectMemo }) => {
  const [memos, setMemos] = useState([]);
  const [selectedMemo, setSelectedMemo] = useState(null);
  const [searchTerm, setSearchTerm] = useState('');
  const [currentPage, setCurrentPage] = useState(1);
  const [filteredMemos, setFilteredMemos] = useState([]);
  const itemsPerPage = 5;
  
  useEffect(() => {
    apiClient.get('/memos/all')
    .then(response => {
      const reversedMemos = response.data.reverse();
      setMemos(reversedMemos);
      console.log(reversedMemos)
    })
    .catch(error => {
      console.error('Error fetching memos:', error);
    });
  }, []);

  useEffect(() => {
    setFilteredMemos(
      memos.filter(memo =>
        memo.classOf.toLowerCase().includes(searchTerm.toLowerCase()) ||
        memo.studentName.toLowerCase().includes(searchTerm.toLowerCase()) ||
        memo.major.toLowerCase().includes(searchTerm.toLowerCase()) ||
        memo.content.toLowerCase().includes(searchTerm.toLowerCase())
      )
    );
  }, [searchTerm, memos]);

  const totalPages = Math.ceil(filteredMemos.length / itemsPerPage);
  const currentItems = filteredMemos.slice((currentPage - 1) * itemsPerPage, currentPage * itemsPerPage);

  const getRandomMemo = () => {
    if (memos.length > 0) {
      const randomIndex = Math.floor(Math.random() * memos.length);
      const randomMemo = memos[randomIndex];
      setSelectedMemo(randomMemo);
    }
  };
  
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
  
    apiClient.patch(`/memos/memo/${memoId}`, updatedMemo)
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

  const handleRefresh = () => {
    axios.get(`http://34.22.93.96:8080/memos/confirmed/cache/reset`)
      .then(_ => {
        window.location.reload();
      })
      .catch(error => {
        console.error('Error refresh schedule:', error);
      });
  };

  return (
    <div>
      <h1 className='mt-3'>Memo List</h1>
      <button className='font-bold text-2xl bg-orange-300' onClick={() => getRandomMemo()}>당첨자 뽑기!</button>
      <div className='flex font-bold text-lg mb-3'>
        <p>경품 당첨자:</p>
        <p className='ml-1'>{selectedMemo ? `${selectedMemo.classOf} ${selectedMemo.studentName}` : ''}</p>
      </div>
      <button className='text-xl font-bold bg-lime-300' onClick={() => handleRefresh()}>홈페이지에 적용</button>
      <br />
      <input 
        type="text" 
        placeholder="검색어를 입력하세요" 
        value={searchTerm} 
        onChange={(e) => setSearchTerm(e.target.value)}
        className="border border-gray-400 rounded-md px-2 py-1 mt-5 mb-3"
      />
      {(searchTerm !== '' ? filteredMemos : currentItems).map(memo => (
        <div key={memo.memoId}>
          <div className='flex'>
            <p className='font-bold'>{memo.memoId}</p>
            {memo.confirm === true ? <img src={check} alt="check" className='w-4 h-4 mt-1 ml-1' /> : ''}
          </div>
          <div className='flex'>
            <p>전공: {memo.major}</p>
            <p className='ml-3'>학번: {memo.classOf}</p>
            <p className='ml-3'>이름: {memo.studentName}</p>
            <p className='ml-3'>색상: {memo.color}</p>
          </div>
          <p>내용: {memo.content}</p>
          <button className='bg-green-200 font-bold' onClick={() => handleUpdate(memo.memoId)}>수정</button>
          <button className='ml-10 mb-3 bg-red-200 font-bold' onClick={() => handleDelete(memo.memoId)}>삭제</button>
          <button className='ml-10 font-bold bg-blue-200' onClick={() => handleConfirm(memo.memoId)}>확인</button>
        </div>
      ))}
      {filteredMemos.length > itemsPerPage && searchTerm.trim === '' && (
        <>
          <button className='font-bold' disabled={currentPage === 1} onClick={() => setCurrentPage(currentPage - 1)}>이전</button>
          <span className='ml-5 font-bold'>Page {currentPage} of {totalPages}</span>
          <button className='ml-5 font-bold' disabled={currentPage === totalPages} onClick={() => setCurrentPage(currentPage + 1)}>Next</button>
        </>
      )}
    </div>
  );
};

export default MemoList;
