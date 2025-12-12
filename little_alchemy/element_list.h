#ifndef UNLOCKED_H
#define UNLOCKED_H

#include <stdbool.h>
#include <stdint.h>

typedef struct ElementNode {
    int index;
    struct ElementNode *next;
} ElementNode;

extern ElementNode *unlocked_head;

void init_unlocked_elements(void);

void add_unlocked_element(int index);

bool is_unlocked(int index);
void writeMenu(volatile uint32_t Menu[]);
bool scrollMenu(int scroll);
int  getMenuElement(int MenuIdx);

#endif
