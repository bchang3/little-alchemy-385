#ifndef HDMI_TEXT_CONTROLLER_H
#define HDMI_TEXT_CONTROLLER_H


/****************** Include Files ********************/
#include "xil_types.h"
#include "xstatus.h"
#include "xparameters.h"

#define COLUMNS 31
#define ROWS 30
#define MENU_START 0x1000


struct LITTLE_ALCHEMY_STRUCT {
	uint32_t            WORKSPACE [ROWS*COLUMNS];
	uint8_t             PADDING[MENU_START - (ROWS * COLUMNS * 4)];
	uint32_t            MENU[16];
	uint32_t            FRAME_COUNT;
	uint32_t            DRAWX;
	uint32_t            DRAWY;
	uint32_t            MOUSE_X;
	uint32_t            MOUSE_Y;
	uint32_t            MOUSE_ELEM;
	uint32_t			SCREEN_MODE;
	uint32_t			NEW_ELEM;
};



//you may have to change this line depending on your platform designer
static volatile struct LITTLE_ALCHEMY_STRUCT* little_alchemy_ctrl = XPAR_LITTLE_ALCHEMY_CONTR_0_AXI_BASEADDR;



/**************************** Type Definitions *****************************/
/**
 *
 * Write a value to a LITTLE_ALCHEMY_CONTR register. A 32 bit write is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is written.
 *
 * @param   BaseAddress is the base address of the LITTLE_ALCHEMY_CONTRdevice.
 * @param   RegOffset is the register offset from the base to write to.
 * @param   Data is the data written to the register.
 *
 * @return  None.
 *
 * @note
 * C-style signature:
 * 	void LITTLE_ALCHEMY_CONTR_mWriteReg(u32 BaseAddress, unsigned RegOffset, u32 Data)
 *
 */
#define LITTLE_ALCHEMY_CONTR_mWriteReg(BaseAddress, RegOffset, Data) \
  	Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))

/**
 *
 * Read a value from a LITTLE_ALCHEMY_CONTR register. A 32 bit read is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is read from the register. The most significant data
 * will be read as 0.
 *
 * @param   BaseAddress is the base address of the LITTLE_ALCHEMY_CONTR device.
 * @param   RegOffset is the register offset from the base to write to.
 *
 * @return  Data is the data from the register.
 *
 * @note
 * C-style signature:
 * 	u32 LITTLE_ALCHEMY_CONTR_mReadReg(u32 BaseAddress, unsigned RegOffset)
 *
 */
#define LITTLE_ALCHEMY_CONTR_mReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))

/************************** Function Prototypes ****************************/
/**
 *
 * Run a self-test on the driver/device. Note this may be a destructive test if
 * resets of the device are performed.
 *
 * If the hardware system is not built correctly, this function may never
 * return to the caller.
 *
 * @param   baseaddr_p is the base address of the HDMI_TEXT_CONTROLLER instance to be worked on.
 *
 * @return
 *
 *    - XST_SUCCESS   if all self-test code passed
 *    - XST_FAILURE   if any self-test code failed
 *
 * @note    Caching must be turned off for this function to work.
 * @note    Self test may fail if data memory and device are not on the same bus.
 *
 */
void handleClick();
void unlockElement(int ElemIdx);
void handleDrop();
void handleScroll(int scroll);
void sleepframe(uint32_t frames);
void startGame();


#endif // HDMI_TEXT_CONTROLLER_H
