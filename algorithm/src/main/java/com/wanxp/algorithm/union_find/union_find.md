### 查并集合
#### 并查集：
    即不相交集合。一种简单的用途广泛的集合，实现了较快的合并和判断元素所在集合的操作，应用很多，如其求无向图的连通分量个数等。最完美的应用当属：实现Kruskar算法求最小生成树。 
#### 实现:
   每个集合用一棵“有根树”表示；   
   定义数组  int[] father   
             int[] rank    
   father[i]=i,则i表示本集合且i是集合对应的树的根   
   father[i]=j,则表示j是i的父节点   
   rank[i]代表集合i的秩(比如子孙的多少或树的高度等），用于合并集合，秩小的合并到秩大的。  
#### 并查集的精髓（即它的三种操作）
##### Make_Set() 把每一个元素初始化为一个集合 
    初始化后每一个元素的父亲节点是它本身。 
```java
    public void Make_Set() { 
        for(int i=0;i<father.length;i++){ 
            father[i] = i; //根据实际情况指定的父节点可变化 
            rank[i] = 0; //根据实际情况初始化秩也有所变化 
        }  
    }
```
##### Find_Set(x) 查找一个元素所在的集合 
    查找一个元素所在的集合，其精髓是找到这个元素所在集合的祖先！   
判断两个元素是否属于同一集合，只要看他们所在集合的祖先是否相同即可。   
合并两个集合，也是使一个集合的祖先成为另一个集合的祖先   
###### 递归实现找祖先 
```java
int Find_Set(int x){ 
    if (x != father[x]){ 
        father[x] = Find_Set(father[x]);//这个回溯时的压缩路径是精华,将查找路径的所有节点都指向根节点 
    } 
    return father[x]; 
} 
```
###### 循环实现找祖先 
```java
int Find_Set(int x) 
{ 
    int root=x; 
    while(father[root]!=root) 
        root=father[root]; 
    return root; 
} 
```
###### 循环实现找祖先，路径压缩 
    每次查找的时候，如果路径较长，则修改信息，以便下次查找的时候速度更快 
第一步，找到根节点；第二步，修改查找路径上的所有节点，将它们都指向根结点 
```java
int Find_Set(int x){ 
    int k,root; 
    root=x; 
    while(root!=father[root])  //循环找x的根
        root=father[root]; 
        while(x!=root)//本循环修改查找路径中的所有节点使其指向根节点---压缩 
        { 
            k=father[x]; 
            father[x]=root;//指向根节点 
            x=k; 
        } 
    return x; 
} 
```
##### Union(x,y) 合并x,y所在的两个集合 
    合并两个不相交集合操作很简单： 
利用Find_Set找到其中两个集合的祖先，将一个集合的祖先指向另一个集合的祖先。
```java
void Union(int x, int y){//合并集合的条件要试具体问题而定,这里将秩小的合并到秩大的。 
    x = Find_Set(x); 
    y = Find_Set(y); 
    if (x == y) return; 
    if (rank[x] > rank[y]) {   
        father[y] = x;   
    } else if (rank[x] < rank[y]) {   
        father[x] = y;   
    } else {   
        rank[y]++;   
        father[x] =y;
    }
}
```
#### 并查集的优化 
##### Find_Set(x)时路径压缩 
    寻找祖先时我们一般采用递归查找，但是当元素很多亦或是整棵树变为一条链时，每次Find_Set(x)都是O(n)的复杂度，有没有办法减小这个复杂度呢？ 
答案是肯定的，这就是路径压缩，即当我们经过"递推"找到祖先节点后，"回溯"的时候顺便将它的子孙节点都直接指向祖先， 
这样以后再次Find_Set(x)时复杂度就变成O(1)了
##### Union(x,y)时按秩合并 
    即合并的时候将元素少的集合合并到元素多的集合中，这样合并之后树的高度会相对较小。         
#### 实例
##### 实例一：判断亲戚关系. 
    若某个家族人员过于庞大，要判断两个是否是亲戚，确实还很不容易，现在给出某个亲戚关系图，求任意给出的两个人是否具有亲戚关系。 
* 规定：x和y是亲戚，y和z是亲戚，那么x和z也是亲戚。如果x,y是亲戚，那么x的亲戚都是y的亲戚，y的亲戚也都是x的亲戚。 
    先输入10个人（编号从1-10）及7组亲戚关系，然后输入3组数据，问这三组数据是不是亲戚关系？ 
* 输入 
10 7 
2 4 
5 7 
1 3 
8 9 
1 2 
5 6 
2 3 
3 
3 4 
7 10 
8 9 

* 输出 
Yes 
No 
Yes 

* 分析：其实本题只是一个对分离集合（并查集）操作的问题。我们可以给每个人建立一个集合，集合的元素值有他自己，表示最开始时他不知道任何人是它的亲戚。以后每次给出一个亲戚关系a, b，则a和他的亲戚与b和他的亲戚就互为亲戚了，将a所在集合与b所在集合合并。 
最后我们得到3个集合{1,2,3,4}, {5,6,7}, {8,9}，于是判断两个人是否亲戚的问题就变成判断两个数是否在同一个集合中的问题。              
#### 实例二：迷宫联通数判断 
   上次Gardon的迷宫城堡小希玩了很久（见Problem B），现在她也想设计一个迷宫让Gardon来走。但是她设计迷宫的思路不一样，首先她认为所有的通道都应该是双向连通的，就是说如果有一个通道连通了房间A和B，那么既可以通过它从房间A走到房间B，也可以通过它从房间B走到房间A，为了提高难度，小希希望任意两个房间有且仅有一条路径可以相通（除非走了回头路）。小希现在把她的设计图给你，让你帮忙判断她的设计图是否符合她的设计思路。比如下面的例子，前两个是符合条件的，但是最后一个却有两种方法从5到达8。 
* 输入 
输入包含多组数据，每组数据是一个以0 0结尾的整数对列表，表示了一条通道连接的两个房间的编号。房间的编号至少为1，且不超过100000。每两组数据之间有一个空行。 
整个文件以两个-1结尾。 
* 输出 
对于输入的每一组数据，输出仅包括一行。如果该迷宫符合小希的思路，那么输出"Yes"，否则输出"No"。   
示例 输入   
6 8  5 3  5 2  6 4   
5 6  0 0   
8 1  7 3  6 2  8 9  7 5   
7 4  7 8  7 6  0 0   
3 8  6 8  6 4   
5 3  5 6  5 2  0 0    
-1 -1   
示例 输出   
Yes   
Yes   
No   
* 解题思路：题目意思是判断是不是连通无环的图,使用并查集合并所有顶点. 
1. 判断成环的时候，只要判断输入边的两个点。有一个共同的父节点，那么这两个点就成环。 
2. 判断连通的时候，只要判断根节点数为1即可。 
* 注意：当输入的这组数据只有 0 0 时，依然是满足条件的，即应输出 "Yes"。


##### 实例一解答
```java
import java.util.Scanner;  
   public class Main{  
     int[] father;  
     int[] rank;  
  
    public Main(){  
       }  
   
    public void go(){  
      Scanner in=new Scanner(System.in);  
       int n=in.nextInt();  
       int m=in.nextInt();  
       father=new int[n+1];  
       rank=new int[n+1];  
        Make_Set();  
       for(int i=1;i<=m;i++){  
           int a=in.nextInt();  
           int b=in.nextInt();  
           int x=Find_Set(a);  
           int y=Find_Set(b);  
           Union(x,y);  
       }  
       //for(int i=1;i<=n;i++)  
       //  System.out.print("father["+i+"]="+father[i]+"  ");  
       int k=in.nextInt();  
       for(int i=1;i<=k;i++){  
           int x=in.nextInt();  
           int y=in.nextInt();  
           if(Find_Set(x)==Find_Set(y)) System.out.println("Yes");  
           else  System.out.println("No");  
       }  
     }  
      
         
    private void Make_Set() {  
     for(int i=0;i<father.length;i++){  
       father[i] = i; //根据实际情况指定的父节点可变化  
       rank[i] = 0; //根据实际情况初始化秩也有所变化  
     }    
    }  
    
    private int Find_Set(int x){  
     if (x != father[x]){  
       father[x] = Find_Set(father[x]);//这个回溯时的压缩路径是精华,将查找路径的所有节点都指向根节点  
      }  
     return father[x];  
    }  
  
    void Union(int x, int y){  
      int f1 = Find_Set(x);  
      int f2 = Find_Set(y);  
       if(f1!=f2) father[f1]=f2;  
      
    }  
  
    
     public static void main(String args[]){  
        Main m=new Main();  
        m.go();  
     }  
  } 
```
##### 实例二解答
```java
import java.util.Scanner;  
import java.io.*;  
  
public class Main {  
    private final static int max = 100001;  
    private int[] f;  
    private int[] set;  
    private int[] height;  
    private int flag;  
  
        public Main(){  
           set = new int[max];  
           height = new int[max];  
           f = new int[max];  
           flag = 1;  
        }  
  
    // 初始化集合  
    private  void init() {  
        for (int i = 1; i < max; i++) {  
            set[i] = i;  
            f[i] = 0;  
            height[i] = 1;  
        }  
    }  
  
    // 查找x属于哪个集合,循环实现，防暴栈.  
    private  int find(int x) {  
        while (set[x] != x)  
            x = set[x];  
        return x;  
    }  
  
    // 合并集合  
    private  void merge(int a, int b) {  
        if (height[a] < height[b])  
            set[a] = b;  
        else if (height[a] > height[b])  
            set[b] = a;  
        else {  
            set[b] = a;  
            height[a]++;  
        }  
    }  
  
    public void go() {  
        Scanner in= new Scanner(System.in);  
        while (true) {  
            int a =in.nextInt();  
            int b = in.nextInt();  
            if (a == -1 && b == -1)break;  
            if (a == 0 && b == 0) {System.out.println("Yes");continue;}  
              
            init();  
              
            f[a] = f[b] = 1;//标记a,b已使用  
            flag=1;  
            a = find(a);  
            b = find(b);  
            if (a != b)  
                merge(a, b);//合并  
            else //存在环  
                flag = 0;  
              
            while (true) {  
                  
                a = in.nextInt();  
                b =in.nextInt();  
                if (a == 0 && b == 0)  
                    break;  
                a = find(a);  
                b = find(b);  
                if(a!=b)  
                    merge(a, b);  
                else //存在环  
                    flag = 0;  
                f[a] = f[b] = 1;  
            }  
            int k = 0;  
            for (int i = 1; i < max; i++) {//统计树根的数目  
                if (f[i]==1 && set[i] == i)  
                    k++;  
                if(k>1){flag = 0;break;}  
            }  
            if (flag==1)  
                System.out.println("Yes");  
            else  
                System.out.println("No");  
        }  
  
    }  
    public static void main(String args[]){  
        Main m=new Main();  
       m.go();  
    }  
  
} 
```
#### 参考 
[0]https://128kj.iteye.com/blog/1708897 :并查集入门精讲，实例2个（JAVA）
  