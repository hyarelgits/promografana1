
https://www.geeksforgeeks.org/python/numpy-tutorial/

https://www.geeksforgeeks.org/numpy/python-numpy/


NumPy is a core Python library for numerical computing, built for handling large arrays and matrices efficiently. It is significantly faster than Python's built-in lists because it uses optimized C language style storage where actual values are stored at contiguous locations (not object reference).

ndarray object: N-dimensional array for fast numerical operations.
Vectorized operations: Perform element-wise calculations without loops.
Broadcasting: Operate on arrays of different shapes.
Linear algebra functions: Matrix operations like multiplication and inversion.
Statistical functions: Mean, median, standard deviation.
Integration: Works with Pandas, SciPy and scikit-learn.

NumPy is a core Python library for numerical computing, built for handling large arrays and matrices efficiently. It is significantly faster than Python's built-in lists because it uses optimized C language style storage where actual values are stored at contiguous locations (not object reference).

ndarray object: N-dimensional array for fast numerical operations.
Vectorized operations: Perform element-wise calculations without loops.
Broadcasting: Operate on arrays of different shapes.
Linear algebra functions: Matrix operations like multiplication and inversion.
Statistical functions: Mean, median, standard deviation.
Integration: Works with Pandas, SciPy and scikit-learn.




NumPy Arrays
NumPy arrays (ndarrays) are the backbone of the library. This section covers how to create and manipulate arrays effectively for data storage and processing




import numpy as np
​
a = [9,3,3,5]
print(np.array(a))  # Converting list into numpy array

Output
[9 3 3 5]




NumPy Arrays
NumPy arrays (ndarrays) are the backbone of the library. This section covers how to create and manipulate arrays effectively for data storage and processing


----------

import numpy as np
​
a = [9,3,3,5]
print(np.array(a))  # Converting list into numpy array

Output
[9 3 3 5]


---




import numpy as np

a = [1, 2, 3, 4]

arr = np.array(a)

print("List in python : ", a)

print("Numpy Array in python :",
      arr)



Output:




------------
Basics of NumPy Arrays
Last Updated : 27 Jan, 2026
NumPy stands for Numerical Python and is used for handling large, multi-dimensional arrays and matrices. Unlike Python's built-in lists NumPy arrays provide efficient storage and faster processing for numerical and scientific computations. It offers functions for linear algebra and random number generation making it important for data science and machine learning.


Types of Array
Various types of arrays are as follows:

1. One Dimensional Array
A one-dimensional array is a type of linear array.

maximum_sum_in_circular_array_such_that_no_two_elements_are_adjacent_using_dp_
One Dimensional Array
Example:




import numpy as np
​
a = [1, 2, 3, 4]
​
arr = np.array(a)
​
print("List in python : ", a)
​
print("Numpy Array in python :",
      arr)
Output:

n1
One Dimensional Array:
Check data type for list and array:




print(type(list_1))
​
print(type(sample_array))
Output:

n2



-------

Multi-Dimensional Array


A Multi-Dimensional Array is an array that can store data in more than one dimension such as rows and columns. In simple terms it is a array of arrays.

For example a 2D array is like a table with rows and columns where each element is accessed by two indices: one for the row and one for the column. Higher dimensions like 3D arrays involve adding additional layers.


import numpy as np

list_1 = [1, 2, 3, 4]
list_2 = [5, 6, 7, 8]
list_3 = [9, 10, 11, 12]

sample_array = np.array([list_1, 
                         list_2,
                         list_3])
print("Numpy multi dimensional array in python\n",
      sample_array)


Output
Numpy multi dimensional array in python
 [[ 1  2  3  4]
 [ 5  6  7  8]
 [ 9 10 11 12]]



-------



Parameters of a Numpy Array
1. Axis: Axis of an array describes the order of the indexing into the array.

Axis 0 = one dimensional
Axis 1 = Two dimensional
Axis 2 = Three dimensional 

2. Shape: Number of elements along with each axis and is returned as a tuple.

Example:




import numpy as np
sample_array = np.array([[0, 4, 2],
                       [3, 4, 5],
                       [23, 4, 5],
                       [2, 34, 5],
                       [5, 6, 7]])
​
print("shape of the array :",
      sample_array.shape)

Output
shape of the array : (5, 3)



------------




3. Rank: Rank of an array is simply the number of axes or dimensions it has.

One-dimensional array has rank 1.




--------------



4. Data type objects (dtype): Data type objects (dtype) is an example of numpy.dtype class. It describes how the bytes in the fixed-size block of memory corresponding to an array item should be interpreted.

Example:




import numpy as np
​
sample_array_1 = np.array([[0, 4, 2]])
​
sample_array_2 = np.array([0.2, 0.4, 2.4])
​
print("Data type of the array 1 :",
      sample_array_1.dtype)
​
print("Data type of array 2 :",
      sample_array_2.dtype)

Output
Data type of the array 1 : int64
Data type of array 2 : float64



-----------


Different Ways of Creating Numpy Array
1. numpy.array(): Numpy array object in Numpy is called ndarray. We can create ndarray using this function.

Syntax: numpy.array(parameter)

Example: 




import numpy as np
​
arr = np.array([3,4,5,5])
​
print("Array :",arr)

Output
Array : [3 4 5 5]

------------------



2. numpy.fromiter(): The fromiter() function create a new one-dimensional array from an iterable object.

Syntax: numpy.fromiter(iterable, dtype, count=-1)

Example:




import numpy as np
​
var = "Geekforgeeks"
​
arr = np.fromiter(var, dtype = 'U2')
​
print("fromiter() array :",
      arr)

Output
fromiter() array : ['G' 'e' 'e' 'k' 'f' 'o' 'r' 'g' 'e' 'e' 'k' 's']




-----------------


3. numpy.arange(): This is an inbuilt NumPy function that returns evenly spaced values within a given interval.

Syntax:  numpy.arange( start , stop, step , dtype=None )

Example:


import numpy as np

np.arange(1, 20 , 2, 
          dtype = np.float32)
Output:

array([ 1.,  3.,  5.,  7.,  9., 11., 13., 15., 17., 19.], dtype=float32) 


-----------------



4. numpy.linspace(): This function returns evenly spaced numbers over a specified between two limits. 

Syntax: numpy.linspace(start, stop, num=50, endpoint=True, retstep=False, dtype=None, axis=0)

Example:


import numpy as np

np.linspace(3.5, 10, 3, 
            dtype = np.int32)
Output:

array([ 3,  6, 10], dtype=int32)



-----------------------



5. numpy.empty(): This function create a new array of given shape and type without initializing value.

Syntax: numpy.empty(shape, dtype=float, order='C')

Example:


import numpy as np

np.empty([4, 3],
         dtype = np.int32,
         order = 'f')
Output:


---------------


6. numpy.ones(): This function is used to get a new array of given shape and type filled with ones (1).

Syntax: numpy.ones(shape, dtype=None, order='C')

Example:


import numpy as np

np.ones([4, 3],
        dtype = np.int32,
        order = 'f')
Output:
------------------



7. numpy.zeros(): This function is used to get a new array of given shape and type filled with zeros (0). 

Syntax: numpy.zeros(shape, dtype=None, order='C')

Example:


import numpy as np
np.zeros([4, 3], 
         dtype = np.int32,
         order = 'f')
Output:

-------------




Different Ways to Create Numpy Arrays in Python



NumPy provides multiple efficient methods for creating arrays, each suited to different use cases and data sources. This article covers the most commonly used techniques for creating NumPy arrays, along with when and why to use each method.

Create Numpy Arrays Using Lists or Tuples
The simplest way to create a NumPy array is by passing a Python list or tuple to the numpy.array() function. This method creates a one-dimensional array.



import numpy as np

l = [1, 2, 3, 4, 5]
a = np.array(l)
print("Simple NumPy Array:",a)




Output
Simple NumPy Array: [1 2 3 4 5]




-----


Initialize a Python NumPy Array Using Special Functions
NumPy provides several built-in functions to generate arrays with specific properties.

np.zeros(): Creates an array filled with zeros.
np.ones(): Creates an array filled with ones.
np.full(): Creates an array filled with a specified value.
np.arange(): Creates an array with values that are evenly spaced within a given range.
np.linspace(): Creates an array with values that are evenly spaced over a specified interval.




import numpy as np

a0 = np.zeros((2, 3))
a1 = np.ones((3, 3))
af = np.full((2, 2), 7)
ar = np.arange(0, 10, 2)  # start, stop, step
la = np.linspace(0, 1, 5)  # start, stop, num

print("Zero Array:","\n",a0)
print("Ones Array:","\n",a1)
print("Constant Array:","\n",af)
print("Range Array:","\n",ar)
print("Linspace Array:","\n",la)



Output
Zero Array: 
 [[0. 0. 0.]
 [0. 0. 0.]]
Ones Array: 
 [[1. 1. 1.]
 [1. 1. 1.]
 [1. 1. 1.]]
Constant Array: 
 [[7 7]
 [7 7]]
Range Array: 
 [0 2 4 6 8]
Linspace Array: 
 [0.   0.25 0.5  0.75 1.  ]




----------------


Create Python Numpy Arrays Using Random Number Generation
NumPy provides functions to create arrays filled with random numbers.

np.random.rand(): Creates an array of specified shape and fills it with random values sampled from a uniform distribution over [0, 1).
np.random.randn(): Creates an array of specified shape and fills it with random values sampled from a standard normal distribution.
np.random.randint(): Creates an array of specified shape and fills it with random integers within a given range


import numpy as np

ar = np.random.rand(2, 3)
an = np.random.randn(2, 2)
ai = np.random.randint(1, 10, size=(2, 3))  

print(ar)
print(an)
print(ai)


Output
[[0.20421896 0.03530146 0.24261146]
 [0.88545223 0.64030701 0.1138876 ]]
[[-0.32144036 -1.62570762]
 [-0.80204074 -1.00453878]]
[[2 7 6]
 [8 3 9]]




-------------------


Create Python Numpy Arrays Using Matrix Creation Routines
NumPy provides functions to create specific types of matrices.

np.eye(): Creates an identity matrix of specified size.
np.diag(): Constructs a diagonal array.
np.zeros_like(): Creates an array of zeros with the same shape and type as a given array.
np.ones_like(): Creates an array of ones with the same shape and type as a given array.



import numpy as np

im = np.eye(3)
da = np.diag([1, 2, 3])
a0 = np.zeros_like(da)
a1 = np.ones_like(da)

print(im)
print(da)
print(a0)
print(a1)


Output
[[1. 0. 0.]
 [0. 1. 0.]
 [0. 0. 1.]]
[[1 0 0]
 [0 2 0]
 [0 0 3]]
[[0 0 0]
 [0 0 0]
 [0 0 0]]
[[1 1 1]
 [1 1 1]
 [1 1 1]]

--------------



Numpy Array Indexing



Array indexing in NumPy refers to the method of accessing specific elements or subsets of data within an array. This feature allows us to retrieve, modify and manipulate data at specific positions or ranges helps in making it easier to work with large datasets. In this article, we’ll see the different ways to index and slice NumPy arrays which helps us to work with our data more effectively.

1. Accessing Elements in 1D Arrays
A 1D NumPy array is a sequence of values with positions called indices which starts at 0. We access elements by using these indices in square brackets like arr[0] for the first element. Negative indices count from the end so arr[-1] gives the last element.




import numpy as np

arr = np.array([10, 20, 30, 40, 50])

print(arr[0])


Output:

10


-------------



2. Accessing Elements in Multidimensional Arrays
In this we will see how to access elements in both 2D and 3D arrays using specific indices.

2D Arrays: We can access elements by specifying both row and column indices like matrix[row, column].




import numpy as np 
​
matrix = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
​
print(matrix[1, 2])
Output:

6

Here matrix[1, 2] accesses the element in the second row (index 1) and third column (index 2) which is 6.



-----------


3D Arrays: It can be visualized as a stack of 2D arrays, we need three indices-

Depth: Specifies the 2D slice.
Row: Specifies the row within the slice.
Column: Specifies the column within the row.
We can access elements by specifying row, column and depth indices like matrix[depth, row, column].




import numpy as np
​
cube = np.array([[[1, 2, 3],
                  [4, 5, 6],
                  [7, 8, 9]],
                 
                 [[10, 11, 12],
                  [13, 14, 15],
                  [16, 17, 18]]])
​
print(cube[1, 2, 0])
Output:

16


-----


3. Slicing Arrays
It allows us to extract a range of elements using the format start:stop:step. This can be done for both 1D and multidimensional arrays which allows us to select ranges of elements or submatrices easily.

Slicing 1D Arrays: For a 1D array, slicing returns a subset of elements between the start and stop indices.




import numpy as np
​
arr = np.array([0, 1, 2, 3, 4, 5])
​
print(arr[1:4])
Output:

[1 2 3]

Here arr[1:4] slices the array starting at index 1 up to (but not including) index 4 so it returns the elements [1, 2, 3].

Slicing Multidimensional Arrays: In this slicing can be applied to each dimension separately which allows us to extract submatrices or smaller blocks of data.




import numpy as np
​
matrix = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
​
print(matrix[0:2, 1:3])
Output:
-------------------


4. Boolean Indexing
It allows us to filter elements from an array based on a condition and returns only those that meet it. We create a boolean array from a condition and use it to select elements and can combine conditions with logical operators.




import numpy as np
​
arr = np.array([10, 15, 20, 25, 30])
​
print(arr[arr > 20])
Output:

[25 30]

The condition arr > 20 returns True for elements greater than 20 so only 25 and 30 are selected and printed.

We can also use logical operators like & (AND), | (OR) and ~ (NOT) to combine conditions.




import numpy as np 
​
arr = np.array([10, 15, 20, 25, 30])
​
print(arr[(arr > 10) & (arr < 30)])
Output:

[15 20 25]


-------------


5. Fancy Indexing
It is also known as Advanced Indexing which allows us access elements of an array by using another array or list of indices. This allows selecting multiple elements at once even if they are not next to each other which makes it easy to pick specific values from different positions in the array.




import numpy as np
arr = np.array([10, 20, 30, 40, 50])
indices = [0, 2, 4]
print(arr[indices])
Output:

[10 30 50]

It uses the list [0, 2, 4] to pick elements at those specific positions which returns [10, 30, 50].

6. Integer Array Indexing
It is similar to fancy indexing and uses an array of integers to select multiple elements from another array. This method allows us to access elements at specific, non-adjacent positions which makes it useful for extracting scattered data points.




import numpy as np
arr = np.array([1, 2, 3, 4, 5])
print(arr[[0, 2, 4]])
Output:

[1 3 5]

Using an integer array [0, 2, 4] which selects the elements at those indices and returns [1, 3, 5].

7. Ellipsis (...) in Indexing
The ellipsis (...) can be used to select all dimensions which are not explicitly mentioned. This is helpful in multidimensional arrays when we don’t want to specify every dimension.




import numpy as np
​
cube = np.random.rand(4, 4, 4)
​
print(cube[..., 0])
Output:

indexing2
Ellipsis in Indexing
Here it selects all elements in the first two dimensions and 0 selects the first element along the last dimension for each.

Note: It will generate random number as it uses random function.

8. Using np.newaxis to Add New Dimensions
The np.newaxis keyword adds a new axis to the array which helps in converting a 1D array into a row or column vector.




import numpy as np
​
arr = np.array([1, 2, 3])
​
print(arr[:, np.newaxis])
Output:

indexing3
Using np.newaxis
Here it adds a new axis helps in converting the 1D array into a 2D column vector with shape (3,1).

9. Modifying Array Elements
We can modify array elements directly by using indexing or slicing. This makes it easy to update specific elements or ranges of elements in an array.




import numpy as np 
​
arr = np.array([1, 2, 3, 4])
​
arr[1:3] = 99
​
print(arr)
Output:

[ 1 99 99  4]

The slice arr[1:3] selects elements at indices 1 and 2 and replaces them with 99. By mastering these techniques, we'll be able to manipulate and analyze data more efficiently with NumPy.





------------------


Slicing



How to Access Different Rows of a Multidimensional NumPy Array
Last Updated : 7 Jan, 2026
When we need to access different rows of a multidimensional NumPy array such as first row, last two rows or middle rows it can be done using slicing. NumPy provides simple ways to select specific rows according to given conditions.

In 2D Array
Example 1: Accessing the First and Last row of a 2D NumPy array




import numpy as np
​
arr = np.array([[10, 20, 30], [40, 5, 66], [70, 88, 94]])
print("Array:")
print(arr)
​
res = arr[[0,2]]
print("Accessed Rows :")
print(res)

Output
Array:
[[10 20 30]
 [40  5 66]
 [70 88 94]]
Accessed Rows :
[[10 20 30]
 [70 88 94]]


------------------



Example 2: Accessing the Middle row of 2D NumPy array




import numpy as np
​
arr = np.array([[101, 20, 3, 10], [40, 5, 66, 7], [70, 88, 9, 141]])
print("Array:")
print(arr)
​
res = arr[1]
print("Accessed Row :")
print(res)

Output
Array:
[[101  20   3  10]
 [ 40   5  66   7]
 [ 70  88   9 141]]
Accessed Row :
[40  5 66  7]



-----------------



Example 3: Accessing Specific Rows and Columns of a 2D NumPy array




import numpy as np
​
arr = np.array([[12, 15, 18], 
                [25, 30, 35], 
                [40, 45, 50]])
print("Array:")
print(arr)
​
res = arr[:2, :2]   # first 2 rows, first 2 columns
print("Accessed Elements:")
print(res)

Output
Array:
[[12 15 18]
 [25 30 35]
 [40 45 50]]
Accessed Elements:
[[12 15]
 [25 30]]


----------------



In 3D Arrays
Example 1: Accessing the Middle rows of 3D NumPy array




import numpy as np
​
arr = np.array([[[10, 25, 70], [30, 45, 55], [20, 45, 7]], [[50, 65, 8], [70, 85, 10], [11, 22, 33]]])
print("Array:")
print(arr)
​
res = arr[:,[1]]
print("Accessed Rows:")
print(res)

Output
Array:
[[[10 25 70]
  [30 45 55]
  [20 45  7]]

 [[50 65  8]
  [70 85 10]
  [11 22 33]]]
Accessed Rows:
[[[30 45 55]]

 [[70 85 10]]



--------------




Example 2: Accessing the First and Last rows of 3D NumPy array




import numpy as np
​
arr = np.array([[[10, 25, 70], [30, 45, 55], [20, 45, 7]], 
                 [[50, 65, 8], [70, 85, 10], [11, 22, 33]],
                 [[19, 69, 36], [1, 5, 24], [4, 20, 96]]])
print("Array:")
print(arr)
​
res = arr[:,[0, 2]]
print("Accessed Rows:")
print(res)
Output

Array:
[[[10 25 70]
  [30 45 55]
  [20 45  7]]

 [[50 65  8]
  [70 85 10]
  [11 22 33]]

 [[19 69 36]
  [ 1  5 24]
  [ 4 20 96]]]
Accessed Rows:
[[[10 25 70]
  [20 45  7]]

 [[50 65  8]
  [11 22 33]]

 [[19 69 36]
  [ 4 20 96]]]
-------------------



Example 3: 


 Accessing the First and Last rows of 3D NumPy array




import numpy as np
​
arr = np.array([[[10, 25, 70], [30, 45, 55], [20, 45, 7]], 
                 [[50, 65, 8], [70, 85, 10], [11, 22, 33]],
                 [[19, 69, 36], [1, 5, 24], [4, 20, 96]]])
print("Array:")
print(arr)
​
res = arr[:,[0, 2]]
print("Accessed Rows:")
print(res)
Output

Array:
[[[10 25 70]
  [30 45 55]
  [20 45  7]]

 [[50 65  8]
  [70 85 10]
  [11 22 33]]

 [[19 69 36]
  [ 1  5 24]
  [ 4 20 96]]]
Accessed Rows:
[[[10 25 70]
  [20 45  7]]

 [[50 65  8]
  [11 22 33]]

 [[19 69 36]
  [ 4 20 96]]]


-----------



Example 3: Accessing Specific Rows and Columns in a 3D NumPy array




import numpy as np
​
arr = np.array([
    [[5, 10, 15], [20, 25, 30], [35, 40, 45]],
    [[2,  4,  6], [ 8, 10, 12], [14, 16, 18]],
    [[7, 14, 21], [28, 35, 42], [49, 56, 63]]
])
print("Array:")
print(arr)
​
res = arr[:, :2, :2]   # first 2 rows and first 2 columns from each 2D slice
print("Accessed Elements:")
print(res)
Output

Array:
[[[ 5 10 15]
  [20 25 30]
  [35 40 45]]

 [[ 2  4  6]
  [ 8 10 12]
  [14 16 18]]

 [[ 7 14 21]
  [28 35 42]
  [49 56 63]]]
Accessed Elements:
[[[ 5 10]
  [20 25]]

 [[ 2  4]
  [ 8 10]]

 [[ 7 14]
  [28 35]]]

-------


Reshape NumPy Array - Python
Last Updated : 18 Nov, 2025
Reshaping in NumPy refers to modifying the dimensions of an existing array without changing its data. The reshape() function is used for this purpose. It reorganizes the elements into a new shape, which is useful in machine learning, matrix operations and data preparation.

Example 1: This example converts a 1-D array into a 2-D array by specifying rows and columns that match the total number of elements.




import numpy as np
a = np.array([1, 2, 3, 4, 5, 6])
r = a.reshape(2, 3)
print(r)

Output
[[1 2 3]
 [4 5 6]]
Explanation: a.reshape(2, 3) arranges the 6 elements into 2 rows and 3 columns, forming a 2-D matrix.

Syntax
array.reshape(shape)

Parameter: shape - Tuple, defining the new dimensions. One dimension can be -1, letting NumPy auto-calculate it based on the total elements.
Returns: A new reshaped ndarray.



--------

Example 2: This example creates a 3-D array by grouping the original elements into blocks, each containing equal-sized 2-D sections.




import numpy as np
a = np.array([1, 2, 3, 4, 5, 6, 7, 8])
r = a.reshape(2, 2, 2)
print(r)

Output
[[[1 2]
  [3 4]]

 [[5 6]
  [7 8]]]
Explanation: a.reshape(2, 2, 2) transforms the array into 2 blocks, each containing a 2×2 matrix, forming a 3-D structure.




---------


Example 3: This example demonstrates the use of -1 when one dimension is unknown. NumPy calculates that missing dimension automatically.




import numpy as np
a = np.array([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12])
r = a.reshape(3, -1)
print(r)

Output
[[ 1  2  3  4]
 [ 5  6  7  8]
 [ 9 10 11 12]]
Explanation: a.reshape(3, -1) tells NumPy to create 3 rows, and it computes the remaining dimension as 4 columns, since 12 ÷ 3 = 4.


----


Numpy numpy.resize() - Python
Last Updated : 18 Nov, 2025
The numpy.resize() function is used to change the size of an existing NumPy array. It modifies the array permanently and adjusts its shape to the new dimensions. If the new shape requires more elements than available, NumPy repeats the array elements. If less space is required, elements are truncated.

Example 1: This example resizes a 1D array of 6 elements into a 2×3 array. No values need repetition or truncation.




import numpy as np
arr = np.array([1, 2, 3, 4, 5, 6])
arr.resize((2, 3))
print(arr)

Output
[[1 2 3]
 [4 5 6]]
Syntax
numpy.resize(a, new_shape)
Parameters:

a: Input array to be resized.
new_shape: Target shape (int or tuple).
refcheck(optional): If True, checks whether the array is referenced elsewhere before resizing.


-------



Example 2: This example resizes a 6-element array into a 3×4 shape (12 elements needed). NumPy repeats the array elements to fill the new size.




import numpy as np
arr = np.array([1, 2, 3, 4, 5, 6])
arr.resize((3, 4))
print(arr)

Output
[[1 2 3 4]
 [5 6 0 0]
 [0 0 0 0]]


----------



Example 3: This example resizes an array into a 2×2 shape. Since fewer elements are required, the extra values are removed.




import numpy as np
arr = np.array([10, 20, 30, 40, 50])
arr.resize((2, 2))
print(arr)

Output
[[10 20]
 [30 40]]


---


numpy.stack() in Python
Last Updated : 13 Dec, 2025
The numpy.stack() function is used to join multiple arrays by creating a new axis in the output array. This means the resulting array always has one extra dimension compared to the input arrays. To stack arrays, they must have the same shape, and NumPy places them along the axis you specify.

Example: This example stacks two 1D arrays along a new axis to form a 2D array.




import numpy as np
​
a = np.array([1, 2, 3])
b = np.array([4, 5, 6])
res = np.stack((a, b), axis=0)
print(res)

Output
[[1 2 3]
 [4 5 6]]
Explanation: np.stack((a, b), axis=0) creates a new 0th axis and places arrays one below another.

Syntax
numpy.stack(arrays, axis=0, out=None)

Parameters:

arrays: Sequence of input arrays with the same shape.
axis: Position of the new axis where arrays will be stacked (default: 0).
out(Optional): output array to store the result

---------



Example 1: This example shows how stacking the same 1D arrays along axis 0, 1, and -1 changes the output shape.




import numpy as np
​
a = np.array([1, 2, 3])
b = np.array([4, 5, 6])
​
print(np.stack((a, b), axis=0))
print(np.stack((a, b), axis=1))
print(np.stack((a, b), axis=-1))

Output
[[1 2 3]
 [4 5 6]]
[[1 4]
 [2 5]
 [3 6]]
[[1 4]
 [2 5]
 [3 6]]
Explanation:

axis=0: a and b become rows.
axis=1: a and b become columns.
axis=-1: same as axis 1 because it refers to the last dimension


----------


Example 2: This example stacks two 2D arrays along axis 0, 1, and 2 to show how the new 3D structure changes.




import numpy as np
​
x = np.array([[1, 2, 3],
              [4, 5, 6]])
​
y = np.array([[7, 8, 9],
              [10, 11, 12]])
​
print(np.stack((x, y), axis=0))
print(np.stack((x, y), axis=1))
print(np.stack((x, y), axis=2))

Output
[[[ 1  2  3]
  [ 4  5  6]]

 [[ 7  8  9]
  [10 11 12]]]
[[[ 1  2  3]
  [ 7  8  9]]

 [[ 4  5  6]
  [10 11 12]]]
[[[ 1  7]
  [ 2  8]
  [ 3  9]]

 [[ 4 10]
  [ 5 11]
  [ 6 12]]]
Explanation:

axis=0: stacks arrays as two “layers” of a 3D array.
axis=1: stacks row-wise.
axis=2: stacks column-wise forming 3D structure.
-----



Example 3: This example stacks two 3D arrays along axis 0, 1, 2, and 3 to demonstrate how stacking works with higher-dimension data.




import numpy as np
​
m = np.array([[[1, 2], [3, 4]],
              [[5, 6], [7, 8]]])
​
n = np.array([[[10, 20], [30, 40]],
              [[50, 60], [70, 80]]])
​
print(np.stack((m, n), axis=0))
print(np.stack((m, n), axis=1))
print(np.stack((m, n), axis=2))
print(np.stack((m, n), axis=3))
Output

[[[[ 1  2]
   [ 3  4]]

  [[ 5  6]
   [ 7  8]]]

 [[[10 20]
   [30 40]]

  [[50 60]
   [70 80]]]]
[[[[ 1  2]
   [ 3  4]]

  [[10 20]
   [30 40]]]

 [[[ 5  6]
   [ 7  8]]

  [[50 60]
   [70 80]]]]
[[[[ 1  2]
   [10 20]]

  [[ 3  4]
   [30 40]]]

 [[[ 5  6]
   [50 60]]

  [[ 7  8]
   [70 80]]]]
[[[[ 1 10]
   [ 2 20]]

  [[ 3 30]
   [ 4 40]]]

 [[[ 5 50]
   [ 6 60]]

  [[ 7 70]
   [ 8 80]]]]

Explanation:

axis=0: stacks arrays as two 3D layers.
axis=1: stacks "planes" together.
axis=2: stacks each corresponding row.
axis=3: stacks each corresponding element as a new last-axis pair.
-----------



Splitting Arrays in NumPy
Last Updated : 23 Dec, 2025
Splitting arrays means dividing a single NumPy array into multiple smaller sub-arrays. NumPy provides several functions that make this easy by allowing you to split arrays along different directions (rows, columns, depth).

Below are some important terms to understand when splitting arrays:

Axis: The direction along which the array is split (0 for rows, 1 for columns).
Sub-arrays: Smaller arrays created after splitting the original array.
Splitting Methods: Functions like np.split(), np.hsplit(), np.vsplit() and np.array_split().
Equal vs. Unequal Splits: Splits can divide data evenly, or slightly unevenly if needed (using array_split()).
Example: This example splits a 1D array into three smaller parts using np.array_split().




import numpy as np
arr = np.array([1, 2, 3, 4, 5, 6])
res = np.array_split(arr, 3)
print(res)

Output
[array([1, 2]), array([3, 4]), array([5, 6])]
Explanation: np.array_split(arr, 3) divides the array into 3 sub-arrays, splitting elements as evenly as possible.


----------


1. numpy.split()
numpy.split() is used to divide an array into equal-sized subarrays. The number of splits must perfectly divide the size of the array along the chosen axis. If equal division is not possible, NumPy will raise an error.




import numpy as np
arr = np.arange(6)
res = np.split(arr, 2)
print(res)

Output
[array([0, 1, 2]), array([3, 4, 5])]
Explanation: np.arange(6) creates [0 1 2 3 4 5], np.split(array, 2) splits the array into 2 equal parts and result in two subarrays, each containing 3 elements


-----------



2. numpy.array_split()
numpy.array_split() works like split(), but it allows uneven splitting. This is useful when the array size does not divide evenly by the number of splits. NumPy will distribute the extra elements automatically.




import numpy as np
arr = np.arange(13)
res = np.array_split(arr, 4)
print(res)

Output
[array([0, 1, 2, 3]), array([4, 5, 6]), array([7, 8, 9]), array([10, 11, 12])]
Explanation: np.arange(13) creates array of 13 elements, np.array_split(array, 4) splits into 4 unequal parts and extra elements are distributed among the first subarrays


-----------


. numpy.vsplit()
numpy.vsplit() performs vertical splitting, meaning it divides a matrix row-wise (along axis=0). It works only on arrays with 2 or more dimensions.




import numpy as np
​
arr = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9], [10, 11, 12]])
res = np.vsplit(arr, 2)
print(res)

Output
[array([[1, 2, 3],
       [4, 5, 6]]), array([[ 7,  8,  9],
       [10, 11, 12]])]
Explanation: vsplit(matrix, 2) splits into 2 vertical (row-wise) partsand each part contains 2 rows



-----------



4. numpy.hsplit()
numpy.hsplit() performs horizontal splitting, which divides the array column-wise (axis=1). This is helpful when separating feature columns in datasets.




import numpy as np
​
arr = np.array([[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12]])
res = np.hsplit(arr, 2)
print(res)

Output
[array([[ 1,  2],
       [ 5,  6],
       [ 9, 10]]), array([[ 3,  4],
       [ 7,  8],
       [11, 12]])]
Explanation: hsplit(array, 2) splits into 2 equal column groups and each output contains 2 columns


-----------



5. numpy.dsplit()
numpy.dsplit() is used for 3D arrays. It splits the array along the third axis (axis=2). This is useful when working with stacked matrices, images, or multi-channel data.


import numpy as np

arr = np.arange(24).reshape((2, 3, 4))
res = np.dsplit(arr, 2)
print(res)
Output

[array([[[ 0,  1],
        [ 4,  5],
        [ 8,  9]],

       [[12, 13],
        [16, 17],
        [20, 21]]]), array([[[ 2,  3],
        [ 6,  7],
        [10, 11]],

       [[14, 15],
        [18, 19],
        [22, 23]]])]

Explanation: Array shape is (2, 3, 4) and dsplit(..., 2) splits last axis into 2 equal parts. Each result contains half of the last dimension

------



NumPy Array Broadcasting
Last Updated : 5 Dec, 2025
Broadcasting in NumPy allows us to perform arithmetic operations on arrays of different shapes without reshaping them. It automatically adjusts the smaller array to match the larger array's shape by replicating its values along the necessary dimensions. This makes element-wise operations more efficient by reducing memory usage and eliminating the need for loops.

Lets see an example:




import numpy as np
​
a = np.array([[1, 2, 3], [4, 5, 6]])
x = 10
print(a + x)

Output
[[11 12 13]
 [14 15 16]]
Explanation:

NumPy expands the scalar x to match the shape of array a.
The operation a + x adds 10 to each element of a.
Working of Broadcasting in NumPy
Broadcasting applies specific rules to find whether two arrays can be aligned for operations or not that are:

Check Dimensions: Ensure the arrays have the same number of dimensions or expandable dimensions.
Dimension Padding: If arrays have different numbers of dimensions the smaller array is left-padded with ones.
Shape Compatibility: Two dimensions are compatible if they are equal or one of them is 1.
If these conditions aren’t met NumPy will raise a ValueError. Lets see various examples for broadcasting below:

-----------


Example 1: Broadcasting a Scalar to a 1D Array
It creates a NumPy array arr with values [1, 2, 3] and adds a scalar value 1 to each element of the array using broadcasting.




import numpy as np
arr = np.array([1, 2, 3])
res = arr + 1  
print(res)

Output
[2 3 4]

----------


Example 2: Broadcasting a 1D Array to a 2D Array
This example shows how a 1D array a1 is added to a 2D array a2. NumPy automatically expands the 1D array along the rows of the 2D array to perform element-wise addition.




import numpy as np
​
a = np.array([2, 4, 6])
b = np.array([[1, 3, 5], [7, 9, 11]])
res = a + b
print(res)

Output
[[ 3  7 11]
 [ 9 13 17]]
Explanation:

a1 has shape (3,) and a2 has shape (2, 3).
NumPy automatically repeats a1 across both rows of a2 so their shapes match.
Then it adds elements position-wise: [1, 3, 5] + [2, 4, 6] = [3, 7, 11] and [7, 9, 11] + [2, 4, 6] = [9, 13, 17]


-----------


Example 3: Broadcasting in Conditional Operations
This example checks each age in the array and assigns "Adult" or "Minor" using np.where().




import numpy as np
​
a = np.array([12, 24, 35, 45, 60, 72])
b = np.array(["Adult", "Minor"])
res = np.where(a > 18, b[0], b[1])
print(res)

Output
['Minor' 'Adult' 'Adult' 'Adult' 'Adult' 'Adult']
Explanation:

ages > 18 creates a Boolean array by checking every value at once (broadcasting).
np.where() picks "Adult" for True and "Minor" for False without any loop.
The result is an array labeling each age correctly.


-----------



Example 4: Using Broadcasting for Matrix Multiplication
In this example, each element of a 2D matrix is multiplied by the corresponding element in a broadcasted vector.




import numpy as np
m = np.array([[1, 2], [3, 4]])
v = np.array([10, 20])
res = m * v
print(res)

Output
[[10 40]
 [30 80]]
Explanation:

The vector v is broadcast across each row of m.
Multiplication happens element-wise without loops.
Result is a scaled version of the matrix.
Example 5: Scaling Data with Broadcasting
Consider a real-world scenario where we need to calculate the total calories in foods based on the amount of fats, proteins and carbohydrates. Each nutrient has a specific caloric value per gram.

Fats: 9 calories per gram (CPG)
Proteins: 4 CPG
Carbohydrates: 4 CPG
chart
Scaling Data with Broadcasting
Left table shows the original data with food items and their respective grams of fats, proteins and carbs. The array [9, 4, 4] represents the caloric values per gram for fats, proteins and carbs respectively. This array is being broadcast to match the dimensions of the original data and arrow indicates the broadcasting operation.

Broadcasting array is multiplied element-wise with each row of the original data.
As a result right table shows the result of the multiplication where each cell represents the caloric contribution of that specific nutrient in the food item.



import numpy as np
​
fd = np.array([ [0.8, 2.9, 3.9],
                [52.4, 23.6, 36.5],
                [55.2, 31.7, 23.9],
                [14.4, 11.0, 4.9] ])
​
cpg = np.array([9, 4, 4])
res = fd * cpg
print(res)

Output
[[  7.2  11.6  15.6]
 [471.6  94.4 146. ]
 [496.8 126.8  95.6]
 [129.6  44.   19.6]]
Explanation:

cpg (9, 4, 4) broadcasts across each row of fd.
Each nutrient gram is multiplied by its calorie value.
Result is a matrix showing calorie contribution from fats, proteins and carbs for each food item.
Example 6: Adjusting Temperature Data Across Multiple Locations
Suppose you have a 2D array representing daily temperature readings across multiple cities and you want to apply a correction factor to each city’s temperature data.




import numpy as np
​
temp = np.array([ [30, 32, 34, 33, 31],
                  [25, 27, 29, 28, 26],
                  [20, 22, 24, 23, 21] ])
​
corr = np.array([1.5, -0.5, 2.0])
res = temp + corr[:, None]
print(res)

Output
[[31.5 33.5 35.5 34.5 32.5]
 [24.5 26.5 28.5 27.5 25.5]
 [22.  24.  26.  25.  23. ]]
Explanation:

corr[:, None] turns the 1D array into a column vector.
NumPy broadcasts this vector down each row of temp.
Each city’s temperatures get adjusted using its corresponding correction factor.
Example 7: Normalizing Image Data
Normalization is important in many real-world scenarios like image processing and machine learning because it:

Centers data by subtracting the mean by ensuring features have zero mean.
Scales data by dividing by the standard deviation by ensuring features have unit variance.
Improves numerical stability and performance of algorithms like gradient descent.
Let's see how broadcasting simplifies normalization:




import numpy as np
​
img = np.array([ [100, 120, 130],
                 [90, 110, 140],
                 [80, 100, 120] ])
​
m = img.mean(axis=0)
s = img.std(axis=0)
res = (img - m) / s
print(res)

Output
[[ 1.22474487  1.22474487  0.        ]
 [ 0.          0.          1.22474487]
 [-1.22474487 -1.22474487 -1.22474487]]
Explanation:

m and s are 1D arrays (mean and std for each column).
NumPy broadcasts them across all rows of img.
(img - m) centers the data.
Dividing by s scales it, giving the normalized values.
Example 8: Centering Data in Machine Learning
Centering data is an important step in many machine learning workflows. Broadcasting helps center the data efficiently by subtracting the mean from each feature. This example centers each feature by subtracting its mean using NumPy broadcasting.




import numpy as np
​
data = np.array([ [10, 20],
                  [15, 25],
                  [20, 30] ])
​
m = data.mean(axis=0)
res = data - m
print(res)

Output
[[-5. -5.]
 [ 0.  0.]
 [ 5.  5.]]
Explanation:

m is a 1D array containing the mean of each column.
NumPy broadcasts m across all rows.
Subtracting it centers every feature around zero.


----------


NumPy - Arithmetic Operations
Last Updated : 10 Dec, 2025
Arithmetic operations are used for numerical computation and we can perform them on arrays using NumPy. With NumPy we can quickly add, subtract, multiply, divide and get power of elements in an array. NumPy performs these operations even with large amounts of data.

In this article, we’ll see at the basic arithmetic functions in NumPy and show how to use them for simple calculations.

Addition of Arrays
Addition is an arithmetic operation where the corresponding elements of two arrays are added together. In NumPy the addition of two arrays is done using the np.add() function.



Addition of Arrays
Addition is an arithmetic operation where the corresponding elements of two arrays are added together. In NumPy the addition of two arrays is done using the np.add() function.




import numpy as np
​
a = np.array([5, 72, 13, 100])
b = np.array([2, 5, 10, 30])
res = np.add(a, b)
print(res)

Output


[  7  77  23 130]


-----------



Subtraction of Arrays
We can subtract two arrays element-wise using the np.subtract() function. This function subtracts each element of the second array from the corresponding element in the first array.




import numpy as np
​
a = np.array([5, 72, 13, 100])
b = np.array([2, 5, 10, 30])
res = np.subtract(a, b)
print(res)

Output
[ 3 67  3 70]


-----------



Multiplication of Arrays
Multiplication in NumPy can be done element-wise using the np.multiply() function. This multiplies corresponding elements of two arrays.




import numpy as np
​
a = np.array([5, 72, 13, 100])
b = np.array([2, 5, 10, 30])
res = np.multiply(a, b)
print(res)

Output
[  10  360  130 3000]



-----------



Division of Arrays
Division is another important operation that is performed element-wise using the np.divide() function. This divides each element of the first array by the corresponding element in the second array.




import numpy as np
​
a = np.array([5, 72, 13, 100])
b = np.array([2, 5, 10, 30])
res = np.divide(a, b)
print(res)

Output
[ 2.5        14.4         1.3         3.33333333]


----------



Exponentiation (Power)
It allows us to raise each element in an array to a specified power. In NumPy, this can be done using the np.power() function.




import numpy as np
 
a = np.array([5, 72, 13, 100])
b = np.array([2, 5, 10, 30])
res = np.power(a, b)
print(res)

Output
[                 25          1934917632        137858491849
 1152921504606846976]


---------



Modulus Operation
It finds the remainder when one number is divided by another. In NumPy, you can use the np.mod() function to calculate the modulus element-wise between two arrays.




import numpy as np
 
a = np.array([5, 72, 13, 100])
b = np.array([2, 5, 10, 30])
res = np.mod(a, b)
print(res)

Output
[ 1  2  3 10]


===========


numpy.sum() in Python
Last Updated : 30 Jan, 2026
numpy.sum() is a NumPy function used to calculate the sum of array elements. It can sum values across the entire array or along a specific axis. It also allows controlling the output data type, initial value and shape of the result.




import numpy as np
arr = np.array([5, 10, 15])
print(np.sum(arr))

Output
30
Explanation: np.sum(arr) adds all elements (5 + 10 + 15) and returns the total.

Syntax:
numpy.sum(arr, axis=None, dtype=None, out=None, initial=0, keepdims=False)

Parameters:

arr: Input array whose elements are to be summed.
axis: Axis along which the sum is computed. 0 -> column-wise, 1 -> row-wise and None -> entire array
dtype: Data type of the returned sum.
out: Output array to store the result.
initial: Starting value of the sum.
keepdims: Keeps the reduced axis as dimension in result.
Example 1: This example shows how numpy.sum() works on a 1D array and how changing the dtype affects the result.




import numpy as np
​
arr = np.array([20, 2, 0.2, 10, 4])
​
print(np.sum(arr))
print(np.sum(arr, dtype=np.uint8))
print(np.sum(arr, dtype=np.float32))

Output
36.2
36
36.2
Explanation:

np.sum(arr) computes the sum using NumPy’s default data type, preserving decimal values.
np.sum(arr, dtype=np.uint8) forces the result into an 8-bit unsigned integer, which supports values only from 0 to 255.
Decimal values are discarded, and sums exceeding this range overflow and wrap around modulo 256.
np.sum(arr, dtype=np.float32) performs the sum using floating-point arithmetic, preserving precision.
Note: Using small integer data types such as uint8 may produce unexpected results due to overflow, not calculation errors.

Example 2: This example calculates the sum of a 2D array and shows how using different data types changes the output.




import numpy as np
​
arr = np.array([ [14, 17, 12, 33, 44],
               [15,  6, 27,  8, 19],
               [23,  2, 54,  1,  4] ])
​
print(np.sum(arr))
print(np.sum(arr, dtype=np.uint8))
print(np.sum(arr, dtype=np.float32))

Output
279
23
279.0
Example 3: This example demonstrates summing a 2D array along rows, columns, and using keepdims=True.




import numpy as np
​
arr = np.array([ [14, 17, 12, 33, 44],
               [15,  6, 27,  8, 19],
               [23,  2, 54,  1,  4] ])
​
print(np.sum(arr))
print(np.sum(arr, axis=0))
print(np.sum(arr, axis=1))
print(np.sum(arr, axis=1, keepdims=True))

Output
279
[52 25 93 42 67]
[120  75  84]
[[120]
 [ 75]
 [ 84]]
Explanation:

np.sum(arr, axis=0) column-wise sum.
np.sum(arr, axis=1) row-wise sum.
np.sum(arr, axis=1, keepdims=True) preserves the reduced dimension, returning a column-shaped result.



------------



numpy.mean() is a NumPy function used to calculate the average (arithmetic mean) of numeric values. It can compute the mean of a 1D list/array or compute mean row-wise and column-wise for multi-dimensional arrays.

Example:

Input: [1, 2, 3]
Output: 2.0

Syntax
We use the following syntax to calculate the mean in NumPy:

numpy.mean(arr, axis=None, dtype=None, out=None)

Parameters:

arr: Input array of numbers
axis: None - mean of all elements, 0 - column-wise mean and 1 - row-wise mean
dtype(Optional): type used while computing mean
out(Optional): array to store the result
Examples
Example 1: This example finds the average value of a 1D list using np.mean().




import numpy as np
arr = [20, 2, 7, 1, 34]
res = np.mean(arr)
print(res)

Output
12.8
Explanation: (20 + 2 + 7 + 1 + 34)/5 = 12.8

Example 2: This example shows how to compute the mean of all elements, each column, and each row using axis.




import numpy as np
​
arr = [[14, 17, 12],
       [15,  6, 27],
       [23,  2, 54]]
​
print(np.mean(arr))           # entire array
print(np.mean(arr, axis=0))   # column-wise mean
print(np.mean(arr, axis=1))   # row-wise mean

Output
18.88888888888889
[17.33333333  8.33333333 31.        ]
[14.33333333 16.         26.33333333]
Example 3: This example stores the result of row-wise mean into another array using out.




import numpy as np
​
arr = [[5, 10, 15],
       [3,  6,  9],
       [8, 16, 24]]
​
res = np.zeros(3)
np.mean(arr, axis=1, out=res)
print(res)

Output
[10.  6. 16.]
Explanation: out=res stores the row-wise mean values into res.


------------


numpy.maximum() in Python
Last Updated : 19 Dec, 2025
numpy.maximum() is a NumPy function that compares two arrays (or scalars) element-wise and returns a new array containing the maximum value at each position. If any compared element is NaN, the NaN is returned. If both elements are NaN, the first NaN is returned.

Example: This example shows how numpy.maximum() compares two numbers and returns the larger one.




import numpy as np
​
a = 10
b = 21
print(np.maximum(a, b))

Output
21
Syntax
numpy.maximum(arr1, arr2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None)

Parameters:

arr1: First input array (or scalar).
arr2: Second input array (or scalar).
out (optional): Array to store the result.
where: Boolean mask; True positions are computed.
dtype (optional): Data type of the output.
casting / order: Controls data casting and memory layout (rarely used).
Note: / -> Parameters before / are positional-only (must be passed without argument names).
           * -> Parameters after * are keyword-only (must be passed using their names).

Examples of numpy.maximum()
Example 1: This example compares two 1D arrays and returns the element-wise maximum values.




import numpy as np
​
a = np.array([2, 8, 125])
b = np.array([3, 3, 15])
print(np.maximum(a, b))

Output
[  3   8 125]
Explanation: np.maximum(a, b) compares each index, max(2, 3) -> 3, max(8, 3) -> 8 and max(125, 15) -> 125.

Example 2: This example shows how numpy.maximum() behaves when the arrays contain NaN values.




import numpy as np
​
a = np.array([np.nan, 0, np.nan])
b = np.array([np.nan, np.nan, 0])
print(np.maximum(a, b))

Output
[nan nan nan]
Explanation:

When one element is np.nan, the result is np.nan.
When both elements are np.nan, the first np.nan is returned.
Example 3: This example compares two arrays of different shapes using broadcasting and returns element-wise maxima.




import numpy as np
​
a = np.array([[1, 4, 7], [2, 5, 8]])
b = np.array([3, 3, 3])
print(np.maximum(a, b))

Output
[[3 4 7]
 [3 5 8]]
Explanation:

b is broadcast across rows.
np.maximum(a, b) compares each column with [3, 3, 3].
-------------


numpy.minimum() in Python
Last Updated : 19 Dec, 2025
numpy.minimum() is a NumPy function that compares two arrays (or scalars) element-wise and returns a new array containing the minimum value at each position. If either element is NaN, that NaN is returned. If both are NaN, the first one is returned.

Example: This example shows how numpy.minimum() compares two numbers and returns the smaller one.




import numpy as np
​
a = 10
b = 21
print(np.minimum(a, b))

Output
10
Syntax
numpy.minimum(arr1, arr2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None)

Parameters:

arr1: First input array (or scalar).
arr2: Second input array (or scalar).
out: Optional array to store output.
where: Boolean mask; only True positions are computed.
dtype (optional): Data type of output.
casting / order: Controls casting and memory layout (advanced use).
Note on / and *
/ -> parameters before it are positional-only.
* -> parameters after it are keyword-only.

Examples of numpy.minimun()
Example 1: This example compares two 1D arrays element-wise and returns the minimum of each pair.




import numpy as np
​
a = np.array([2, 8, 125])
b = np.array([3, 3, 15])
print(np.minimum(a, b))

Output
[ 2  3 15]
Explanation: np.minimum(a1, a2), min(2, 3) -> 2, min(8, 3) -> 3 and min(125, 15) -> 15

Example 2: This example shows how numpy.minimum() behaves when NaN values are present in the arrays.




import numpy as np
​
a = np.array([np.nan, 0, np.nan])
b = np.array([np.nan, np.nan, 0])
print(np.minimum(a, b))

Output
[nan nan nan]
Explanation:

When one side is np.nan, the result becomes np.nan.
When both are np.nan, the first np.nan is returned.
Example 3: This example compares arrays of different shapes using broadcasting and finds element-wise minimum values.




import numpy as np
​
a = np.array([[4, 7, 9], [1, 5, 8]])
b = np.array([3, 6, 10])
print(np.minimum(a, b))

Output
[[3 6 9]
 [1 5 8]]
Explanation:

a2 is broadcast across each row.
np.minimum(a1, a2) compares each column pair.



----------


NumPy ufuncs | Universal functions
Last Updated : 10 Dec, 2025
NumPy ufuncs (universal functions) are fast, vectorized functions that perform element-wise operations on NumPy arrays. They are highly optimized and support features like broadcasting and automatic type handling. NumPy includes many ufuncs for arithmetic, trigonometry, statistics, etc, and they execute operations very fast because they are implemented in optimized C code.

Why use ufuncs?
Fast vectorized operations: Ufuncs apply calculations to entire arrays at once, making them much faster than Python loops.
Automatic broadcasting and type handling: They adjust array shapes automatically and handle datatype conversion internally, reducing errors.
Cleaner and more efficient code: They simplify complex numerical tasks into short, readable code that scales well on large datasets.
Basic Universal Functions (ufunc) in NumPy
1. Trigonometric functions
NumPy provides several trigonometric functions that operate element-wise on arrays. Angles should be in radians, so degree values must be converted using np.deg2rad(). These functions include standard, inverse, and hyperbolic trigonometric operations.

Common Trigonometric ufuncs in NumPy

Function	Description
np.sin, np.cos, np.tan	Compute sine, cosine and tangent of angles
np.arcsin, np.arccos, np.arctan	Calculate inverse sine, cosine and tangent
np.sinh, np.cosh, np.tanh	Compute hyperbolic sine, cosine and tangent
np.deg2rad	Convert degrees to radians
np.rad2deg	Convert radians to degrees
np.hypot	Calculate hypotenuse of a right triangle
Example: This example demonstrates sine, inverse sine, hyperbolic sine, and hypotenuse calculation using NumPy arrays.


import numpy as np

angles = np.array([0, 30, 45, 60, 90]) 
rad = np.deg2rad(angles)  # convert degrees to radians

# Sine of angles
sin_vals = np.sin(rad)
print("Sine values:", sin_vals)

# Inverse sine in degrees
inv_sin = np.rad2deg(np.arcsin(sin_vals))
print("Inverse sine (degrees):", inv_sin)

# Hyperbolic sine
sinh_vals = np.sinh(rad)
print("Hyperbolic sine:", sinh_vals)

# Hypotenuse of a right triangle
hyp = np.hypot(3, 4)
print("Hypotenuse:", hyp)
Output

Sine values: [0.         0.5        0.70710678 0.8660254  1.        ]
Inverse sine (degrees): [ 0. 30. 45. 60. 90.]
Hyperbolic sine: [0.         0.54785347 0.86867096 1.24936705 2.3012989 ]
Hypotenuse: 5.0

Explanation:

np.deg2rad() converts degrees to radians.
np.sin() computes sine for each element.
np.arcsin() calculates inverse sine; np.rad2deg() converts it back to degrees.
np.sinh() applies the hyperbolic sine function element-wise.
np.hypot(a, b) computes the hypotenuse of a right triangle with sides a and b.
2. Statistical functions
NumPy provides several statistical functions to calculate properties like mean, median, variance, and range. These functions operate element-wise and along specified axes, making analysis of arrays fast and efficient.

Common Statistical ufuncs in NumPy

Function	Description
np.amin, np.amax	Minimum or maximum of an array or along a specific axis
np.ptp	Range (max − min) of array values
np.percentile(a, p)	p-th percentile of array values
np.mean	Compute mean of data
np.median	Compute median of data
np.std	Compute standard deviation
np.var	Compute variance
np.average	Compute average value
Example: This example demonstrates common statistical calculations on an array of student weights.


import numpy as np

weights = np.array([50.7, 52.5, 50, 58, 55.63, 73.25, 49.5, 45])

# Min and Max
print("Min and Max:", np.amin(weights), np.amax(weights))

# Range
print("Range:", np.ptp(weights))

# 70th Percentile
print("70th Percentile:", np.percentile(weights, 70))

# Mean
print("Mean:", np.mean(weights))

# Median
print("Median:", np.median(weights))

# Standard Deviation
print("Std Dev:", np.std(weights))

# Variance
print("Variance:", np.var(weights))

# Average
print("Average:", np.average(weights))
Output

Min and Max: 45.0 73.25
Range: 28.25
70th Percentile: 55.317
Mean: 54.3225
Median: 51.6
Std Dev: 8.052773978574091
Variance: 64.84716875
Average: 54.3225

Explanation:


-------------


Mathematical Function - NumPy
Last Updated : 13 Jan, 2026
NumPy contains a large number of various mathematical operations. NumPy provides standard trigonometric functions, functions for arithmetic operations, handling complex numbers, etc.

Trigonometric Functions
NumPy provides functions like sin(), cos() and tan() to compute trigonometric ratios element-wise for angles in radians.

FUNCTION	DESCRIPTION
sin()

Computes sine element-wise

cos()

Computes cosine element-wise

tan()	Compute tangent element-wise.
arcsin()	Inverse sine, element-wise.
arccos()	Trigonometric inverse cosine, element-wise.
arctan()	Trigonometric inverse tangent, element-wise.
arctan2()	Element-wise arc tangent of x1/x2 choosing the quadrant correctly.
degrees()	Convert angles from radians to degrees.
rad2deg()	Convert angles from radians to degrees.
deg2rad	Convert angles from degrees to radians.
radians()	Convert angles from degrees to radians.
hypot()	Given the “legs” of a right triangle, return its hypotenuse.
unwrap()	Unwrap by changing deltas between values to 2*pi complement.
Sine Function
The sine function returns the y-coordinate of a point on the unit circle for a given angle (in radians).




import numpy as np
​
arr = [0, np.pi/2, np.pi/3, np.pi]
s1 = np.sin(arr)
print("Sine values:\n", s1)

Output
Sine values:
 [0.00000000e+00 1.00000000e+00 8.66025404e-01 1.22464680e-16]
Explanation:

arr stores angles in radians.
np.sin(arr): calculates sine for each angle element-wise.
Cosine Function
The cosine function returns the x-coordinate of a point on the unit circle for a given angle (in radians).




import numpy as np
​
arr = [0, np.pi/2, np.pi/3, np.pi]
c1 = np.cos(arr)
print("Cosine values:\n", c1)

Output
Cosine values:
 [ 1.000000e+00  6.123234e-17  5.000000e-01 -1.000000e+00]
Explanation: np.cos(arr): computes cosine values element-wise for all angles.

Hyperbolic Functions
Used to calculate hyperbolic sine, cosine, and tangent.

FUNCTION	DESCRIPTION
sinh()

Hyperbolic sine

cosh()

Hyperbolic cosine

tanh()	Compute hyperbolic tangent element-wise.
arcsinh()	Inverse hyperbolic sine element-wise.
arccosh()	Inverse hyperbolic cosine, element-wise.
arctanh()	Inverse hyperbolic tangent element-wise.
Hyperbolic Sine
The hyperbolic sine (sinh) function returns the value of the hyperbola-based analogue of the sine function, defined as (e^x-e^(-x))/2.




import numpy as np
arr = [0, np.pi/2, np.pi/3, np.pi]
​
sh = np.sinh(arr)
print("Hyperbolic sine values:\n", sh)

Output
Hyperbolic sine values:
 [ 0.          2.3012989   1.24936705 11.54873936]
Explanation: np.sinh(arr) computes the hyperbolic sine for each value element-wise.

Rounding Functions
Used to round numbers to the nearest integer or specified decimals.

FUNCTION	DESCRIPTION
rint()	Round to nearest integer towards zero.
fix()	Round to nearest integer towards zero.
floor()	Return the floor of the input, element-wise.
ceil()	Return the ceiling of the input, element-wise.
trunc()	Return the truncated value of the input, element-wise.
rint() Function
np.rint() rounds each element in an array to the nearest integer, returning a new array with the rounded values.




import numpy as np
arr = [1.2, 2.7, -3.4, -4.6]
print(np.rint(arr))

Output
[ 1.  3. -3. -5.]
Exponents and logarithms Functions
NumPy supports exponential, logarithmic, and power operations element-wise.

FUNCTION	DESCRIPTION
np.exp()

e^x element-wise

expm1()	Calculate exp(x) – 1 for all elements in the array.
exp2()	Calculate 2**p for all p in the input array.
log10()	Return the base 10 logarithm of the input array, element-wise.
log2()	Base-2 logarithm of x.
log1p()	Return the natural logarithm of one plus the input array, element-wise.
logaddexp()	Logarithm of the sum of exponentiations of the inputs.
logaddexp2()	Logarithm of the sum of exponentiations of the inputs in base-2.
Exponential
np.exp() function calculates e^x for each element in an array, where e is approximately equal to 2.718 is the base of natural logarithms.




import numpy as np
arr = [1, 3, 5]
print(np.exp(arr))

Output
[  2.71828183  20.08553692 148.4131591 ]
Natural Logarithm
The natural logarithm (np.log) computes the logarithm of each element in the array with base e. where 'e' is approximately equal to 2.718.




import numpy as np
arr = [1, 3, 5, 256]
print(np.log(arr))

Output
[0.         1.09861229 1.60943791 5.54517744]
Arithmetic Functions
Arithmetic functions perform basic mathematical operations in Python, such as addition, subtraction, multiplication, and division etc.

FUNCTION	DESCRIPTION
add()	Add arguments element-wise.
positive()	Numerical positive, element-wise.
negative()	Numerical negative, element-wise.
multiply()	Multiply arguments element-wise.
power()	First array elements raised to powers from second array, element-wise.
subtract()	Subtract arguments, element-wise.
true_divide()	Returns a true division of the inputs, element-wise.
floor_divide()	Return the largest integer smaller or equal to the division of the inputs.
float_power()	First array elements raised to powers from second array, element-wise.
mod()	Return the element-wise remainder of division.
remainder()	Return element-wise remainder of division.
divmod()	Return element-wise quotient and remainder simultaneously.
reciprocal()

Returns the reciprocal (1/x) of each element in an array.

divide()

performs element-wise division between arrays or numbers.

Reciprocal Function
np.reciprocal() computes the reciprocal (1/x) of each element in the input array element-wise.




import numpy as np
print(np.reciprocal(2.0))

Output
0.5
Divide Function
numpy.divide(arr1, arr2) performs element-wise division of the first array by the second array.




import numpy as np
​
arr1 = [2, 27, 2, 21, 23]
arr2 = [2, 3, 4, 5, 6]
print(np.divide(arr1, arr2))

Output
[1.         9.         0.5        4.2        3.83333333]
Complex Number Functions
isreal() Function
numpy.isreal() test element-wise whether it is a real number or not(not infinity or not Not a Number) and return the result as a boolean array.




import numpy as geek 
 
print("Is Real : ", geek.isreal([1+1j, 0j]))
print("Is Real : ", geek.isreal([1, 0]))

Output
Is Real :  [False  True]
Is Real :  [ True  True]
conj() Function
numpy.conj(x) gives the complex conjugate of a number by changing the sign of its imaginary part.




import numpy as np
 
c1 = 2+4j
o1 = np.conj(c1)
print ("Output conjugated complex number of  2+4j : ", o1)
 
c2 =5-8j
o2 = np.conj(c2)
print ("Output conjugated complex number of 5-8j: ", o2)

Output
Output conjugated complex number of  2+4j :  (2-4j)
Output conjugated complex number of 5-8j:  (5+8j)
Special functions
Special functions perform advanced mathematical and numerical operations, such as convolution, element-wise calculations, interpolation, and handling NaN or complex values.

FUNCTION	DESCRIPTION
convolve()	Returns the discrete, linear convolution of two one-dimensional sequences.
sqrt()	Return the non-negative square-root of an array, element-wise.
square()	Return the element-wise square of the input.
absolute()	Calculate the absolute value element-wise.
fabs()	Compute the absolute values element-wise.
sign()	Returns an element-wise indication of the sign of a number.
interp()	One-dimensional linear interpolation.
maximum()	Element-wise maximum of array elements.
minimum()	Element-wise minimum of array elements.
real_if_close()	If complex input returns a real array if complex parts are close to zero.
nan_to_num()	Replace NaN with zero and infinity with large finite numbers.
heaviside()	Compute the Heaviside step function.
cbrt()

computes the cube root of each element in an array.

clip()

limits array values to a min and max.

Cube Root
numpy.cbrt(x) function helps user to calculate cube root of x for all x being the array elements.




import numpy as np
​
arr = [1, 27000, 64, -1000]
print(np.cbrt(arr))

Output
[  1.  30.   4. -10.]
clip() Function
numpy.clip(x, a_min, a_max) this function is used to Clip (limit) the values in an array.




import numpy as np
arr = [1, 2, 3, 4, 5, 6, 7, 8]
print(np.clip(arr, 2, 6))

Output
[2 2 3 4 5 6 6 6]
Related Articles:
Python NumPy
Basic Slicing and Advanced Indexing in NumPy



-------------



Random sampling in numpy | randint() function
Last Updated : 17 Nov, 2025
The numpy.random.randint() function is used to generate random integers within a specified range. It allows you to create arrays of any shape filled with random integer values, making it useful in simulations, testing, and numerical experiments.

Example:

Input: Generate integers between 0 and 5
Output: [3 1 4 0 2]

Explanation: Each value is a random integer from the interval [0, 5).

Syntax
numpy.random.randint(low, high=None, size=None, dtype=int)
Parameters:

low: lowest integer that can appear in the output.
high(Optional): Upper limit (exclusive). If omitted, range becomes [0, low).
size(Optional): Shape of the output array (e.g., 5, (2,3), (2,3,4)).
dtype(Optional): Data type of the returned numbers. Default is integer.
Examples
Example 1: This example generates five random integers between 0 and 4, stored in a one-dimensional array.




import numpy as np
arr = np.random.randint(0, 5, size=5)
print(arr)

Output
[2 2 3 3 4]
Example 2: This example creates a 2×3 matrix of random integers ranging from 0 to 9.




import numpy as np
arr = np.random.randint(0, 10, size=(2, 3))
print(arr)

Output
[[7 9 8]
 [9 1 1]]
Explanation:

size=(2, 3): creates 2 rows and 3 columns.
0 to 10: upper limit 10 is excluded.
Example 3: This example produces a 3D array (2×2×4) with values between 5 and 15.




import numpy as np
arr = np.random.randint(5, 15, size=(2, 2, 4))
print(arr)

Output
[[[ 8  7 12 12]
  [ 6 13 13  6]]

 [[11  6  6  7]
  [ 7  9  6  8]]]



-------


Generating Random Numbers
Normal Distribution
Binomial Distribution
Poisson Distribution
Uniform Distribution
Exponential Distribution
Chi-square Distribution
Statistical Functions (mean, median, variance, standard deviation)



Matrix Multiplication & Manipulation
Matrix & vector products
Determinants & Inverse of a Matrix
Inner & Outer Functions
Dot and Vdot Functions
Eigenvalues and Eigenvectors



