def bell(a, b, c, d, total):
    """
    Prints combinations of a, b, c, and d that add up to total.

    Function written to solve a puzzle in Blue Toad Mystery Files. There are
    four bells, marked with four numbers. In order to sound the alarm
    correctly, the numbers must add up to 100. The bells are
    allowed to be rung more than once in order to reach 100.
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
        for b in num_list:
            tot=[a,b]
            if (tot_num_list.count(tot) == 0):
                tot_num_list.append(tot)
            for c in num_list:
                tot=[a,b,c]
                tot.sort()
                if (tot_num_list.count(tot) == 0):
                    tot_num_list.append(tot)
                for d in num_list:
                    tot=[a,b,c,d]
                    tot.sort()
                    if (tot_num_list.count(tot) == 0):
                        tot_num_list.append(tot)
                    for e in num_list:
                        tot=[a,b,c,d,e]
                        tot.sort()
                        if (tot_num_list.count(tot) == 0):
                            tot_num_list.append(tot)
                        for f in num_list:
                            tot=[a,b,c,d,e,f]
                            tot.sort()
                            if (tot_num_list.count(tot) == 0):
                                tot_num_list.append(tot)

    print "Sets of numbers that equal "+str(total)+":"
    for a in tot_num_list:
        sum_list=a
        for a in sum_list:
            sum_holder=sum_holder+a
        if sum_holder == total:
            print (sum_list)
            sum_holder = 0
        else:
            sum_holder = 0
