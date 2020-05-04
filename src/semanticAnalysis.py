import pandas as pd
import numpy as np
import re,string

def uni_to_clean_str(x):
                #converted = x.encode('utf-8')
                lowercased_str = x.lower()
                lowercased_str = lowercased_str.replace('--',' ')
                clean_str = lowercased_str.translate(string.punctuation) #Change 1
                return clean_str
def lower_case(lst):
    lst=np.vectorize(uni_to_clean_str)(lst)
    return lst
df=pd.read_csv('news_cleaned.csv')
df['title']=lower_case(df['title']).astype(str)
df.description=df.description.astype(str)
df['description']=lower_case(df['description']).astype(str)
df.content=df.content.astype(str)
df['content']=lower_case(df['content']).astype(str)

df2=df[['title','description','content']]
articles=['Article '+str(i) for i in range(1,len(df2.index)+1)]
art=pd.Series(articles)
df2.insert(loc=0, column='article', value=art)
df2=df2.set_index('article')
docs={}
docs=df2.to_dict(orient='index')
print(len(docs))
for key,value in docs.items():
    file_name=key+'.txt'
    with open(file_name, mode='w+', encoding='UTF-8') as f:
        f.write(str(value).replace('{','').replace('}',''))
    

