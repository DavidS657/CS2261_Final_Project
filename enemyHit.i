# 1 "enemyHit.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "enemyHit.c"


const unsigned int enemyHit_sampleRate = 11025;
const unsigned int enemyHit_length = 2200;

const signed char enemyHit_data[] = {
14, 20, 23, 8, -4, -4, 6, 21, 20, 14, -5, -2, -4, -3, -4, -2, -10, -26, -23, -24, -24,
-23, -25, -8, -2, 12, 23, 22, 11, -4, -1, -3, -2, -2, -2, -1, -3, 2, 20, 22, 19,
0, -2, -14, -9, 4, -4, 3, -4, 4, 4, -2, -3, -1, -3, -1, -3, -1, -3, -1, -2,
-2, -2, -2, -2, -1, 19, 21, 21, 3, -22, -23, -23, -23, -24, -12, 8, 23, 14, -5, 1,
-4, 1, -4, 4, 21, 23, 19, 0, -2, -1, 18, 22, 21, 3, -3, -6, -25, -23, -23, -24,
-21, -26, -2, 25, 22, 17, -3, 0, -2, -1, -1, -2, -1, -2, -1, -2, 0, -3, 15, 24,
20, 24, 10, -1, -10, -26, -21, -24, -22, -6, 1, -2, 0, -2, 0, -1, 0, 20, 23, 22,
4, -3, 0, -3, 0, -4, 13, 22, 23, -4, -27, -20, -25, -21, -24, -18, -1, 0, -1, 0,
-1, 0, 0, 0, 0, -1, 1, -2, 15, 24, 23, 11, -3, 0, 6, 27, 11, -22, -23, -22,
-23, -14, 4, -3, -17, -3, 2, -3, 9, 24, 23, 22, 24, 7, -4, 7, 24, 19, 1, -3,
0, -4, 7, 22, 22, 20, 23, 6, -3, -7, -26, -21, -5, 3, -15, -24, -23, -21, -2, -1,
-1, -1, -1, -1, -1, -1, 0, -1, 0, -2, 5, 23, 22, 22, 23, 10, -6, 5, 20, 22,
19, 24, 3, -27, -22, -25, -22, -6, 3, -12, -24, 2, 22, 22, 21, 22, 11, -6, 3, 20,
22, 19, 22, 10, -6, 1, 19, 21, 2, -5, -2, -4, -3, -4, -2, -9, -26, -23, -25, -21,
-2, 1, -17, -23, -3, -2, -2, -1, -3, 14, 24, 13, -4, 1, 18, 22, 19, 23, 12, -4,
-3, -3, -3, -3, -3, -2, -4, -2, -8, -26, -10, 3, -9, -24, -23, -23, -23, 10, 26, 14,
-2, -2, -1, -3, 11, 24, 14, -3, -1, 17, 24, 7, -4, -2, -3, -3, -2, -4, 9, 24,
15, -7, -25, -23, -25, -23, -24, -23, -23, -21, 15, 24, 20, 24, 17, -2, -2, -2, -2, -2,
-1, -3, 5, 24, 2, -2, -4, 13, 20, -3, -1, -3, -1, -3, -1, -3, -1, -6, -6, -1,
-26, -9, 0, -22, -22, -23, -2, -1, -2, -1, 3, 24, 21, 21, -3, 10, 23, 0, -1, -3,
17, 21, 22, 5, -3, -3, 10, 22, -2, -3, -3, -3, -2, -3, -2, -4, -1, -18, -23, -1,
-1, 0, -22, -16, 2, 0, -4, -7, 1, -1, 24, 9, -3, 20, 20, 22, 1, 2, 22, 20,
18, -5, 10, 21, -3, -3, -4, -2, -4, -2, -4, 1, 21, 7, -6, -1, -12, -26, -3, -8,
-27, -5, -1, 0, -14, -28, -10, -1, -2, -3, -1, -3, 18, 16, -4, -2, 0, 23, 7, -4,
-2, 6, 24, -2, 4, 22, 4, -5, -1, -4, 0, 20, 11, -7, 0, -8, -21, -27, -17, -1,
0, -4, -23, -24, -23, -19, 1, -4, 20, 16, -3, -1, 1, 24, 7, -3, -1, -2, -2, -2,
-2, -1, -3, 2, 23, 7, -3, 23, 8, -3, -3, 5, 24, 0, -1, -19, -10, 2, -1, -11,
-27, 2, -11, -24, -23, 0, 24, 11, -3, 0, 19, 7, -5, 0, -3, -1, -3, -1, -3, 1,
18, 24, 8, 1, 24, 18, 6, -8, 7, 17, 0, 12, 26, 9, 1, 16, 24, 3, 4, 17,
-22, -27, -24, -26, -23, -26, -3, -14, -27, -20, -27, 10, 7, 4, 25, 18, 2, -4, -1, -4,
-1, -5, 15, 13, -6, 0, 17, 7, -7, 5, 19, -2, 14, 12, -8, 0, -7, 17, 9, -6,
-2, -4, -3, 6, 26, 9, -22, -27, -22, -27, -19, -3, -16, -28, -13, -3, -22, -6, 0, -2,
-1, 0, -4, 15, 14, -1, 23, 1, -4, 8, 19, -3, -2, 12, 24, 15, -3, 19, 5, -6,
3, 20, 20, 5, -7, 4, 18, -1, -4, -3, -3, -15, -28, -22, -27, -16, -1, 0, -19, -14,
5, -7, -14, -6, 14, 14, 0, 19, 24, 5, 5, 22, 21, -1, 11, 14, -6, -1, -4, -2,
-4, 0, 21, -1, -3, -4, 1, 20, -1, 10, 23, 13, -3, -4, -4, -4, -5, -22, -5, -15,
-30, 4, 11, -21, -29, -8, -15, -11, -11, -25, -25, -8, -12, -25, -22, -18, 15, 25, 6, -3,
0, -2, 16, 8, -6, 19, 3, -2, -1, -2, -1, -1, 18, 3, 17, 2, -2, 19, 0, -1,
20, 19, 1, 18, -3, 0, 20, 18, -5, 3, 15, -3, -4, -2, -10, -26, -24, -19, 3, -9,
-18, 3, -8, -26, -13, -7, -20, 14, 11, 5, 27, 6, 10, 12, -5, -1, -1, -5, 13, 9,
-4, -4, 13, 7, 9, 25, 3, -4, -2, -3, -3, 13, 7, -8, 18, 1, -4, 15, 3, 13,
3, -7, -1, 15, 1, -4, -10, -27, -1, -4, -23, -25, -24, -21, -4, -24, -20, -2, -26, -12,
-1, 0, -4, 7, 15, 4, 19, -6, 8, 15, -4, 5, 25, 10, 6, 16, -8, 10, 22, 12,
-8, 12, 10, -5, -2, -3, -3, -3, -4, 10, 24, 4, 9, 24, 3, -5, 13, 7, -1, 2,
-22, -8, 0, -20, -8, -17, -28, -21, -27, -20, -8, -8, -3, 0, 17, 3, 18, 21, -2, -2,
-3, -2, 0, 18, -4, 2, 17, -5, 4, 11, 8, 8, -10, 12, 4, -3, -5, 8, 21, -2,
-3, -4, 13, -2, 5, 10, -9, 0, -7, 1, 9, 8, 9, -12, -8, -26, -11, -2, -18, -8,
-29, -1, -7, -26, -8, -19, -25, -22, -7, 0, 5, 26, 2, 23, 11, -3, 15, 4, 24, 3,
19, 12, 8, 7, -7, 0, -5, 15, -1, -4, 11, 5, 18, 10, -8, 1, -8, 13, 1, 2,
11, -6, 13, 4, 11, -9, 4, 10, -4, -4, 0, 19, -17, -25, -28, -13, -16, -23, -7, -27,
-22, -24, -24, -11, -12, -10, -12, 14, 4, 1, 26, 5, 15, -2, 9, 24, -4, 8, 9, -5,
-1, -3, -2, -1, 22, 9, 10, 22, -8, 14, 3, 20, 9, 9, 19, 3, 12, -8, -1, -7,
9, 6, -9, 8, 6, 12, 18, -7, -1, -8, -13, -13, -27, -7, -26, -13, -13, -12, -21, -27,
-5, -24, -21, -27, 6, 15, -2, -3, 4, 13, -3, 13, 3, -6, 2, -7, 9, 8, 13, 2,
4, 13, -7, 23, 10, 10, 5, -2, 25, 3, -1, 14, -5, -1, -6, 2, 16, 9, 15, 0,
8, 13, 10, 13, 10, 3, -5, -5, 9, -5, -19, -12, -8, -19, -30, -18, -16, -17, -16, -18,
-9, -18, -23, -10, -25, -21, 15, 8, -8, 11, 2, 10, 1, -2, -2, 6, 13, 3, 8, 3,
12, 15, 4, 5, 18, 0, 10, -3, -2, -4, 2, 17, 9, 16, 0, 9, 14, 11, 13, 10,
3, -5, -4, 9, -3, 2, 10, 14, 1, -8, 2, 5, 2, 6, -8, -13, -19, -25, -11, -27,
-22, -5, -15, -30, -11, -20, -12, -21, -23, -25, -7, 15, 2, 9, 3, 13, 15, 5, 5, 19,
0, 10, -3, -2, -4, 2, 18, 10, 16, 0, 9, 14, 11, 13, 11, 3, -4, -4, 9, -2,
2, 11, 14, 2, -8, 3, 4, 4, 4, 3, 11, 2, -4, 10, -6, -2, 15, 5, -10, -10,
-22, -13, -22, -26, -25, -16, -10, -19, -14, -19, -9, -6, -17, -16, -3, -4, 12, -3, 0, -4,
4, 18, 11, 16, 1, 10, 15, 12, 14, 11, 4, -4, -3, 9, -1, 3, 16, -1, -2, 7,
2, 9, 3, 3, 0, 4, 10, -5, 7, 3, -3, -2, 9, 4, 2, 13, 5, 8, 7, 2,
-5, -3, 8, 14, 2, 10, 6, -11, -16, -27, -18, -21, -14, -8, -28, -18, -16, -17, -12, -19,
-16, -23, -10, -17, -11, 12, 1, -1, 2, 12, 3, 9, 13, 6, 11, 8, 2, -4, 1, 15,
12, 4, 13, 13, 13, 1, -3, 5, 0, 13, 6, -6, 7, 2, 7, 6, 2, 2, -1, 12,
-2, 2, 7, -2, -3, 5, 8, 0, 11, 8, 6, 8, 4, -3, -5, 3, 16, -2, -18, -9,
-11, -12, -26, -21, -18, -19, -5, -22, -23, -13, -19, -11, -18, -15, -22, -2, 13, -4, 9, 5,
-1, 0, 11, 6, 4, 14, 7, 9, 9, 4, -2, -2, 11, 15, 5, 10, 13, 13, 6, -5,
5, 1, 8, 13, -6, 4, 4, 3, 8, 1, 4, -3, 9, 4, -3, 8, 0, -4, 1, 10,
1, 7, 11, 4, 8, 6, -1, -4, -11, -11, -10, -19, -9, -10, 0, -3, -1, -4, -12, -4,
-13, -5, -10, -9, -8, -10, -12, -7, -4, -3, -6, -15, -1, -4, 2, -10, -7, 11, 0, 7,
5, 3, 5, 4, 1, 3, 8, 8, 9, -2, 6, 10, 10, 9, -3, 9, 2, 2, 6, 2,
4, 3, 1, 0, 7, 6, 10, 0, 0, 10, 8, 11, -2, 4, 6, -1, 6, 1, 2, 3,
2, -2, 4, 5, 8, 4, -4, 9, 6, 11, 1, -1, 7, -1, -2, -11, -11, -10, -10, -14,
-11, -6, -6, -4, -16, -7, -4, -3, -5, -15, -4, -10, -11, -4, 2, 4, 3, 1, 0, 7,
6, 10, 0, 1, 10, 8, 11, -2, 4, 5, -1, 6, 1, 2, 3, 2, -2, 4, 5, 8,
4, -4, 9, 7, 11, 1, -2, 8, -2, 4, 3, 0, 2, 2, -2, 1, 5, 5, 7, -5,
4, 7, 8, 6, -5, 6, 0, 0, 4, -1, 2, -3, -14, -14, -8, -8, -4, -14, -13, -3,
-6, -2, -15, -9, -7, -14, -6, -12, -10, -10, -9, -3, 5, 5, 9, 4, -3, 9, 7, 11,
2, -1, 4, 1, 4, -1, 5, 5, 1, 9, 2, 2, 2, 2, 0, 2, 7, -1, 9, 3,
1, 2, 1, 1, 0, 7, -1, 7, 4, 0, 2, 1, 1, -1, 7, 0, 5, 6, -1, 3,
0, 2, -2, 6, 1, 3, 7, -1, 2, 0, 1, -2, 2, -10, -11, -4, -13, -10, -12, -10,
-14, -9, -8, -12, -3, -11, -10, -10, -10, -12, -10, -5, -13, 1, 4, 2, 3, 2, 2, 1,
8, 0, 8, 5, 1, 3, 1, 2, -1, 7, 0, 6, 7, 0, 3, 1, 2, -2, 6, 1,
3, 8, 0, 3, 0, 2, -2, 5, 3, 1, 9, 0, 2, 0, 2, -2, 3, 4, 0, 9,
1, 1, 1, 1, -1, 1, 5, -2, 8, 2, 0, 1, 0, 0, -1, 7, -10, -7, -8, -13,
-10, -12, -11, -14, -5, -13, -7, -6, -12, -9, -11, -10, -14, -5, -10, -8, -4, -2, 5, 1,
4, -1, 6, 4, 2, 9, 1, 3, 1, 3, -1, 4, 5, 0, 10, 1, 2, 1, 2, 0,
2, 6, -1, 9, 3, 1, 2, 1, 4, 3, 1, 0, 2, 4, 2, 0, 1, 3, 4, 1,
1, 1, 4, 2, 0, 0, 3, 4, 1, 0, 1, 3, 3, 0, 0, 2, 4, 1, 0, 1,
3, 3, -10, -13, -11, -9, -10, -12, -11, -9, -8, -11, -11, -11, -8, -9, -11, -11, -9, -7,
-9, -11, -9, -8, -3, 3, 2, 4, 5, 4, 2, 2, 4, 5, 2, 2, 3, 5, 4, 1,
2, 4, 5, 2, 1, 2, 5, 4, 1, 1, 3, 5, 2, 1, 1, 4, 4, 1, 1, 2,
4, 3, 1, 1, 3, 4, 1, 1, 1, 4, 3, 0, 1, 2, 4, 1, 0, 1, 3, 3,
1, 0, 2, 4, 2, 0, 1, 2, 3, 0, 0, 0, -8, -10, -12, -12, -10, -8, -11, -12,
-11, -8, -9, -11, -11, -9, -7, -10, -11, -10, -8, -8, -10, -11, -2, 7, 3, 2, 2, 5,
5, 3, 2, 3, 5, 4, 2, 2, 3, 5, 3, 1, 2, 4, 4, 1, 1, 3, 5, 3,
1, 1, 4, 4, 1, 1, 2, 4, 3, 1, 4, 1, 3, 2, 2, 3, 1, 4, 0, 4,
1, 2, 2, 1, 3, 0, 4, 0, 3, 1, 1, 3, 0, 3, 0, 3, 1, 2, 2, 0,
3, -1, 3, 0, -8, -12, -11, -10, -12, -9, -12, -9, -11, -10, -9, -11, -8, -11, -8, -11,
-9, -9, -10, -8, -11, -7, -11, -7, 1, 4, 4, 2, 5, 2, 5, 2, 4, 4, 2, 5,
1, 5, 1, 4, 3, 3, 4, 1, 5, 1, 4, 2, 3, 3, 2, 4, 1, 4, 1, 3,
2, 2, 4, 1, 4, 1, 4, 1, 2, 3, 1, 4, 0, 4, 1, 3, 2, 1, 3, 0,
4, 0, 3, 1, 2, 2, 0, 3, 0, 3, 1, 2, 2, 0, 3, 0, 3, 0, 2, 1,
-9, -11, -12, -9, -12, -9, -11, -10, -10, -11, -8, -12, -8, -11, -9, -10, -10, -8, -11, -7,
-11, -8, -9, -9, 1, 3, 5, 2, 5, 2, 4, 4, 2, 5, 1, 5, 1, 4, 3, 3,
4, 2, 5, 1, 5, 2, 3, 3, 2, 4, 1, 4, -3, -6, -5, -6, -5, -5, -5, };
