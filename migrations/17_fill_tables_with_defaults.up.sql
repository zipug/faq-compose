UPDATE articles
SET content = '<b>How to use list comprehension in Python</b><br/>
    <i>List comprehension in Python is a concise way to create lists. It allows you to generate a new list by applying an expression to each item in an existing iterable (like a <code>list</code>, <code>tuple</code>, or <code>range</code>).</i>
    <br/>
    <pre>
      <code class="language-python">
        [expression for item in iterable if condition]
      </code>
    </pre>
    <br/>
    <b>Examples:</b>
    <br/>
    <b>1. Basic List Comprehension:</b>
    <br/>
    <i>Create a list of squares of numbers from 0 to 9.</i>
    <br/>
    <pre>
      <code class="language-python">
        squares = [x**2 for x in range(10)]
    <br/>
        print(squares)
    <br/>
        # Output: [0, 1, 4, 9, 16, 25, 36, 49, 64, 81]
      </code>
    </pre>
    <br/>
    <b>2. List Comprehension with Condition:</b>
    <br/>
    <i>Create a list of even numbers from 0 to 9.</i>
    <br/>
    <pre>
      <code class="language-python">
        evens = [x for x in range(10) if x % 2 == 0]
    <br/>
        print(evens)
    <br/>
        # Output: [0, 2, 4, 6, 8]
      </code>
    </pre>
    <br/>
    <b>3. Nested List Comprehension:</b>
    <br/>
    <i>Flatten a 2D list (matrix) into a 1D list.</i>
    <br/>
    <pre>
      <code class="language-python">
        matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    <br/>
        flattened = [num for row in matrix for num in row]
    <br/>
        print(flattened)
    <br/>
        # Output: [1, 2, 3, 4, 5, 6, 7, 8, 9]
    <br/>
      </code>
    </pre>
    <b>4. List Comprehension with Multiple Conditions:</b>
    <br/>
    <i>Create a list of numbers divisible by both 2 and 3 from 0 to 20.</i>
    <br/>
    <pre>
      <code class="language-python">
        divisible_by_2_and_3 = [x for x in range(21) if x % 2 == 0 and x % 3 == 0]
    <br/>
        print(divisible_by_2_and_3)
    <br/>
        # Output: [0, 6, 12, 18]
      </code>
    </pre>
    <br/>
    <b>5. List Comprehension with Function:</b>
    <br/>
    <i>Apply a function to each item in the list.</i>
    <br/>
    <pre>
      <code class="language-python">
        def double(x):
    <br/>
          return x * 2
    <br/>
    <br/>
        doubled = [double(x) for x in range(5)]
    <br/>
        print(doubled)
    <br/>
        # Output: [0, 2, 4, 6, 8]
      </code>
    </pre>'
WHERE id = 1;
