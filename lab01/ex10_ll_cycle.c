#include <stddef.h>
#include "ex10_ll_cycle.h"

int ll_has_cycle(node *head) {
    if (head == NULL || head->next == NULL) {
        return 0;
    }

    node* slow_ptr = head;
    node* fast_ptr = head->next;

    while (slow_ptr != fast_ptr) {
        if (fast_ptr == NULL || fast_ptr->next == NULL) {
            return 0;
        }
        slow_ptr = slow_ptr->next;
        fast_ptr = fast_ptr->next->next;
    }

    return 1;
}
