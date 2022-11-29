// hurtSound sound made by wav2c

const unsigned int hurtSound_sampleRate = 11025;
const unsigned int hurtSound_length = 2760;

const signed char hurtSound_data[] = {
-1, 0, -1, 0, -1, 0, -1, 0, -3, -21, -22, -22, -21, -22, -19, -34, -44, -44, -33, -18, -18, 
-25, -42, -42, -24, 7, 3, 4, 5, -5, -19, -37, -40, -40, -21, -15, -15, -16, -14, -16, -13, 
-17, -11, -26, -35, -19, -7, 8, 9, 3, -32, -38, -33, -15, -11, -14, -11, -13, -11, -12, -11, 
-12, -11, -11, -12, -3, 13, 9, 11, 10, 6, -18, -34, -34, -30, -10, -10, -9, -10, -9, -10, 
-27, -34, -30, -32, -30, -16, 6, 15, 13, 15, 0, -9, -7, -8, -7, -7, -8, -6, -10, -29, 
-30, -28, -30, -27, -31, -22, -7, -6, -7, -5, -9, -26, -28, -27, -19, 1, -6, 0, -6, 0, 
-9, -25, -27, -23, -3, -3, 10, 1, -5, -4, 15, 11, -4, -15, -28, -23, -25, -23, -24, -24, 
-22, -25, -16, 1, 2, -4, -20, -2, 0, -2, 1, -2, -16, -24, -19, -24, -18, -24, -4, 2, 
5, -9, -21, -20, -13, 7, 0, 14, 26, 25, 24, 26, 18, 2, 3, 2, 2, 3, 2, 4, 
-14, -22, -19, -21, -18, -22, -9, 6, 19, 27, 23, 26, 20, -13, -22, -18, -21, -18, -20, -18, 
-20, -17, -19, -17, -20, -2, 7, 5, 6, 5, 6, 5, 6, 5, 6, 4, 23, 26, 28, 13, 
1, 4, 3, -1, -20, -17, -19, -17, -18, -17, -17, -17, -17, -16, -16, -16, -16, -16, 3, 9, 
6, 9, 4, -15, -15, -16, -9, 18, 30, 29, 29, 30, 12, 4, -9, -19, -12, 4, 9, 5, 
10, -2, -16, -16, -15, -16, -14, -16, -14, -16, -12, 5, 11, 7, 11, 1, -14, 4, 8, 6, 
8, 7, 7, 8, 2, 3, 12, 6, 11, 3, -14, -15, -14, -14, -14, -14, -14, -13, -14, -12, 
-14, -12, -14, -8, 9, 12, 9, 21, 33, 31, 31, 31, 31, 30, 30, 13, 7, 9, 7, 9, 
7, 9, 8, 8, 8, 8, 8, 8, 8, 7, 8, 6, -12, -17, -14, -17, -8, 10, 28, 29, 
30, 28, 30, 27, 30, 19, -14, -18, -15, -18, -11, 7, 7, 7, 7, 6, 7, 6, 7, 7, 
-10, -18, -15, -17, -15, -17, -14, -17, -5, 17, 30, 29, 29, 30, 13, 3, -12, -18, -15, -16, 
-15, -16, -15, -15, -15, -15, -14, -14, -14, -14, -14, -13, -14, -13, -13, -12, -13, -12, -13, -12, 
-13, -11, -12, -10, 9, 15, 32, 33, 32, 32, 31, 32, 31, 31, 30, 29, -1, -17, -13, -15, 
-13, -16, -8, 10, 9, 9, 9, 9, 9, 9, 9, 9, 9, 8, 10, -6, -17, -13, -15, -12, 
-16, -3, 11, 9, 9, 14, 33, 25, 7, 7, 7, 7, 8, 6, 28, 24, 6, 9, 7, 9, 
7, 8, 7, 8, 6, 9, -1, -17, -15, -16, -15, -15, -15, -15, -14, -14, -14, -14, -14, -13, 
-14, -13, -14, -12, -15, -3, 10, 8, 9, 9, 7, 16, 34, 29, 34, 20, 8, 7, -14, -14, 
-14, -14, -13, -14, 5, 11, 9, 10, 9, 10, 9, 10, 9, 10, 8, 11, 2, -16, -13, -14, 
-13, -14, -11, 10, 9, 23, 33, 29, 31, 29, 31, 29, 30, 28, 30, 14, 5, 8, 6, 7, 
6, 7, 6, 6, 6, 6, 7, 4, -15, -17, -16, -17, -15, -17, 1, 9, 6, 8, 6, 9, 
-4, -18, -15, -17, -14, -17, -3, 9, 5, 8, 4, 20, 30, 28, 28, 29, 27, 30, 12, -21, 
-10, 5, 7, 5, 8, -6, -19, -16, -17, -17, -16, -18, -5, 9, 6, 7, 7, 6, 9, -4, 
-18, -15, -16, -15, 1, 11, -4, -17, -15, -15, -15, 2, 10, 7, 10, 5, 4, 6, 22, 33, 
18, 5, 6, 6, 5, 21, 31, 20, -6, -18, -15, -18, -1, 10, -2, -18, -13, 5, 8, 6, 
9, -1, -18, -13, 5, 9, -7, -19, -7, 8, 7, 8, 8, 7, 9, 1, -17, -13, 4, 9, 
6, 10, 0, -16, -15, 9, 31, 27, 30, 27, 29, 26, 9, 1, 18, 29, 26, 27, 10, 3, 
6, 3, 7, -1, -18, -19, -17, -20, -6, 7, 4, 6, 5, -12, -21, -5, 7, 5, 6, 5, 
-12, -20, -15, -19, -12, 5, 7, 5, 9, -5, -18, -16, -17, -16, -17, -6, 17, 30, 25, 6, 
4, 21, 31, 17, 2, 7, 27, 24, 4, 7, -4, -20, -14, 4, 7, -10, -21, -8, 7, 4, 
-16, -16, 18, 31, 18, 3, 3, 5, 2, 19, 28, 25, 26, 25, 26, 25, 25, 25, 24, 24, 
24, 24, 23, 23, 23, 23, 22, 22, 22, 22, 21, 21, 21, 21, 21, 20, 20, 20, 20, 19, 
19, 19, 19, 19, 18, 18, 18, 18, 18, 17, 17, 17, 17, 17, 16, 16, 16, 16, 16, 16, 
15, 15, 15, 15, 15, 15, 14, 14, 14, 14, 14, 14, 13, 13, 13, 13, 13, 13, 12, 12, 
12, 12, 12, 12, 12, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 10, 10, 10, 10, 10, 
9, 9, 9, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8, 8, 8, 8, 7, 7, 
7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 5, 
5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 4, 4, 
4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 
3, 2, 3, 2, 2, 2, 2, 2, -2, -21, -35, -31, -14, -6, -20, -33, -30, -11, -8, -7, 
-14, -31, -9, 5, -6, -21, -16, 1, -8, -6, -14, -29, -8, -6, -8, -5, -9, -3, -28, -15, 
-12, -30, 2, 7, 7, -1, -19, -24, -32, -26, -31, -23, -6, -23, -29, -26, -27, -27, -5, -18, 
-21, 5, 7, -9, -16, -11, -20, -26, -26, -10, 0, -3, -1, -2, -16, -29, -18, -2, -24, -7, 
-10, -11, 16, 8, 15, -4, -26, -22, -26, -3, -13, -19, 3, -2, 2, -12, -26, -18, -2, -16, 
-19, 2, 9, -8, 6, 8, -12, -18, -1, 3, -2, 5, -6, -19, -27, -3, -9, -21, -23, 6, 
-2, 0, 12, -10, 8, -15, -23, -15, 2, 3, -13, -24, -14, 4, 1, 5, -10, -17, 6, 13, 
0, -12, 0, 13, 1, 5, -11, -16, 6, 1, 4, 2, 3, 1, -21, 1, -11, -16, 15, 14, 
17, 1, -11, -16, -23, -17, -24, -8, -1, -19, -21, -17, -21, -13, 3, -15, -6, 14, 11, -6, 
-7, -5, -13, -20, -16, 1, 8, 2, 17, 10, -15, -22, -4, -1, -18, -19, -13, 5, 7, 3, 
-15, -19, -16, 1, 8, 5, 7, 5, 6, 6, 4, 13, 8, -8, -4, -6, -6, -4, -8, -17, 
-18, -13, 5, 7, 4, -14, -18, -16, 1, 9, 5, 8, 5, 7, 6, 6, 7, -4, -19, -16, 
-15, -2, -6, 1, 19, 19, 16, -5, -16, -17, -17, -16, -17, 2, 8, 8, -8, -18, -16, -5, 
11, 5, 9, 5, 10, -1, -17, -16, -12, 10, 19, 20, 19, 19, 19, 18, 19, 8, 5, 5, 
7, -9, -20, -16, -18, -15, -19, -7, 8, 7, 2, -19, -15, -18, -15, -17, -14, 5, 8, 18, 
1, -4, -4, 13, 20, 21, -2, -19, -16, -6, 10, 6, 1, -19, -14, -17, -14, -17, -12, 7, 
8, 8, 8, 8, 8, -10, -17, -14, -8, 0, -6, 11, 21, 20, 20, 14, 5, 9, 5, 9, 
1, -16, -17, -13, 6, 8, 7, 8, 7, 8, -11, -18, -15, -17, -14, -17, -3, 17, 20, 19, 
20, 19, 20, 19, 17, 1, -16, -17, -14, 5, 7, 6, 7, 6, 7, 6, 7, 6, 7, 6, 
6, 6, 6, 6, 6, 6, 6, 6, 5, 6, 5, 14, 18, 17, 17, 17, 17, 17, 16, 16, 
15, 3, 5, -9, -22, -18, -20, -18, -20, -18, -19, -17, -19, -17, -19, -15, 4, 6, 5, 6, 
5, 6, 5, 6, 5, 6, 4, 8, -7, -17, -4, -6, -4, -6, -5, -6, -4, -6, -4, -12, 
-17, 5, 6, 6, 6, 6, 6, 6, 6, 5, 6, 5, 6, 5, 5, 5, 5, 5, 5, 5, 
5, 5, 5, 5, 5, 4, 5, 4, 13, 18, 16, 17, 16, 16, 15, 16, 15, 16, -6, -22, 
-19, -20, -19, -20, -19, -19, -19, -19, -18, -18, -18, -18, -18, -18, -17, -17, -17, -17, -17, -17, 
-16, -16, -16, -16, -15, -16, -13, -3, -3, -3, -3, -3, -3, -2, -3, -2, -8, -16, -14, -15, 
-14, -15, -14, -14, -13, -14, -13, -13, -13, -13, -13, -13, -12, -12, -12, -12, -12, -12, -12, -11, 
-13, 6, 13, 11, 11, 18, 25, 22, 24, 22, 23, 21, 24, 16, -3, -12, -14, -13, -14, -13, 
-13, -13, -13, -13, -12, -12, -12, -12, -12, -12, -12, -12, -11, -11, -11, -11, -11, -11, -10, -11, 
-10, -10, -10, -10, -9, 10, 14, 12, 14, 12, 14, 6, 1, 2, 1, 3, 0, 11, 27, 23, 
25, 23, 25, 16, 10, 11, 10, 11, 10, 10, -9, -14, -12, -13, -12, -13, -12, -12, -12, -12, 
-11, -12, -11, -11, -11, -11, -11, -11, -11, -10, -10, -10, -10, -10, -10, -9, -10, -9, -11, -5, 
2, 16, 28, 24, 26, 24, 26, 24, 25, 23, 25, 21, 11, 11, 11, 11, 11, 11, 10, 10, 
10, 10, 10, 10, 9, 12, -3, -16, -12, -14, -12, -13, -12, -13, -12, -13, -12, -13, -10, 10, 
11, 11, 11, 10, 11, -7, -14, -11, -3, 2, -2, 12, 25, 22, 24, 21, 24, 16, -3, 0, 
-11, -14, -13, -12, 8, 10, 10, 10, 9, 10, 9, 10, 9, 9, 9, 9, 8, 9, 8, 9, 
7, 10, 2, -16, -14, -15, -14, -14, -14, -14, -14, -14, -14, -13, -13, -14, -8, 1, -2, 1, 
-3, 11, 19, 7, 12, 8, 12, 4, -13, -14, -12, -15, -1, 12, 9, 10, 9, 10, 9, 10, 
9, 10, 9, 10, 8, 11, -1, -16, -13, -14, -14, -13, -14, -13, -14, -10, 8, 11, 8, 12, 
1, -14, -13, -13, -14, -10, -1, 0, -1, 1, 19, 24, 20, 25, 14, -1, -3, 0, -4, 13, 
15, 8, 9, 9, 9, 9, 8, 10, 3, -15, -15, -14, -16, -3, 11, 8, 9, 8, 9, 8, 
9, 8, 8, 8, 8, 8, 8, 8, 7, 8, 7, 9, -9, -17, -15, -16, -15, -15, -15, -14, 
-17, -6, 9, 13, 21, 21, 7, -5, -2, -3, -2, -3, -3, -2, -4, 3, 21, 20, 8, 9, 
-5, -18, -14, -16, -15, 3, 10, 7, 10, 3, -15, -16, -14, -17, -4, 10, 8, 8, 9, -9, 
-16, -14, -15, -15, -14, -15, -13, -16, -5, 11, 9, 9, 9, 9, 9, 9, 9, 7, -13, -15, 
-15, -7, 0, -2, -1, -1, -3, 12, 24, 20, 22, 20, 21, 19, 21, 17, 8, 7, 8, 6, 
9, -5, -18, -15, -16, -15, 2, 9, 6, 8, 7, 8, 7, 6, -15, -16, -15, -16, -14, -17, 
2, 9, 8, 7, 8, 7, 9, 6, 10, -2, -16, -17, -10, 8, 7, 7, 8, 7, 8, 7, 
7, 7, 7, 8, 6, 16, 18, 21, 5, -5, -6, 6, 20, 19, 11, -6, -5, -1, 19, 18, 
17, 18, 8, 4, 5, 4, 5, -13, -20, -17, -19, -17, -18, -17, -18, -17, -17, -17, -16, -17, 
-16, -17, -11, 7, 8, 5, -14, -17, -15, -16, -15, -16, -14, -16, -13, -16, -12, -17, -1, 9, 
10, 0, -16, -14, -9, 11, 8, 10, 8, 9, 7, -13, -13, -2, -2, -2, -2, -2, -1, -2, 
-1, -3, -1, -3, 0, -4, 7, 22, 21, 18, 8, 8, 8, 8, 8, 8, 8, 7, 8, -10, 
-17, -14, -17, -13, -18, 0, 8, 11, -3, -15, -16, -7, 9, 10, 3, -14, -15, -12, 7, 9, 
8, 9, 8, 9, 8, 8, 9, -7, -17, -14, -15, -14, -14, -15, -13, -16, -6, 9, 11, 4, 
-8, -1, 0, 20, 22, 21, 21, 20, 20, 8, 8, 9, -6, -18, -13, -17, -12, 4, 11, -7, 
-16, -14, -15, -13, 5, 11, -5, -17, -8, 10, 8, 9, 9, -3, -18, -7, 8, 9, 8, 9, 
8, 9, 8, 8, 8, -10, -17, -13, -16, -9, 9, 9, -10, -16, -13, -16, -9, 9, 9, -9, 
-17, -3, 12, 4, -13, -15, 7, 25, 10, -3, -1, -2, -2, 15, 24, 19, 23, 16, -1, -4, 
-1, -5, 8, 21, 20, 19, 8, 6, 9, -1, -18, -12, 5, 8, 6, 9, -2, -17, -15, -16, 
-16, 0, 10, 6, 8, 7, 8, 8, -6, -20, -7, 8, 8, 7, 8, 7, 7, 7, 7, 7, 
6, 8, -6, -20, -9, 8, 6, -13, -19, -2, 9, 6, 7, 7, 6, 9, -6, -18, -15, -16, 
-16, -15, -17, -11, -3, -3, -3, -2, 15, 24, 7, -4, -3, -3, -4, -2, -4, -2, -5, 2, 
20, 20, 1, -18, -4, 9, 7, 7, 7, -10, -17, -15, -16, -15, -15, -15, -15, -15, -14, -15, 
-11, 8, 9, 8, 9, 8, 9, 8, 8, 9, -8, -17, -13, -16, -11, 8, 0, -18, 10, 0, 
-15, 3, 11, 7, 11, 4, -13, -15, -13, -16, -5, 12, -12, -8, 10, 9, 8, 11, -5, -15, 
-15, -5, 11, -11, -2, -2, 15, 20, -6, 15, 20, 23, 8, -3, 18, 21, 19, 21, 18, 22, 
3, -5, -5, 8, 22, -11, -16, -17, 4, 2, -19, 1, 6, -19, -1, 6, -15, -16, -15, 5, 
8, 8, -10, -17, -16, -1, 10, 7, 8, 7, -15, -7, 9, 8, 2, -16, -16, -12, 8, 8, 
7, 10, -2, -17, 4, 9, 7, 8, 7, 8, 7, 6, -17, -5, 10, -15, -8, 9, 7, 7, 
8, -7, -18, -14, -17, -14, -17, -13, -17, 8, 15, -4, -2, -3, -2, -3, -2, 21, 11, -5, 
18, 20, 21, 3, -5, -2, -4, -3, -4, -3, -2, 9, 7, 7, 8, 6, 9, -8, -17, -16, 
-4, 9, -16, -7, 11, -14, -9, 8, 8, 7, 9, -6, -17, -15, -15, -16, 6, 2, -18, 3, 
9, 7, 9, 5, -15, -15, -15, 7, 1, -18, -13, -12, 13, -10, -10, 7, 11, 0, -13, 7, 
9, 7, 10, 3, -12, -19, 2, 1, -15, -15, 7, -6, -8, 9, -17, 8, -5, -17, 3, 20, 
23, 6, -4, 2, 22, 19, 23, 9, 0, 21, 20, 5, -7, 3, 20, 18, 22, 6, 0, 21, 
18, 17, 6, 6, 5, -18, 3, -7, -13, 9, 4, 8, -6, -20, -15, -19, -14, -20, -6, 4, 
-15, -17, -15, -17, -12, 7, -12, -3, 12, 2, -14, -16, -15, -15, -15, -14, 5, 10, 7, 10, 
5, -10, -19, -2, 4, -15, 8, -8, -7, 13, 5, 12, -10, -15, -15, -14, 9, -10, -4, 12, 
7, 9, -8, -18, -5, 6, -12, -18, 2, 2, -13, 8, 11, 3, 5, 22, 21, 20, 23, 11, 
-4, -3, 18, 6, -6, 1, 21, -3, 13, 12, -3, 21, -2, -5, 5, 22, 15, -11, -20, -5, 
8, 6, 8, -11, -8, 11, 2, -12, -20, -3, 8, 6, 8, -11, -7, 11, 4, 9, 4, 10, 
-2, -15, 7, -13, -5, 10, 4, 8, -13, -17, -16, -17, -14, -19, 0, 2, -5, -3, -3, -5, 
6, 21, 20, 13, -5, -4, 0, 19, 19, 19, 19, 18, 19, -2, -5, -5, -5, -5, -4, -5, 
-4, -5, -4, -5, -4, -6, -3, -6, 2, 19, 18, 18, 18, 18, 18, 17, 17, 17, 17, 16, 
17, 1, -10, -4, -9, -4, -10, 6, 16, 19, 8, -7, -8, -1, 16, 17, 13, -6, -8, -6, 
12, 17, 15, 16, 15, 15, 15, 14, 16, 2, -11, -8, -9, -9, -8, -9, -7, -10, -3, 14, 
16, 12, -7, -9, -7, 10, 16, 13, 15, 13, 15, 13, 14, 14, 3, -13, -8, -12, -8, -12, 
-2, 14, 14, 10, -10, -9, -10, -10, -9, -10, 10, 14, 14, -3, -11, -10, 3, 17, 11, 15, 
11, 16, 3, -11, -11, -5, 14, 12, 13, 12, 12, 12, 12, 12, 11, 12, 11, 12, -5, -14, 
-11, -13, -10, -14, -1, 13, 12, 5, -14, -10, -13, -10, -13, -8, 10, 12, 11, -9, -12, -12, 
7, 12, 12, -4, -13, -12, 0, 14, 11, 3, -15, -10, -13, -10, -13, -7, 12, 12, 12, };
