#include <linux/module.h>
#include <linux/kernel.h>

int hello_init(void){
    pr_alert("Hello World :)\n");
    return 0;
}

int hello_exit(void){
    pr_alert("Goodbye World!\n");
    return 0;
}

module_init(hello_init);
module_exit(hello_exit);