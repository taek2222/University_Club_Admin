import React from "react";

const Header = ({ activeMainContent, setActiveMainContent }) => {
    return (
        <header className="sticky top-0 w-full bg-white z-10 shadow-lg pb-5">
            <div className="flex justify-center items-center space-x-6 pt-3 mt-3 mb-2 text-lg font-bold">
                <div
                    onClick={() => setActiveMainContent("Memo")}
                    className={`${activeMainContent === "Memo" ? "text-blue-600" : ""} hover:cursor-pointer`}
                >
                    응원문구
                </div>
                <div
                    onClick={() => setActiveMainContent("Schedule")}
                    className={`${activeMainContent === "Schedule" ? "text-blue-600" : ""} hover:cursor-pointer`}
                >
                    일정
                </div>
            </div>
        </header>
    )
}

export default Header;