import numpy as np
from pulp import *


# Print solution to LPP problem
def printProb(prob):
    # Print out the parameters of the variables associated
    # with the name and varValue attributes of each
    # variable associated with the problem
    for v in prob.variables():
        print(v.name, "=", v.varValue)
    # Print the status of the LPP solution
    print("Status:", pulp.LpStatus[prob.status])


# Create a LP Minimization problem
Lp_prob = LpProblem('Problem', LpMinimize)

# Create problem Variables
x = LpVariable("x", lowBound=0)  # Create a variable x >= 0
y = LpVariable("y", lowBound=0)  # Create a variable y >= 0
print(type(x))
print(type(y))
print("Value of x after declaration")
print(type(value(x)))
print(type(x.varValue))

# Objective Function
Lp_prob += 3 * x + 5 * y
print("Value of x after adding to problem objective")
print(type(value(x)))
print(type(x.varValue))
print(type(Lp_prob))
# Constraints:
Lp_prob += 2 * x + 3 * y >= 12
Lp_prob += -x + y <= 3
Lp_prob += x >= 4
Lp_prob += y <= 3
# Lp_prob += x + y == 2
# Lp_prob += x + y == 3
print("Value of x after adding constraints to problem")
print(type(value(x)))
print(type(x.varValue))

# Display the problem
print(Lp_prob)

status = Lp_prob.solve()  # Solver
print(LpStatus[status])  # The solution status

# Printing the final solution
print(value(x), value(y), value(Lp_prob.objective))
# These are floats
print("Final values of the variables x")
print(type(value(x)))
print(type(x.varValue))


# A list of identifiers as strings
# names = ['A', 'B', 'C', 'D', 'E']
names = np.arange(5)
# Create a dictionary out of these identifiers
# PRICES = dict(zip(names, [100.0, 99.0, 100.5, 101.5, 200.0]))
PRICES = dict(zip(names, [100.0, 100.0, 100.0, 100.0, 100.0]))
# Number of variables
n = len(names)
# Create a list of LP variables objects from the list names using prefix 'e'
# i.e e_A, e_B, ... etc.
x = LpVariable.dicts("e", indexs=names, lowBound=0, upBound=1)
print("Type of lp variable vector x is")
print(type(x))
print("Type of individual component of tis var. vector is")
print(type(x[1]))
# Try a 2D array of variables example
students = range(96)
group = range(24)
# var = LpVariable.dicts("if_i_in_group_j", ((i, j) for i in students for j in group), cat='binary')
var = LpVariable.dicts("if_i_in_group_j", ((i, j) for i in students for j in group))
print(type(x))
print(x)
#print(type(var))
# print(var[5, 6].name, var[5, 6].value)
# Specify problem name and problem type
prob = pulp.LpProblem("Example-Name", pulp.LpMinimize)
# Use the variable list x and the price dictionary to assemble the objective
prob += 0.5*pulp.lpSum([x[i]*PRICES[i] for i in names]) + 1.5*x[0]*PRICES[0]
# Doing something like prob += 5 resets the problem objective
# Statements with operators are automatically interpreted as constraints
prob += pulp.lpSum([x[i] for i in names]) == 2.0
# Print problem before solving
print(prob)
# Compute solution
prob.solve()
# Display the solution
print("Print problem statement")
printProb(prob)
print(prob.variables()[0].name, prob.variables()[0].value)
print(prob.variables())
# a = ((i, j) for i in range(100) for j in range(50))
# print(a)
# print(type(a))
print(type(x))
print(x[0].varValue)
print(type(value(x[0])))
