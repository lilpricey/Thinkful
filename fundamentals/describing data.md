## Describing Data 3/29/18

### 1.
Greg was 14, Marcia was 12, Peter was 11, Jan was 10, Bobby was 8, and Cindy was 6 when they started playing the Brady kids on The Brady Bunch. Cousin Oliver was 8 years old when he joined the show. What are the mean, median, and mode of the kids' ages when they first appeared on the show? What are the variance, standard deviation, and standard error?

14, 12, 11, 10, 8, 8, 6 
n = 7
v = sum((x - mean) ** 2) / (n)
 17.14, 4.58, 1.3, .02, 3.46, 3.46, 14.9
 44.86 / 7 
 2.53 / 2.65
 #### mean = 9.86
 #### median = 10
 #### mode = 8
 #### variance = 6.41
 #### std = 2.53
 #### se = .95
 ```
 print(np.mean(ages))
print(statistics.median(ages))
print(mode(ages))
print(np.var(ages))
print(np.std(ages))
print(np.std(ages) / np.sqrt(len(ages)))

 9.85714285714
10
[8]
6.40816326531
2.53143502095
0.956792503652
```

 
### 2.
Using these estimates, if you had to choose only one estimate of central tendency and one estimate of variance to describe the data, which would you pick and why?
 
 mean and standard deviation. The mean is very close to the median, but doesn't ignore the 8 that slightly pulls it down.
 
 ### 3.
 Next, Cindy has a birthday. Update your estimates- what changed, and what didn't?
14, 12, 11, 10, 8, 8, 7 = 70

#### mean = 10
#### median = 10
#### mode = 8

16, 4, 1, 0, 4, 4, 9
38 / 7

#### variance = 5.43
#### std = 2.33
#### se = .88
 
The mean changed, also the estimates of variance changed.
```
ages = [14, 12, 11, 10, 8, 8, 7] 

print(mean, median, ages_mode)
print(np.mean(ages))
print(statistics.median(ages))
print(mode(ages))
print(np.var(ages))
print(np.std(ages))
print(np.std(ages) / np.sqrt(len(ages)))
10.0
10
[8]
5.42857142857
2.32992949004
0.880630571853
```


### 4.
Nobody likes Cousin Oliver. Maybe the network should have used an even younger actor. Replace Cousin Oliver with 1-year-old Jessica, then recalculate again. Does this change your choice of central tendency or variance estimation methods?

14, 12, 11, 10, 8, 7, 1
 #### mean = 9
#### median = 10
#### mode = None

25, 9, 4, 1, 1, 4, 64
108 / 7
 
 #### variance = 15.43
#### std = 3.93
#### se = 1.48

```
ages = [14, 12, 11, 10, 8, 7, 1] 

print(np.mean(ages))
print(statistics.median(ages))
print(mode(ages))
print(np.var(ages))
print(np.std(ages))
print(np.std(ages) / np.sqrt(len(ages)))
9.0
10
[1, 7, 8, 10, 11, 12, 14]
15.4285714286
3.92792202425
1.48461497792
```


After this change to the data, median becomes a better estimate on central tendency because the outlying 1 has a strong influence on the mean. 

### 5.
On the 50th anniversary of The Brady Bunch, four different magazines asked their readers whether they were fans of the show. The answers were: TV Guide 20% fans Entertainment Weekly 23% fans Pop Culture Today 17% fans SciPhi Phanatic 5% fans

Based on these numbers, what percentage of adult Americans would you estimate were Brady Bunch fans on the 50th anniversary of the show?
20, 23, 17, 5 

### mean = 16.25

14.06, 45.56, .56, 126.56
186.74 / 3
### variance = 62.25
### std = 7.89
### se = 3.95 

### 16.25% are fans with a standard error of 3.95%. In other words 20.2% - 12.3% is the predicted range of people who are fans.
