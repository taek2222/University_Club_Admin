import React from "react";
import MemoPage from "./Memo/MemoPage";
import SchedulePage from "./Schedule/SchedulePage";

const Contents = ({activeMainContent}) => {
    return (
        <div>
            {activeMainContent === 'Memo' && <MemoPage />}
            {activeMainContent === 'Schedule' && <SchedulePage />}
        </div>
      );
}

export default Contents;