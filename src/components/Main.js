import React, { useState, useEffect, useRef } from 'react';
import '../style/main.css'

const Main = () => {

    const [dataArray, setDataArray] = useState(
        [
            { no: 1, type: "M", feel: -1 },
            { no: 2, type: "A", feel: 0 },
            { no: 3, type: "D", feel: 1 },
            { no: 3, type: "D", feel: -1 },
            { no: 3, type: "D", feel: -1 },
            { no: 3, type: "D", feel: 1 },
            { no: 3, type: "D", feel: 0 },
            { no: 3, type: "D", feel: 1 },
        ]
    )

    const conditionalDot = (props) => {
        if (props < 0) {
            return <div><span className="dot-1 fade-in"></span>
            </div>
        }
        else if (props == 0) {
            return <div><span className="dot0 fade-in"></span></div>
        }
        else {
            return <div><span className="dot1 fade-in"></span></div>
        }



    }

    const renderingData = dataArray.map((number) =>
    (

        <div>
            {conditionalDot(number.feel)}
        </div>
    ))




    return (
        <div class="pt-48">

            <div class="pb-12">
                {renderingData}
            </div>


            <button
                type="button"
                class="border border-indigo-500 bg-indigo-500 text-white rounded-md px-4 py-2 m-2 transition duration-500 ease select-none hover:bg-indigo-600 focus:outline-none focus:shadow-outline"
            >
                Record
      </button>

      {/* <div className="fixed-box">
      </div> */}

     





        </div>
    )
}

export default Main
