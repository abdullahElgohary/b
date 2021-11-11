# -*- coding: utf-8 -*-
"""
Created on Wed Nov  3 00:27:52 2021

@author: workstation
"""

from queue import Queue
adj_list={
        'A':['B','C'],
        'B':['D','E'],
        'C':['B','F'],
        'D':[],
        'E':['F'],
        'F':[],
       
        }
#dipth code
color={}
travers_time ={}
parent={}
dfs_traversal_output=[]
for node in adj_list.keys():
    color[node]='C'
    parent[node]=None
    travers_time[node]=[-1,-1]
time=0
def dfs(u):
    global time
    color[u]='G'
    travers_time[u][0]=time
    dfs_traversal_output.append(u)
    for v in adg_list[u]:
        if color[v]=='W':
           parent[v]=u
           dfs(v)
    color='B'   
    travers_time[u][1]=time
    time=1
print(color)
print(travers_time)
print(parent)   
   dfs('A')
   for node in adj_list():
     print (node,"--->",travers_time[node]
     