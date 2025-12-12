

/***************************** Include Files *******************************/
#include "little_alchemy_controller.h"

#include "stdio.h"
#include "stdlib.h"
#include "string.h"
#include "sleep.h"
#include "element_list.h"
#include "recipes.h"

/************************** Function Definitions ***************************/


void handleClick() {
	if (little_alchemy_ctrl->SCREEN_MODE == 1) {
		little_alchemy_ctrl->NEW_ELEM = 0;
		little_alchemy_ctrl->SCREEN_MODE = 0;
		return;
	}
	if (little_alchemy_ctrl->MOUSE_X > 502) {
		int MenuIdx = little_alchemy_ctrl->MOUSE_Y / 32;
		int MenuElement = getMenuElement(MenuIdx);
		little_alchemy_ctrl->MOUSE_ELEM = MenuElement + 1;
	} else if (little_alchemy_ctrl->MOUSE_X < 496) {
		uint32_t mouse_left = little_alchemy_ctrl->MOUSE_X - 4;
		uint32_t mouse_top = little_alchemy_ctrl->MOUSE_Y - 4;
		int base_slot_x = mouse_left / 16;
		int base_slot_y = mouse_top / 16;
		uint32_t base_slot_elem = little_alchemy_ctrl->WORKSPACE[(base_slot_y * COLUMNS + base_slot_x )];
		if (base_slot_elem) {
			little_alchemy_ctrl->WORKSPACE[(base_slot_y * COLUMNS + base_slot_x )] = 0;
			little_alchemy_ctrl->MOUSE_ELEM = base_slot_elem;
		}

	}

}

void unlockElement(int ElemIdx) {
	add_unlocked_element(ElemIdx - 1);
	little_alchemy_ctrl->NEW_ELEM = (uint32_t) ElemIdx;
	little_alchemy_ctrl->SCREEN_MODE = 1;
	writeMenu(little_alchemy_ctrl->MENU);
}
void handleDrop() {
	if (little_alchemy_ctrl->MOUSE_ELEM) {
		if (little_alchemy_ctrl->MOUSE_X < 496) {
			uint32_t mouse_left = little_alchemy_ctrl->MOUSE_X - 4;
			uint32_t mouse_top = little_alchemy_ctrl->MOUSE_Y - 4;
			int left_offset = mouse_left % 16;
			int top_offset = mouse_top % 16;
			int slot_x;
			int slot_y;
			if (left_offset >= 8) {
				slot_x = (mouse_left / 16) + 1;
			} else {
				slot_x = mouse_left / 16;
			}
			if (top_offset >= 8) {
				slot_y = (mouse_top / 16) + 1;
			} else {
				slot_y = mouse_top / 16;
			}

			int base_slot_x = mouse_left / 16;
			int base_slot_y = mouse_top / 16;
			uint32_t base_slot_elem = little_alchemy_ctrl->WORKSPACE[(base_slot_y * COLUMNS + base_slot_x )];
			int combo = GetCombo(little_alchemy_ctrl->MOUSE_ELEM, base_slot_elem);


			if (base_slot_elem && combo) {
				little_alchemy_ctrl->WORKSPACE[(base_slot_y * COLUMNS + base_slot_x )] = (uint32_t)combo;
				little_alchemy_ctrl->MOUSE_ELEM = 0;
				unlockElement(combo);
				return;
			}

			if (left_offset != 0) {
				// intersects with slot to the right
				uint32_t right_slot_elem = little_alchemy_ctrl->WORKSPACE[(base_slot_y * COLUMNS + base_slot_x + 1)];
				combo = GetCombo(little_alchemy_ctrl->MOUSE_ELEM, right_slot_elem);
				if (right_slot_elem && combo) {
					little_alchemy_ctrl->WORKSPACE[(base_slot_y * COLUMNS + base_slot_x + 1)] = (uint32_t)combo;
					little_alchemy_ctrl->MOUSE_ELEM = 0;
					unlockElement(combo);
					return;
				}
			}
			if (top_offset != 0) {
				// intersects with slot to the bottom
				uint32_t bottom_slot_elem = little_alchemy_ctrl->WORKSPACE[((base_slot_y+1) * COLUMNS + base_slot_x )];
				combo = GetCombo(little_alchemy_ctrl->MOUSE_ELEM, bottom_slot_elem);
				if (bottom_slot_elem && combo) {
					little_alchemy_ctrl->WORKSPACE[((base_slot_y+1) * COLUMNS + base_slot_x )] = (uint32_t)combo;
					little_alchemy_ctrl->MOUSE_ELEM = 0;
					unlockElement(combo);
					return;
				}
			}

			if (left_offset != 0 && top_offset != 0) {
				// intersects with slot to the bottom right diagonal
				uint32_t diagonal_slot_elem = little_alchemy_ctrl->WORKSPACE[((base_slot_y+1) * COLUMNS + base_slot_x +1)];
				combo = GetCombo(little_alchemy_ctrl->MOUSE_ELEM, diagonal_slot_elem);
				if (diagonal_slot_elem && combo) {
					little_alchemy_ctrl->WORKSPACE[((base_slot_y+1) * COLUMNS + base_slot_x +1)] = (uint32_t)combo;
					little_alchemy_ctrl->MOUSE_ELEM = 0;
					unlockElement(combo);
					return;
				}
			}

			if (!base_slot_elem) {
				little_alchemy_ctrl->WORKSPACE[(slot_y * COLUMNS + slot_x)] = little_alchemy_ctrl->MOUSE_ELEM;
			}


		}
		little_alchemy_ctrl->MOUSE_ELEM = 0;
	}
}

void handleScroll(int scroll) {
	if (little_alchemy_ctrl->MOUSE_X > 502) {
		bool scrolled = scrollMenu(scroll);
		if (scrolled) {
			writeMenu(little_alchemy_ctrl->MENU);
			sleepframe(10);
		}

	}

}
void sleepframe(uint32_t frames)
{
	uint32_t last_frame_count = little_alchemy_ctrl->FRAME_COUNT;
	while (little_alchemy_ctrl->FRAME_COUNT < last_frame_count + frames)
	{}
}


void startGame()
{
	init_unlocked_elements();
	writeMenu(little_alchemy_ctrl->MENU);

}

