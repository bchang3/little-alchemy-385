#include "element_list.h"
#include <stdio.h>
#include <stdlib.h>

ElementNode *unlocked_head = NULL;
int NumUnlocked = 0;
int ScrollPosition = 0;

static ElementNode* create_node(int index) {
    ElementNode* node = (ElementNode*)malloc(sizeof(ElementNode));
    node->index = index;
    node->next = NULL;
    return node;
}

void init_unlocked_elements(void) {
    int starters[] = {1, 199, 226, 693, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20};  // air, earth, fire, water

    unlocked_head = NULL;
    NumUnlocked = 0;

    for (int i = 0; i < 4; i++) {
        add_unlocked_element(starters[i]);
    }
}

bool is_unlocked(int index) {
    ElementNode* current = unlocked_head;

    while (current != NULL) {
        if (current->index == index)
            return true;
        if (current->index > index)
            return false;
        current = current->next;
    }
    return false;
}

int getMenuElement(int MenuIdx) {
	ElementNode* current = unlocked_head;
	int targetIdx = MenuIdx + ScrollPosition;
	int cur_idx = 0;
	while (current != NULL) {
		if (cur_idx == targetIdx) {
			return current->index;
		}
		current = current->next;
		cur_idx++;
	}
	return -1;
}
void writeMenu(volatile uint32_t Menu[]) {
    ElementNode* current = unlocked_head;
    int cur_idx = 0;
    while (current != NULL && cur_idx - ScrollPosition < 15) {
        if (cur_idx >= ScrollPosition)
            Menu[cur_idx - ScrollPosition] = current->index + 1;
        current = current->next;
        cur_idx++;
    }
}

bool scrollMenu(int scroll) {
    if (NumUnlocked <= 15) {
    	return false;
    }
    if ((scroll + ScrollPosition < 0) || (scroll + ScrollPosition > NumUnlocked - 15)) {
    	return false;
    }
    ScrollPosition += scroll;
    return true;
}

void add_unlocked_element(int index) {
    if (is_unlocked(index))
        return;

    ElementNode *new_node = create_node(index);

    if (unlocked_head == NULL || index < unlocked_head->index) {
        new_node->next = unlocked_head;
        unlocked_head = new_node;
        NumUnlocked;
        return;
    }

    ElementNode *current = unlocked_head;
    while (current->next != NULL && current->next->index < index) {
        current = current->next;
    }

    new_node->next = current->next;
    current->next = new_node;
    NumUnlocked++;
}
