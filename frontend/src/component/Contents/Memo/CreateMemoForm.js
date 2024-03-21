import React, { useState } from 'react';
import apiClient from 'api';

const CreateMemoForm = () => {
  const [formData, setFormData] = useState({
    major: '',
    classOf: '',
    anonymous: false,
    studentName: '',
    content: '',
    color: '',
  });

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData({ ...formData, [name]: value });
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    apiClient.post('/memos/memo', formData)
      .then(response => {
        console.log('Memo created:', response.data);
        setFormData({
          major: '',
          classOf: '',
          anonymous: false,
          studentName: '',
          content: '',
          color: '',
        });
      })
      .catch(error => {
        console.error('Error creating memo:', error);
      });
  };

  return (
    <form onSubmit={handleSubmit}>
      <input className='border-2' type="text" name="major" value={formData.major} onChange={handleChange} />
      <input className='border-2' type="text" name="classOf" value={formData.classOf} onChange={handleChange} />
      <input className='border-2' type="text" name="studentName" value={formData.studentName} onChange={handleChange} />
      <input className='border-2' type="text" name="content" value={formData.content} onChange={handleChange} />
      <input className='border-2' type="text" name="color" value={formData.color} onChange={handleChange} />
      <button className='ml-3 font-bold bg-green-200' type="submit">Create Memo</button>
    </form>
  );
};

export default CreateMemoForm;
