import pandas as pd
import re,string
import numpy as np
import csv
from numpy.core._multiarray_umath import positive
def uni_to_clean_str(x):
                
                lowercased_str = x.lower()
                lowercased_str = lowercased_str.replace('--',' ')
                clean_str = lowercased_str.translate(string.punctuation) 
                return clean_str
def lower_case(lst):
    lst=np.vectorize(uni_to_clean_str)(lst)
    return lst
positive_List = [line.rstrip('\n') for line in open('positive-words.txt')]
negative_list=[line.rstrip('\n') for line in open('negative-words.txt')]
df=pd.read_csv('tweet_cleaned.csv')
df['Text']=lower_case(df['Text'])
txt_lst=df['Text'].tolist()
Bow_list=[]
with open('sentiment.csv', 'w') as f:
    writer = csv.writer(f)
    writer.writerow(['Tweet','message','match','polarity'])
for i in range(len(txt_lst)):
    txt_split=txt_lst[i].split()
    count = [txt_split.count(wrd) for wrd in txt_split]
    bow=dict(list(zip(txt_split,count)))
    Bow_list.append(bow)

def highest_frequency(key,value):
    dict_match={}
    if dict_match.get(key) is None:
        dict_match.update({key: value})
    return [k for k,v in dict_match.items() if v==max(dict_match.values())][0]
for i in range(len(Bow_list)):
    with open('sentiment.csv', 'a') as f:
        writer = csv.writer(f)
        pos_cnt=0
        neg_cnt=0
        neutral=0
        match=""
        postive=""
        negative=""
        for key,value in Bow_list[i].items():
            if key in positive_List:
                pos_cnt=pos_cnt+value+1
                postive=highest_frequency(key, value)
            elif key in negative_list:
                neg_cnt=neg_cnt+value+1
                negative=highest_frequency(key, value)
            else:
                neutral=neutral+1
        if pos_cnt>neg_cnt:
            polarity="positive"
            match=postive
        elif pos_cnt<neg_cnt:
            polarity="negative"
            match=negative
        else:
            polarity="neutral"
            match="None"
        writer.writerow([i+1,txt_lst[i],match,polarity])


    
        

    
    
    
            
    
    
        
 

         
    


