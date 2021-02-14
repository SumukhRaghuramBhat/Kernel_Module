# Kernel_Module
Writing and installing a kernel module that accesses kernel variable and Pass parameters to a kernel module 


Modules are pieces of code that can be loaded and unloaded into the kernel upon demand.
They extend the functionality of the kernel without the need to reboot the system. For
example, one type of module is the device driver, which allows the kernel to access
hardware connected to the system. Without modules, we would have to build monolithic
kernels and add new functionality directly into the kernel image. Besides having larger
kernels, this has the disadvantage of requiring us to rebuild and reboot the kernel every
time we want new functionality.


1.Write a kernel module that accepts as command line parameters the name of the
person to be greeted and the number of times the greeting is to be printed.

2.System timers interrupt the processor at programmable frequencies. This fre-
quency, or the number of timer ticks per second, is contained in the kernel variable
HZ. The jiffies variable holds the number of times the system timer popped since
the system booted. The kernel increments jiffies HZ times every second. Thus, on
a kernel with a HZ value of 100, a \jiffy" is a 10-millisecond duration, while on
a kernel with HZ set to 1000, a jiffy is only 1-millisecond. Write a kernel module
(jiffies module) that uses the jiffies and HZ kernel variables to write the value of
time since bootup to /proc.
