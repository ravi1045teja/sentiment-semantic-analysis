
import math
import csv


keywords =  ['canada', 'university', 'dalhousie university', 'halifax', 'canada education']
df_canada=0
df_uni=0
df_du=0
df_hfx=0
df_ce=0
tot_words_canada_Article=[]
can=[]
ratios=[]
canada_articles=[]
total_documents=496
#finding the count of documents per each term
for i in range(1,496):
    filename='Article '+str(i)+'.txt'
    with open(filename,'r') as r:
        data = r.read()
        if data.find('canada')>0:
            canada_articles.append(filename)
            df_canada+=1
            can_frequency=data.count('canada')
            total_Count=len(data.split())
            can.append(can_frequency)
            tot_words_canada_Article.append(total_Count)
            ratios.append(can_frequency/total_Count)
        if data.find('university')>0:
            df_uni+=1
        if data.find('dalhousie university')>0:
            df_du+=1
        if data.find('halifax')>0:
            df_hfx+=1
        if data.find('canada education')>0:
            df_ce+=1
documen_term=[df_canada,df_uni,df_du,df_hfx,df_ce]


with open('tf_idf.csv','w') as semantic:
    writer=csv.writer(semantic)
    writer.writerow(['Total number of documents',total_documents])
    writer.writerow(['Search query','Document Containing Term (df)','Total documents(N)/number of documents term  appeared (df)','Log10(N/df)'])
   
    writer.writerow(['Canada',df_canada,str(round(total_documents/df_canada,2)),str(round(math.log10(total_documents/df_canada),2))])
    writer.writerow(['university',df_uni,str(round(total_documents/df_uni,2)),str(round(math.log10(total_documents/df_uni),2))])
    writer.writerow(['dalhousie university',df_du,str(round(total_documents/df_du,2)),str(round(math.log10(total_documents/df_du),2))])
    writer.writerow(['halifax',df_hfx,str(round(total_documents/df_hfx,2)),str(round(math.log10(total_documents/df_hfx),2))])
    writer.writerow(['canada education',df_ce,str(round(total_documents/df_ce,2)),str(round(math.log10(total_documents/df_ce),2))])



with open('canada_frequency.csv','w') as b:
    writer=csv.writer(b)
    writer.writerow(['Term','Canada'])
    writer.writerow(['Canada appeared in'+str(len(canada_articles))+' documents','Total words(m)', 'frequency (f)'])
    for k in range(len(canada_articles)):
        writer.writerow([canada_articles[k],tot_words_canada_Article[k],can[k]])

#prinitng the article which has highest frequency for canada key word
article_highest=canada_articles[ratios.index(max(ratios))]
with open(article_highest,'r') as higher:
    art=higher.read()
    print(article_highest+'\n')
    print(art)

    
        
        
    


        
        
        
        
        
            
            
            
            
            
                
                
            
    
    
    
        
    
    
    

        
            
        
        
        