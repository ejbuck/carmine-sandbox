def bell(a, b, c, d, total):
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
    tot_num_list=[]
    sum_list=[]
    sum_holder=0
    compare_tot=0
    
    for a in num_list:
        tot=[a]
        if (tot_num_list.count(tot) == 0):
            tot_num_list.append(tot)
            print ("A", tot)
        for b in num_list:
            tot=[a,b]
            if (tot_num_list.count(tot) == 0):
                tot_num_list.append(tot)
                print ("B", tot)
            for c in num_list:
                tot=[a,b,c]
                tot.sort()
                if (tot_num_list.count(tot) == 0):
                    tot_num_list.append(tot)
                    print ("C", tot)
                for d in num_list:
                    tot=[a,b,c,d]
                    tot.sort()
                    if (tot_num_list.count(tot) == 0):
                        tot_num_list.append(tot)
                        print ("D", tot)
                    for e in num_list:
                        tot=[a,b,c,d,e]
                        tot.sort()
                        if (tot_num_list.count(tot) == 0):
                            tot_num_list.append(tot)
                            print ("E", tot)
                        for f in num_list:
                            tot=[a,b,c,d,e,f]
                            tot.sort()
                            if (tot_num_list.count(tot) == 0):
                                tot_num_list.append(tot)
                                print ("F", tot)

    for a in tot_num_list:
        sum_list=a
        for a in sum_list:
            sum_holder=sum_holder+a
        if sum_holder == total:
            print (sum_list, sum_holder)
            print "SUCCESS!"
            print "*********************************************************"
            sum_holder = 0
        else:
            print (sum_list, sum_holder)
            sum_holder = 0
        
bell(5,10,15,20,100)
