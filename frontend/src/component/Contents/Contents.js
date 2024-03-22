import React from "react";
import MemoPage from "./Memo/MemoPage";

const Contents = ({activeMainContent}) => {
    return (
        <div>
            {activeMainContent === 'Memo' && <MemoPage />}
            {/* {activeMainContent === 'Club' && <Club />}
            {activeMainContent === 'Calendar' && <Schedule />} */}
        </div>
      );
}

export default Contents;