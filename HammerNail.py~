def bell():
    """
    Function written to solve a puzzle in Blue Toad Mystery Files. There are
    four bells, marked with four numbers. In order to sound the alarm
    correctly, the numbers must add up to 100. The bells are
    allowed to be rung more than once in order to reach 100.

    If I were to reuse this, I would give bell arguments- bell(a, b,
    c, d, e, f, g, h, sum) and make b-h optional. That way the code
    would be useful for more than just one exact instance. I would
    also rewrite this a bit so that it would go through and look at
    one ring, two rings, three rings, etc, instead of just the five
    that I figured out it must be through trial and error.

    The if statements under "for f" in the num_list loop are to keep
    duplicates from entering the list, which speeds up computation
    time considerably.
    """
    num_list=[16,17,24,39]
    sixnum=[]
    
    for a in num_list:
        for b in num_list:
            for c in num_list:
                for d in num_list:
                    for e in num_list:
                        for f in num_list:
                            six=[a,b,c,d,e,f]
                            six.sort()
                            if (sixnum.count(six) == 0):
                                sixnum.append(six)
    for a in sixnum:
        sum = a[0]+a[1]+a[2]+a[3]+a[4]+a[5]
        if sum == 100:
            print a, sum
            print "SUCCESS!"
            print "****************************************"       
        

bell()
