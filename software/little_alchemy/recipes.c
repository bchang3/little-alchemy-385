#include "recipes.h"

int GetCombo(uint32_t elem1_32, uint32_t elem2_32) {
	uint16_t elem1 = (uint16_t) (elem1_32 - 1);
	uint16_t elem2 = (uint16_t) (elem2_32 - 1);
	for (int i = 0; i < RECIPE_COUNT; i++) {
		Recipe recipe = RECIPES[i];
		if (recipe.elem1 == elem1 && recipe.elem2 == elem2) {
			return recipe.result + 1;
		} else if (recipe.elem2 == elem1 && recipe.elem1 == elem2) {
			return recipe.result + 1;
		}
	}
	return 0;
}
