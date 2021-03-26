import React from 'react'
import '../style/main.css'
import '../style/mySass.scss'

const Navbar = () => {
    return (
        <div className="navBar">



            <div class="flex">
           
                
                <div class="w-1/5 bg-green-10 h-12">
                <div className="center-item">
                     <img src="https://image.flaticon.com/icons/svg/566/566020.svg" alt="instagram" className="small-icon"/>
                     </div>                    
                     </div>
                <div class="w-3/5 bg-blue-10 h-12">
                    <div className="heading">
                    BifChain 
                    </div>
                </div>

                {/* Icon components */}

                <div class="w-1/5 bg-red-10 h-12 center-item">
                <div className="horizontal-order"> 
                     <div>
                     <img src="https://image.flaticon.com/icons/svg/25/25631.svg" alt="instagram" className="small-icon"/>
                     </div>
                     <div>
                     <img src="https://image.flaticon.com/icons/svg/1077/1077041.svg" alt="instagram" className="small-icon"/>
                     </div>
                     <div>
                     <img src="https://image.flaticon.com/icons/svg/1077/1077042.svg" alt="instagram" className="small-icon"/>
                     </div>
                     
                </div>
                </div>

                 {/* Icon components */}
                
                
            </div>
        </div>
    )
}

export default Navbar
