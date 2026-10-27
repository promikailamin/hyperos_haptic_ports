.class final Landroid/os/statistics/JniParcel;
.super Ljava/lang/Object;
.source "JniParcel.java"


# instance fields
.field private final blacklist numbers:[J

.field private blacklist numbersCount:I

.field private final blacklist objects:[Ljava/lang/Object;

.field private blacklist objectsCount:I

.field private blacklist readPosOfNumbers:I

.field private blacklist readPosOfObjects:I


# direct methods
.method public constructor blacklist <init>(II)V
    .registers 5
    .param p1, "numbersCapacity"    # I
    .param p2, "objectsCapacity"    # I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-array v0, p1, [J

    iput-object v0, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    .line 18
    iput v0, p0, Landroid/os/statistics/JniParcel;->readPosOfNumbers:I

    .line 19
    new-array v1, p2, [Ljava/lang/Object;

    iput-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    .line 20
    iput v0, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    .line 21
    iput v0, p0, Landroid/os/statistics/JniParcel;->readPosOfObjects:I

    .line 22
    return-void
.end method

.method private blacklist writeLong1(J)V
    .registers 5
    .param p1, "value1"    # J

    .line 63
    iget v0, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    .line 64
    .local v0, "localNumbersCount":I
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    aput-wide p1, v1, v0

    .line 65
    iget v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    .line 66
    return-void
.end method

.method private blacklist writeLong10(JJJJJJJJJJ)V
    .registers 25
    .param p1, "value1"    # J
    .param p3, "value2"    # J
    .param p5, "value3"    # J
    .param p7, "value4"    # J
    .param p9, "value5"    # J
    .param p11, "value6"    # J
    .param p13, "value7"    # J
    .param p15, "value8"    # J
    .param p17, "value9"    # J
    .param p19, "value10"    # J

    .line 181
    move-object v0, p0

    iget v1, v0, Landroid/os/statistics/JniParcel;->numbersCount:I

    .line 182
    .local v1, "localNumbersCount":I
    iget-object v2, v0, Landroid/os/statistics/JniParcel;->numbers:[J

    aput-wide p1, v2, v1

    .line 183
    add-int/lit8 v3, v1, 0x1

    aput-wide p3, v2, v3

    .line 184
    add-int/lit8 v3, v1, 0x2

    aput-wide p5, v2, v3

    .line 185
    add-int/lit8 v3, v1, 0x3

    aput-wide p7, v2, v3

    .line 186
    add-int/lit8 v3, v1, 0x4

    aput-wide p9, v2, v3

    .line 187
    add-int/lit8 v3, v1, 0x5

    aput-wide p11, v2, v3

    .line 188
    add-int/lit8 v3, v1, 0x6

    aput-wide p13, v2, v3

    .line 189
    add-int/lit8 v3, v1, 0x7

    aput-wide p15, v2, v3

    .line 190
    add-int/lit8 v3, v1, 0x8

    aput-wide p17, v2, v3

    .line 191
    add-int/lit8 v3, v1, 0x9

    aput-wide p19, v2, v3

    .line 192
    iget v2, v0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v2, v2, 0xa

    iput v2, v0, Landroid/os/statistics/JniParcel;->numbersCount:I

    .line 193
    return-void
.end method

.method private blacklist writeLong11(JJJJJJJJJJJ)V
    .registers 27
    .param p1, "value1"    # J
    .param p3, "value2"    # J
    .param p5, "value3"    # J
    .param p7, "value4"    # J
    .param p9, "value5"    # J
    .param p11, "value6"    # J
    .param p13, "value7"    # J
    .param p15, "value8"    # J
    .param p17, "value9"    # J
    .param p19, "value10"    # J
    .param p21, "value11"    # J

    .line 201
    move-object v0, p0

    iget v1, v0, Landroid/os/statistics/JniParcel;->numbersCount:I

    .line 202
    .local v1, "localNumbersCount":I
    iget-object v2, v0, Landroid/os/statistics/JniParcel;->numbers:[J

    aput-wide p1, v2, v1

    .line 203
    add-int/lit8 v3, v1, 0x1

    aput-wide p3, v2, v3

    .line 204
    add-int/lit8 v3, v1, 0x2

    aput-wide p5, v2, v3

    .line 205
    add-int/lit8 v3, v1, 0x3

    aput-wide p7, v2, v3

    .line 206
    add-int/lit8 v3, v1, 0x4

    aput-wide p9, v2, v3

    .line 207
    add-int/lit8 v3, v1, 0x5

    aput-wide p11, v2, v3

    .line 208
    add-int/lit8 v3, v1, 0x6

    aput-wide p13, v2, v3

    .line 209
    add-int/lit8 v3, v1, 0x7

    aput-wide p15, v2, v3

    .line 210
    add-int/lit8 v3, v1, 0x8

    aput-wide p17, v2, v3

    .line 211
    add-int/lit8 v3, v1, 0x9

    aput-wide p19, v2, v3

    .line 212
    add-int/lit8 v3, v1, 0xa

    aput-wide p21, v2, v3

    .line 213
    iget v2, v0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v2, v2, 0xb

    iput v2, v0, Landroid/os/statistics/JniParcel;->numbersCount:I

    .line 214
    return-void
.end method

.method private blacklist writeLong12(JJJJJJJJJJJJ)V
    .registers 29
    .param p1, "value1"    # J
    .param p3, "value2"    # J
    .param p5, "value3"    # J
    .param p7, "value4"    # J
    .param p9, "value5"    # J
    .param p11, "value6"    # J
    .param p13, "value7"    # J
    .param p15, "value8"    # J
    .param p17, "value9"    # J
    .param p19, "value10"    # J
    .param p21, "value11"    # J
    .param p23, "value12"    # J

    .line 222
    move-object v0, p0

    iget v1, v0, Landroid/os/statistics/JniParcel;->numbersCount:I

    .line 223
    .local v1, "localNumbersCount":I
    iget-object v2, v0, Landroid/os/statistics/JniParcel;->numbers:[J

    aput-wide p1, v2, v1

    .line 224
    add-int/lit8 v3, v1, 0x1

    aput-wide p3, v2, v3

    .line 225
    add-int/lit8 v3, v1, 0x2

    aput-wide p5, v2, v3

    .line 226
    add-int/lit8 v3, v1, 0x3

    aput-wide p7, v2, v3

    .line 227
    add-int/lit8 v3, v1, 0x4

    aput-wide p9, v2, v3

    .line 228
    add-int/lit8 v3, v1, 0x5

    aput-wide p11, v2, v3

    .line 229
    add-int/lit8 v3, v1, 0x6

    aput-wide p13, v2, v3

    .line 230
    add-int/lit8 v3, v1, 0x7

    aput-wide p15, v2, v3

    .line 231
    add-int/lit8 v3, v1, 0x8

    aput-wide p17, v2, v3

    .line 232
    add-int/lit8 v3, v1, 0x9

    aput-wide p19, v2, v3

    .line 233
    add-int/lit8 v3, v1, 0xa

    aput-wide p21, v2, v3

    .line 234
    add-int/lit8 v3, v1, 0xb

    aput-wide p23, v2, v3

    .line 235
    iget v2, v0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v2, v2, 0xc

    iput v2, v0, Landroid/os/statistics/JniParcel;->numbersCount:I

    .line 236
    return-void
.end method

.method private blacklist writeLong2(JJ)V
    .registers 8
    .param p1, "value1"    # J
    .param p3, "value2"    # J

    .line 70
    iget v0, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    .line 71
    .local v0, "localNumbersCount":I
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    aput-wide p1, v1, v0

    .line 72
    add-int/lit8 v2, v0, 0x1

    aput-wide p3, v1, v2

    .line 73
    iget v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    .line 74
    return-void
.end method

.method private blacklist writeLong3(JJJ)V
    .registers 10
    .param p1, "value1"    # J
    .param p3, "value2"    # J
    .param p5, "value3"    # J

    .line 78
    iget v0, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    .line 79
    .local v0, "localNumbersCount":I
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    aput-wide p1, v1, v0

    .line 80
    add-int/lit8 v2, v0, 0x1

    aput-wide p3, v1, v2

    .line 81
    add-int/lit8 v2, v0, 0x2

    aput-wide p5, v1, v2

    .line 82
    iget v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    .line 83
    return-void
.end method

.method private blacklist writeLong4(JJJJ)V
    .registers 12
    .param p1, "value1"    # J
    .param p3, "value2"    # J
    .param p5, "value3"    # J
    .param p7, "value4"    # J

    .line 89
    iget v0, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    .line 90
    .local v0, "localNumbersCount":I
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    aput-wide p1, v1, v0

    .line 91
    add-int/lit8 v2, v0, 0x1

    aput-wide p3, v1, v2

    .line 92
    add-int/lit8 v2, v0, 0x2

    aput-wide p5, v1, v2

    .line 93
    add-int/lit8 v2, v0, 0x3

    aput-wide p7, v1, v2

    .line 94
    iget v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    .line 95
    return-void
.end method

.method private blacklist writeLong5(JJJJJ)V
    .registers 14
    .param p1, "value1"    # J
    .param p3, "value2"    # J
    .param p5, "value3"    # J
    .param p7, "value4"    # J
    .param p9, "value5"    # J

    .line 101
    iget v0, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    .line 102
    .local v0, "localNumbersCount":I
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    aput-wide p1, v1, v0

    .line 103
    add-int/lit8 v2, v0, 0x1

    aput-wide p3, v1, v2

    .line 104
    add-int/lit8 v2, v0, 0x2

    aput-wide p5, v1, v2

    .line 105
    add-int/lit8 v2, v0, 0x3

    aput-wide p7, v1, v2

    .line 106
    add-int/lit8 v2, v0, 0x4

    aput-wide p9, v1, v2

    .line 107
    iget v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v1, v1, 0x5

    iput v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    .line 108
    return-void
.end method

.method private blacklist writeLong6(JJJJJJ)V
    .registers 16
    .param p1, "value1"    # J
    .param p3, "value2"    # J
    .param p5, "value3"    # J
    .param p7, "value4"    # J
    .param p9, "value5"    # J
    .param p11, "value6"    # J

    .line 114
    iget v0, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    .line 115
    .local v0, "localNumbersCount":I
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    aput-wide p1, v1, v0

    .line 116
    add-int/lit8 v2, v0, 0x1

    aput-wide p3, v1, v2

    .line 117
    add-int/lit8 v2, v0, 0x2

    aput-wide p5, v1, v2

    .line 118
    add-int/lit8 v2, v0, 0x3

    aput-wide p7, v1, v2

    .line 119
    add-int/lit8 v2, v0, 0x4

    aput-wide p9, v1, v2

    .line 120
    add-int/lit8 v2, v0, 0x5

    aput-wide p11, v1, v2

    .line 121
    iget v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v1, v1, 0x6

    iput v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    .line 122
    return-void
.end method

.method private blacklist writeLong7(JJJJJJJ)V
    .registers 19
    .param p1, "value1"    # J
    .param p3, "value2"    # J
    .param p5, "value3"    # J
    .param p7, "value4"    # J
    .param p9, "value5"    # J
    .param p11, "value6"    # J
    .param p13, "value7"    # J

    .line 129
    move-object v0, p0

    iget v1, v0, Landroid/os/statistics/JniParcel;->numbersCount:I

    .line 130
    .local v1, "localNumbersCount":I
    iget-object v2, v0, Landroid/os/statistics/JniParcel;->numbers:[J

    aput-wide p1, v2, v1

    .line 131
    add-int/lit8 v3, v1, 0x1

    aput-wide p3, v2, v3

    .line 132
    add-int/lit8 v3, v1, 0x2

    aput-wide p5, v2, v3

    .line 133
    add-int/lit8 v3, v1, 0x3

    aput-wide p7, v2, v3

    .line 134
    add-int/lit8 v3, v1, 0x4

    aput-wide p9, v2, v3

    .line 135
    add-int/lit8 v3, v1, 0x5

    aput-wide p11, v2, v3

    .line 136
    add-int/lit8 v3, v1, 0x6

    aput-wide p13, v2, v3

    .line 137
    iget v2, v0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v2, v2, 0x7

    iput v2, v0, Landroid/os/statistics/JniParcel;->numbersCount:I

    .line 138
    return-void
.end method

.method private blacklist writeLong8(JJJJJJJJ)V
    .registers 21
    .param p1, "value1"    # J
    .param p3, "value2"    # J
    .param p5, "value3"    # J
    .param p7, "value4"    # J
    .param p9, "value5"    # J
    .param p11, "value6"    # J
    .param p13, "value7"    # J
    .param p15, "value8"    # J

    .line 145
    move-object v0, p0

    iget v1, v0, Landroid/os/statistics/JniParcel;->numbersCount:I

    .line 146
    .local v1, "localNumbersCount":I
    iget-object v2, v0, Landroid/os/statistics/JniParcel;->numbers:[J

    aput-wide p1, v2, v1

    .line 147
    add-int/lit8 v3, v1, 0x1

    aput-wide p3, v2, v3

    .line 148
    add-int/lit8 v3, v1, 0x2

    aput-wide p5, v2, v3

    .line 149
    add-int/lit8 v3, v1, 0x3

    aput-wide p7, v2, v3

    .line 150
    add-int/lit8 v3, v1, 0x4

    aput-wide p9, v2, v3

    .line 151
    add-int/lit8 v3, v1, 0x5

    aput-wide p11, v2, v3

    .line 152
    add-int/lit8 v3, v1, 0x6

    aput-wide p13, v2, v3

    .line 153
    add-int/lit8 v3, v1, 0x7

    aput-wide p15, v2, v3

    .line 154
    iget v2, v0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v2, v2, 0x8

    iput v2, v0, Landroid/os/statistics/JniParcel;->numbersCount:I

    .line 155
    return-void
.end method

.method private blacklist writeLong9(JJJJJJJJJ)V
    .registers 23
    .param p1, "value1"    # J
    .param p3, "value2"    # J
    .param p5, "value3"    # J
    .param p7, "value4"    # J
    .param p9, "value5"    # J
    .param p11, "value6"    # J
    .param p13, "value7"    # J
    .param p15, "value8"    # J
    .param p17, "value9"    # J

    .line 162
    move-object v0, p0

    iget v1, v0, Landroid/os/statistics/JniParcel;->numbersCount:I

    .line 163
    .local v1, "localNumbersCount":I
    iget-object v2, v0, Landroid/os/statistics/JniParcel;->numbers:[J

    aput-wide p1, v2, v1

    .line 164
    add-int/lit8 v3, v1, 0x1

    aput-wide p3, v2, v3

    .line 165
    add-int/lit8 v3, v1, 0x2

    aput-wide p5, v2, v3

    .line 166
    add-int/lit8 v3, v1, 0x3

    aput-wide p7, v2, v3

    .line 167
    add-int/lit8 v3, v1, 0x4

    aput-wide p9, v2, v3

    .line 168
    add-int/lit8 v3, v1, 0x5

    aput-wide p11, v2, v3

    .line 169
    add-int/lit8 v3, v1, 0x6

    aput-wide p13, v2, v3

    .line 170
    add-int/lit8 v3, v1, 0x7

    aput-wide p15, v2, v3

    .line 171
    add-int/lit8 v3, v1, 0x8

    aput-wide p17, v2, v3

    .line 172
    iget v2, v0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v2, v2, 0x9

    iput v2, v0, Landroid/os/statistics/JniParcel;->numbersCount:I

    .line 173
    return-void
.end method

.method private blacklist writeObject1(Ljava/lang/Object;)V
    .registers 4
    .param p1, "object1"    # Ljava/lang/Object;

    .line 240
    iget v0, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    .line 241
    .local v0, "localObjectsCount":I
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 242
    iget v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    .line 243
    return-void
.end method

.method private blacklist writeObject2(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .param p1, "object1"    # Ljava/lang/Object;
    .param p2, "object2"    # Ljava/lang/Object;

    .line 247
    iget v0, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    .line 248
    .local v0, "localObjectsCount":I
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 249
    add-int/lit8 v2, v0, 0x1

    aput-object p2, v1, v2

    .line 250
    iget v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    .line 251
    return-void
.end method

.method private blacklist writeObject3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .param p1, "object1"    # Ljava/lang/Object;
    .param p2, "object2"    # Ljava/lang/Object;
    .param p3, "object3"    # Ljava/lang/Object;

    .line 255
    iget v0, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    .line 256
    .local v0, "localObjectsCount":I
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 257
    add-int/lit8 v2, v0, 0x1

    aput-object p2, v1, v2

    .line 258
    add-int/lit8 v2, v0, 0x2

    aput-object p3, v1, v2

    .line 259
    iget v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    .line 260
    return-void
.end method

.method private blacklist writeObject4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8
    .param p1, "object1"    # Ljava/lang/Object;
    .param p2, "object2"    # Ljava/lang/Object;
    .param p3, "object3"    # Ljava/lang/Object;
    .param p4, "object4"    # Ljava/lang/Object;

    .line 266
    iget v0, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    .line 267
    .local v0, "localObjectsCount":I
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 268
    add-int/lit8 v2, v0, 0x1

    aput-object p2, v1, v2

    .line 269
    add-int/lit8 v2, v0, 0x2

    aput-object p3, v1, v2

    .line 270
    add-int/lit8 v2, v0, 0x3

    aput-object p4, v1, v2

    .line 271
    iget v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    .line 272
    return-void
.end method

.method private blacklist writeObject5(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .param p1, "object1"    # Ljava/lang/Object;
    .param p2, "object2"    # Ljava/lang/Object;
    .param p3, "object3"    # Ljava/lang/Object;
    .param p4, "object4"    # Ljava/lang/Object;
    .param p5, "object5"    # Ljava/lang/Object;

    .line 278
    iget v0, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    .line 279
    .local v0, "localObjectsCount":I
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 280
    add-int/lit8 v2, v0, 0x1

    aput-object p2, v1, v2

    .line 281
    add-int/lit8 v2, v0, 0x2

    aput-object p3, v1, v2

    .line 282
    add-int/lit8 v2, v0, 0x3

    aput-object p4, v1, v2

    .line 283
    add-int/lit8 v2, v0, 0x4

    aput-object p5, v1, v2

    .line 284
    iget v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    add-int/lit8 v1, v1, 0x5

    iput v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    .line 285
    return-void
.end method

.method private blacklist writeObject6(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10
    .param p1, "object1"    # Ljava/lang/Object;
    .param p2, "object2"    # Ljava/lang/Object;
    .param p3, "object3"    # Ljava/lang/Object;
    .param p4, "object4"    # Ljava/lang/Object;
    .param p5, "object5"    # Ljava/lang/Object;
    .param p6, "object6"    # Ljava/lang/Object;

    .line 291
    iget v0, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    .line 292
    .local v0, "localObjectsCount":I
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 293
    add-int/lit8 v2, v0, 0x1

    aput-object p2, v1, v2

    .line 294
    add-int/lit8 v2, v0, 0x2

    aput-object p3, v1, v2

    .line 295
    add-int/lit8 v2, v0, 0x3

    aput-object p4, v1, v2

    .line 296
    add-int/lit8 v2, v0, 0x4

    aput-object p5, v1, v2

    .line 297
    add-int/lit8 v2, v0, 0x5

    aput-object p6, v1, v2

    .line 298
    iget v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    add-int/lit8 v1, v1, 0x6

    iput v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    .line 299
    return-void
.end method

.method private blacklist writeObject7(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 11
    .param p1, "object1"    # Ljava/lang/Object;
    .param p2, "object2"    # Ljava/lang/Object;
    .param p3, "object3"    # Ljava/lang/Object;
    .param p4, "object4"    # Ljava/lang/Object;
    .param p5, "object5"    # Ljava/lang/Object;
    .param p6, "object6"    # Ljava/lang/Object;
    .param p7, "object7"    # Ljava/lang/Object;

    .line 306
    iget v0, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    .line 307
    .local v0, "localObjectsCount":I
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 308
    add-int/lit8 v2, v0, 0x1

    aput-object p2, v1, v2

    .line 309
    add-int/lit8 v2, v0, 0x2

    aput-object p3, v1, v2

    .line 310
    add-int/lit8 v2, v0, 0x3

    aput-object p4, v1, v2

    .line 311
    add-int/lit8 v2, v0, 0x4

    aput-object p5, v1, v2

    .line 312
    add-int/lit8 v2, v0, 0x5

    aput-object p6, v1, v2

    .line 313
    add-int/lit8 v2, v0, 0x6

    aput-object p7, v1, v2

    .line 314
    iget v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    add-int/lit8 v1, v1, 0x7

    iput v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    .line 315
    return-void
.end method

.method private blacklist writeObject8(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 12
    .param p1, "object1"    # Ljava/lang/Object;
    .param p2, "object2"    # Ljava/lang/Object;
    .param p3, "object3"    # Ljava/lang/Object;
    .param p4, "object4"    # Ljava/lang/Object;
    .param p5, "object5"    # Ljava/lang/Object;
    .param p6, "object6"    # Ljava/lang/Object;
    .param p7, "object7"    # Ljava/lang/Object;
    .param p8, "object8"    # Ljava/lang/Object;

    .line 322
    iget v0, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    .line 323
    .local v0, "localObjectsCount":I
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 324
    add-int/lit8 v2, v0, 0x1

    aput-object p2, v1, v2

    .line 325
    add-int/lit8 v2, v0, 0x2

    aput-object p3, v1, v2

    .line 326
    add-int/lit8 v2, v0, 0x3

    aput-object p4, v1, v2

    .line 327
    add-int/lit8 v2, v0, 0x4

    aput-object p5, v1, v2

    .line 328
    add-int/lit8 v2, v0, 0x5

    aput-object p6, v1, v2

    .line 329
    add-int/lit8 v2, v0, 0x6

    aput-object p7, v1, v2

    .line 330
    add-int/lit8 v2, v0, 0x7

    aput-object p8, v1, v2

    .line 331
    iget v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    add-int/lit8 v1, v1, 0x8

    iput v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    .line 332
    return-void
.end method

.method private blacklist writeObject9(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 13
    .param p1, "object1"    # Ljava/lang/Object;
    .param p2, "object2"    # Ljava/lang/Object;
    .param p3, "object3"    # Ljava/lang/Object;
    .param p4, "object4"    # Ljava/lang/Object;
    .param p5, "object5"    # Ljava/lang/Object;
    .param p6, "object6"    # Ljava/lang/Object;
    .param p7, "object7"    # Ljava/lang/Object;
    .param p8, "object8"    # Ljava/lang/Object;
    .param p9, "object9"    # Ljava/lang/Object;

    .line 339
    iget v0, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    .line 340
    .local v0, "localObjectsCount":I
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 341
    add-int/lit8 v2, v0, 0x1

    aput-object p2, v1, v2

    .line 342
    add-int/lit8 v2, v0, 0x2

    aput-object p3, v1, v2

    .line 343
    add-int/lit8 v2, v0, 0x3

    aput-object p4, v1, v2

    .line 344
    add-int/lit8 v2, v0, 0x4

    aput-object p5, v1, v2

    .line 345
    add-int/lit8 v2, v0, 0x5

    aput-object p6, v1, v2

    .line 346
    add-int/lit8 v2, v0, 0x6

    aput-object p7, v1, v2

    .line 347
    add-int/lit8 v2, v0, 0x7

    aput-object p8, v1, v2

    .line 348
    add-int/lit8 v2, v0, 0x8

    aput-object p9, v1, v2

    .line 349
    iget v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    add-int/lit8 v1, v1, 0x9

    iput v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    .line 350
    return-void
.end method


# virtual methods
.method public final blacklist readInt()I
    .registers 4

    .line 37
    iget v0, p0, Landroid/os/statistics/JniParcel;->readPosOfNumbers:I

    .line 38
    .local v0, "localReadPosOfNumbers":I
    iget v1, p0, Landroid/os/statistics/JniParcel;->readPosOfNumbers:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/os/statistics/JniParcel;->readPosOfNumbers:I

    .line 39
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    aget-wide v1, v1, v0

    long-to-int v1, v1

    return v1
.end method

.method public final blacklist readLong()J
    .registers 4

    .line 43
    iget v0, p0, Landroid/os/statistics/JniParcel;->readPosOfNumbers:I

    .line 44
    .local v0, "localReadPosOfNumbers":I
    iget v1, p0, Landroid/os/statistics/JniParcel;->readPosOfNumbers:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/os/statistics/JniParcel;->readPosOfNumbers:I

    .line 45
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    aget-wide v1, v1, v0

    return-wide v1
.end method

.method public final blacklist readObject()Ljava/lang/Object;
    .registers 3

    .line 49
    iget v0, p0, Landroid/os/statistics/JniParcel;->readPosOfObjects:I

    .line 50
    .local v0, "localReadPosOfObjects":I
    iget v1, p0, Landroid/os/statistics/JniParcel;->readPosOfObjects:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/os/statistics/JniParcel;->readPosOfObjects:I

    .line 51
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public final blacklist readString()Ljava/lang/String;
    .registers 4

    .line 55
    iget v0, p0, Landroid/os/statistics/JniParcel;->readPosOfObjects:I

    .line 56
    .local v0, "localReadPosOfObjects":I
    iget v1, p0, Landroid/os/statistics/JniParcel;->readPosOfObjects:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/os/statistics/JniParcel;->readPosOfObjects:I

    .line 57
    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Ljava/lang/String;

    .line 58
    .local v1, "str":Ljava/lang/String;
    if-eqz v1, :cond_12

    move-object v2, v1

    goto :goto_14

    :cond_12
    const-string v2, ""

    :goto_14
    return-object v2
.end method

.method public final blacklist reset()V
    .registers 5

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    .line 26
    iput v0, p0, Landroid/os/statistics/JniParcel;->readPosOfNumbers:I

    .line 28
    iget v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    .line 29
    .local v1, "localObjectsCount":I
    iput v0, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    .line 30
    iput v0, p0, Landroid/os/statistics/JniParcel;->readPosOfObjects:I

    .line 31
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    if-ge v0, v1, :cond_16

    .line 32
    iget-object v2, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 34
    .end local v0    # "i":I
    :cond_16
    return-void
.end method
