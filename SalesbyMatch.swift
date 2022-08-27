/*There is a large pile of socks that must be paired by color. Given an array of integers representing the color of each sock, determine how many pairs of socks with matching colors there are.

Example

There is one pair of color and one of color . There are three odd socks left, one of each color. The number of pairs is

.

Function Description

Complete the sockMerchant function in the editor below.

sockMerchant has the following parameter(s):

    int n: the number of socks in the pile
    int ar[n]: the colors of each sock

Returns

    int: the number of pairs

Input Format

The first line contains an integer
, the number of socks represented in .
The second line contains space-separated integers,

, the colors of the socks in the pile.

Constraints

where

Sample Input

STDIN                       Function
-----                       --------
9                           n = 9
10 20 20 10 10 30 50 10 20  ar = [10, 20, 20, 10, 10, 30, 50, 10, 20]

Sample Output

3

Explanation

sock.png

There are three pairs of socks.
2只袜子颜色配对
数组中数字是颜色
袜子不分左右脚
求一个能配对几幅

*/
funcsockMerchant(n: Int, ar: [Int]) -> Int{
    letarr = ar.sorted()
    print(arr)
    varcount = 0
    varindex = 1
    varlastValue: Int? = arr[0]
    whileindex < n {
        iflastValue != nil{//左袜子已经有 配对右边
            print("A", index, arr[index])
            ifarr[index] == lastValue {//右边等于左袜子 配对成功
                print("B", index, arr[index])
                count += 1
                lastValue = nil
            } else {//右边不等于左 右边替换左成为等待配对
                print("C", index, arr[index])
                lastValue = arr[index]
            }
        } else{//新配对保存左袜子
            print("D", index, arr[index])
            lastValue = arr[index]
        }
        index += 1
    }
    returncount
}
sockMerchant(n: 9, ar: [10, 20,20, 10,10, 30,50, 10, 20])
