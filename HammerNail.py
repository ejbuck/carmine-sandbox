def bell(a, b, c, d, e, f, total):
    """
    Add together any of a, b, c, & d any number of times to equal total.

    Returns correct combination of a, b, c, & d that equals total.

    Function written to solve a puzzle in Blue Toad Mystery Files. There are
    four bells, marked with four numbers. In order to sound the alarm
    correctly, the numbers must add up to 100. The bells are
    allowed to be rung more than once in order to reach 100.

    If I were to reuse this, I would give bell arguments- bell(a, b,
    c, d, e, f, g, h, total) and make b-h optional. That way the code
    would be useful for more than just one exact instance. I would
    also rewrite this a bit so that it would go through and look at
    one ring, two rings, three rings, etc, instead of just the five
    that I figured out it must be through trial and error.

    The if statements under "for f" in the num_list loop are to keep
    duplicates from entering the list, which speeds up computation
    time considerably.
    """
    num_list=[a,b,c,d]
    totnum=[]
    
    for a in num_list:
        for b in num_list:
            for c in num_list:
                for d in num_list:
                    for e in num_list:
                        for f in num_list:
                            tot=[a,b,c,d,e,f]
                            tot.sort()
                            if (totnum.count(tot) == 0):
                                totnum.append(tot)
    for a in totnum:
        tot = a[0]+a[1]+a[2]+a[3]+a[4]+a[5]
        if tot == total:
            print a, tot
            print "SUCCESS!"
            print "*********************************************************"
        elif a[0] == a[1] == a[2] == a[3] == a[4] == a[5] and a[0] == f:
            print ""
            print "========================================================="
            print "Ending run."
        else:
            print a, tot
            print "Failure."
        

bell(5,10,15,20,25,30,100)