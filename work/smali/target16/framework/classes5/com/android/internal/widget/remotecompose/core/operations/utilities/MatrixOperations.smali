.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;
.super Ljava/lang/Object;
.source "MatrixOperations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations$Op;
    }
.end annotation


# static fields
.field public static final blacklist IDENTITY:F

.field public static final blacklist LAST_OP:I = 0x320036

.field public static final blacklist MUL:F

.field static final blacklist NO_OF_OPS:[I

.field public static final blacklist OFFSET:I = 0x320000

.field private static final blacklist OP_IDENTITY:I = 0x320001

.field private static final blacklist OP_MUL:I = 0x32000f

.field private static final blacklist OP_PROJECTION:I = 0x320012

.field private static final blacklist OP_ROT_AXIS:I = 0x320011

.field private static final blacklist OP_ROT_PZ:I = 0x320010

.field private static final blacklist OP_ROT_X:I = 0x320002

.field private static final blacklist OP_ROT_Y:I = 0x320003

.field private static final blacklist OP_ROT_Z:I = 0x320004

.field private static final blacklist OP_SCALE2:I = 0x32000d

.field private static final blacklist OP_SCALE3:I = 0x32000e

.field private static final blacklist OP_SCALE_X:I = 0x32000a

.field private static final blacklist OP_SCALE_Y:I = 0x32000b

.field private static final blacklist OP_SCALE_Z:I = 0x32000c

.field private static final blacklist OP_TRANSLATE2:I = 0x320008

.field private static final blacklist OP_TRANSLATE3:I = 0x320009

.field private static final blacklist OP_TRANSLATE_X:I = 0x320005

.field private static final blacklist OP_TRANSLATE_Y:I = 0x320006

.field private static final blacklist OP_TRANSLATE_Z:I = 0x320007

.field public static final blacklist PROJECTION:F

.field public static final blacklist ROT_AXIS:F

.field public static final blacklist ROT_PZ:F

.field public static final blacklist ROT_X:F

.field public static final blacklist ROT_Y:F

.field public static final blacklist ROT_Z:F

.field public static final blacklist SCALE2:F

.field public static final blacklist SCALE3:F

.field public static final blacklist SCALE_X:F

.field public static final blacklist SCALE_Y:F

.field public static final blacklist SCALE_Z:F

.field public static final blacklist TRANSLATE2:F

.field public static final blacklist TRANSLATE3:F

.field public static final blacklist TRANSLATE_X:F

.field public static final blacklist TRANSLATE_Y:F

.field public static final blacklist TRANSLATE_Z:F

.field static blacklist sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field blacklist mMatrices:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

.field blacklist mMatrixIndex:I

.field blacklist mStack:[F

.field blacklist mTmpMatrix:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

.field blacklist mVar:[F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 28
    const v0, 0x320001

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->IDENTITY:F

    .line 31
    const v0, 0x320002

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->ROT_X:F

    .line 34
    const v0, 0x320003

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->ROT_Y:F

    .line 37
    const v0, 0x320004

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->ROT_Z:F

    .line 40
    const v0, 0x320005

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->TRANSLATE_X:F

    .line 43
    const v0, 0x320006

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->TRANSLATE_Y:F

    .line 46
    const v0, 0x320007

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->TRANSLATE_Z:F

    .line 49
    const v0, 0x320008

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->TRANSLATE2:F

    .line 52
    const v0, 0x320009

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->TRANSLATE3:F

    .line 55
    const v0, 0x32000a

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->SCALE_X:F

    .line 58
    const v0, 0x32000b

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->SCALE_Y:F

    .line 61
    const v0, 0x32000c

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->SCALE_Z:F

    .line 64
    const v0, 0x32000d

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->SCALE2:F

    .line 67
    const v0, 0x32000e

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->SCALE3:F

    .line 70
    const v0, 0x32000f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->MUL:F

    .line 73
    const v0, 0x320010

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->ROT_PZ:F

    .line 76
    const v0, 0x320011

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->ROT_AXIS:F

    .line 79
    const v0, 0x320012

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->PROJECTION:F

    .line 90
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    .line 169
    nop

    .line 170
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "NOP"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "+"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "-"

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "*"

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "/"

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "%"

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "min"

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "max"

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string/jumbo v1, "pow"

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string/jumbo v1, "sqrt"

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "abs"

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string/jumbo v1, "sign"

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "copySign"

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "exp"

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "floor"

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "log"

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "ln"

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string/jumbo v1, "round"

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string/jumbo v1, "sin"

    const/16 v2, 0x12

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "cos"

    const/16 v2, 0x13

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string/jumbo v1, "tan"

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "asin"

    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 293
    const/16 v0, 0x27

    new-array v0, v0, [I

    fill-array-data v0, :array_178

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->NO_OF_OPS:[I

    return-void

    :array_178
    .array-data 4
        -0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x3
        0x3
        0x3
        0x1
        0x1
        0x1
        0x1
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x2
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 6

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrices:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    .line 93
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mTmpMatrix:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrixIndex:I

    .line 97
    const/4 v0, 0x0

    move v1, v0

    :goto_15
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrices:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    array-length v2, v2

    if-ge v1, v2, :cond_27

    .line 98
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrices:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    new-instance v3, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    const/4 v4, 0x4

    invoke-direct {v3, v4, v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;-><init>(II)V

    aput-object v3, v2, v1

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 102
    :cond_27
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mStack:[F

    .line 104
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mVar:[F

    return-void
.end method

.method public static blacklist asNan(I)F
    .registers 2

    .line 323
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    or-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static blacklist fromNaN(F)I
    .registers 2

    .line 333
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    .line 334
    const v0, 0x7fffff

    and-int/2addr p0, v0

    return p0
.end method

.method public static blacklist getMaxOpForLevel(I)I
    .registers 2

    .line 117
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 118
    const p0, 0x320036

    return p0

    .line 120
    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method static blacklist infix(I)Z
    .registers 2

    .line 313
    const/4 v0, 0x6

    if-lt p0, v0, :cond_e

    const/16 v0, 0x19

    if-eq p0, v0, :cond_e

    const/16 v0, 0x1a

    if-ne p0, v0, :cond_c

    goto :goto_e

    :cond_c
    const/4 p0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 p0, 0x1

    :goto_f
    return p0
.end method

.method public static blacklist isOperator(F)Z
    .registers 3

    .line 131
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 132
    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->fromNaN(F)I

    move-result v0

    .line 135
    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result p0

    if-eqz p0, :cond_12

    .line 136
    return v1

    .line 138
    :cond_12
    const/high16 p0, 0x320000

    if-le v0, p0, :cond_1c

    const p0, 0x320036

    if-gt v0, p0, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1

    .line 140
    :cond_1d
    return v1
.end method

.method public static blacklist toMathName(F)Ljava/lang/String;
    .registers 2

    .line 202
    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->fromNaN(F)I

    move-result p0

    const/high16 v0, 0x320000

    sub-int/2addr p0, v0

    .line 203
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method static blacklist toString([FI)Ljava/lang/String;
    .registers 8

    .line 246
    aget v0, p0, p1

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_149

    .line 247
    aget v0, p0, p1

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->fromNaN(F)I

    move-result v0

    const/high16 v1, 0x320000

    sub-int/2addr v0, v1

    .line 248
    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->NO_OF_OPS:[I

    aget v1, v1, v0

    const-string v2, ") "

    const-string v3, ")"

    const-string v4, ", "

    const-string v5, "("

    packed-switch v1, :pswitch_data_150

    :pswitch_20
    goto/16 :goto_149

    .line 270
    :pswitch_22
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->infix(I)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    .line 272
    invoke-static {p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->toString([FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x2

    .line 274
    invoke-static {p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->toString([FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 p1, p1, 0x3

    .line 276
    invoke-static {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->toString([FI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 271
    return-object p0

    .line 279
    :cond_66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    .line 281
    invoke-static {p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->toString([FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x2

    .line 283
    invoke-static {p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->toString([FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 p1, p1, 0x3

    .line 285
    invoke-static {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->toString([FI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 279
    return-object p0

    .line 254
    :pswitch_aa
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->infix(I)Z

    move-result v1

    if-eqz v1, :cond_e8

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v3, p1, 0x1

    .line 256
    invoke-static {p0, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->toString([FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    .line 257
    invoke-virtual {v3, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 p1, p1, 0x2

    .line 259
    invoke-static {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->toString([FI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 255
    return-object p0

    .line 262
    :cond_e8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    .line 264
    invoke-static {p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->toString([FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 p1, p1, 0x2

    .line 266
    invoke-static {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->toString([FI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 262
    return-object p0

    .line 252
    :pswitch_11e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->toString([FI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 250
    :pswitch_146
    const-string p0, "nop"

    return-object p0

    .line 290
    :cond_149
    :goto_149
    aget p0, p0, p1

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_150
    .packed-switch -0x1
        :pswitch_146
        :pswitch_20
        :pswitch_11e
        :pswitch_aa
        :pswitch_22
    .end packed-switch
.end method

.method public static blacklist toString([F[Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    const/4 v1, 0x0

    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_7c

    .line 217
    aget v2, p0, v1

    .line 218
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 219
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->isOperator(F)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 220
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->toMathName(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_74

    .line 222
    :cond_1f
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->fromNaN(F)I

    move-result v2

    .line 224
    const/high16 v3, 0x200000

    if-le v2, v3, :cond_37

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "A_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0xfffff

    and-int/2addr v2, v4

    goto :goto_42

    :cond_37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    :goto_42
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 225
    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    goto :goto_74

    .line 230
    :cond_58
    if-eqz p1, :cond_71

    aget-object v3, p1, v1

    if-eqz v3, :cond_71

    .line 231
    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    aget-object v3, p1, v1

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_74

    .line 233
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_74

    .line 236
    :cond_71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 239
    :cond_74
    :goto_74
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 241
    :cond_7c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public varargs blacklist eval([F[F)Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;
    .registers 5

    .line 155
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mStack:[F

    .line 156
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mVar:[F

    .line 157
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrixIndex:I

    .line 158
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrices:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrixIndex:I

    aget-object p2, p2, v0

    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->setIdentity()V

    .line 159
    move p2, p1

    :goto_11
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mStack:[F

    array-length v0, v0

    if-ge p2, v0, :cond_2a

    .line 160
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mStack:[F

    aget v0, v0, p2

    .line 161
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 162
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->fromNaN(F)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->opEval(II)V

    .line 159
    :cond_27
    add-int/lit8 p2, p2, 0x1

    goto :goto_11

    .line 165
    :cond_2a
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrices:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    aget-object p1, p2, p1

    return-object p1
.end method

.method blacklist opEval(II)V
    .registers 7

    .line 360
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_190

    .line 421
    return-void

    .line 417
    :pswitch_7
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrices:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrixIndex:I

    aget-object p2, p2, v0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mStack:[F

    add-int/lit8 v1, p1, -0x4

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mStack:[F

    add-int/lit8 v2, p1, -0x3

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mStack:[F

    add-int/lit8 v3, p1, -0x2

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mStack:[F

    add-int/lit8 p1, p1, -0x1

    aget p1, v3, p1

    invoke-virtual {p2, v0, v1, v2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->projection(FFFF)V

    .line 419
    return-void

    .line 413
    :pswitch_29
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrices:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrixIndex:I

    aget-object p2, p2, v0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mStack:[F

    add-int/lit8 v1, p1, -0x3

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mStack:[F

    add-int/lit8 v2, p1, -0x2

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mStack:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mStack:[F

    add-int/lit8 p1, p1, -0x4

    aget p1, v3, p1

    invoke-virtual {p2, v0, v1, v2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->rotateAroundAxis(FFFF)V

    .line 415
    return-void

    .line 409
    :pswitch_4b
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrices:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrixIndex:I

    aget-object p2, p2, v0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mStack:[F

    add-int/lit8 v1, p1, -0x2

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mStack:[F

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mStack:[F

    add-int/lit8 p1, p1, -0x3

    aget p1, v2, p1

    invoke-virtual {p2, v0, v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->rotateZ(FFF)V

    .line 411
    return-void

    .line 404
    :pswitch_67
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrices:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrixIndex:I

    add-int/lit8 p2, p2, -0x1

    aget-object p1, p1, p2

    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrices:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrixIndex:I

    aget-object p2, p2, v0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mTmpMatrix:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    invoke-static {p1, p2, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->multiply(Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;)V

    .line 405
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrices:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrixIndex:I

    add-int/lit8 p2, p2, -0x1

    aget-object p1, p1, p2

    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mTmpMatrix:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->copyFrom(Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;)V

    .line 406
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrixIndex:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrixIndex:I

    .line 407
    return-void

    .line 401
    :pswitch_8e
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrices:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrixIndex:I

    aget-object p2, p2, v0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mStack:[F

    add-int/lit8 v1, p1, -0x3

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mStack:[F

    add-int/lit8 v2, p1, -0x2

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mStack:[F

    add-int/lit8 p1, p1, -0x1

    aget p1, v2, p1

    invoke-virtual {p2, v0, v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->setScale(FFF)V

    .line 402
    return-void

    .line 398
    :pswitch_aa
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrices:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrixIndex:I

    aget-object p2, p2, v0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mStack:[F

    add-int/lit8 v2, p1, -0x2

    aget v0, v0, v2

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mStack:[F

    add-int/lit8 p1, p1, -0x1

    aget p1, v2, p1

    invoke-virtual {p2, v0, p1, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->setScale(FFF)V

    .line 399
    return-void

    .line 395
    :pswitch_c0
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrices:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrixIndex:I

    aget-object p2, p2, v1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mStack:[F

    add-int/lit8 p1, p1, -0x1

    aget p1, v1, p1

    invoke-virtual {p2, v0, v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->setScale(FFF)V

    .line 396
    return-void

    .line 392
    :pswitch_d0
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrices:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrixIndex:I

    aget-object p2, p2, v1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mStack:[F

    add-int/lit8 p1, p1, -0x1

    aget p1, v1, p1

    invoke-virtual {p2, v0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->setScale(FFF)V

    .line 393
    return-void

    .line 389
    :pswitch_e0
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrices:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrixIndex:I

    aget-object p2, p2, v1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mStack:[F

    add-int/lit8 p1, p1, -0x1

    aget p1, v1, p1

    invoke-virtual {p2, p1, v0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->setScale(FFF)V

    .line 390
    return-void

    .line 386
    :pswitch_f0
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrices:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrixIndex:I

    aget-object p2, p2, v0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mStack:[F

    add-int/lit8 v1, p1, -0x3

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mStack:[F

    add-int/lit8 v2, p1, -0x2

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mStack:[F

    add-int/lit8 p1, p1, -0x1

    aget p1, v2, p1

    invoke-virtual {p2, v0, v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->translate(FFF)V

    .line 387
    return-void

    .line 383
    :pswitch_10c
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrices:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrixIndex:I

    aget-object p2, p2, v0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mStack:[F

    add-int/lit8 v2, p1, -0x2

    aget v0, v0, v2

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mStack:[F

    add-int/lit8 p1, p1, -0x1

    aget p1, v2, p1

    invoke-virtual {p2, v0, p1, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->translate(FFF)V

    .line 384
    return-void

    .line 380
    :pswitch_122
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrices:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrixIndex:I

    aget-object p2, p2, v0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mStack:[F

    add-int/lit8 p1, p1, -0x1

    aget p1, v0, p1

    invoke-virtual {p2, v1, v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->translate(FFF)V

    .line 381
    return-void

    .line 377
    :pswitch_132
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrices:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrixIndex:I

    aget-object p2, p2, v0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mStack:[F

    add-int/lit8 p1, p1, -0x1

    aget p1, v0, p1

    invoke-virtual {p2, v1, p1, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->translate(FFF)V

    .line 378
    return-void

    .line 374
    :pswitch_142
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrices:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrixIndex:I

    aget-object p2, p2, v0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mStack:[F

    add-int/lit8 p1, p1, -0x1

    aget p1, v0, p1

    invoke-virtual {p2, p1, v1, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->translate(FFF)V

    .line 375
    return-void

    .line 371
    :pswitch_152
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrices:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrixIndex:I

    aget-object p2, p2, v0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mStack:[F

    add-int/lit8 p1, p1, -0x1

    aget p1, v0, p1

    invoke-virtual {p2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->rotateZ(F)V

    .line 372
    return-void

    .line 368
    :pswitch_162
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrices:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrixIndex:I

    aget-object p2, p2, v0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mStack:[F

    add-int/lit8 p1, p1, -0x1

    aget p1, v0, p1

    invoke-virtual {p2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->rotateY(F)V

    .line 369
    return-void

    .line 365
    :pswitch_172
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrices:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrixIndex:I

    aget-object p2, p2, v0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mStack:[F

    add-int/lit8 p1, p1, -0x1

    aget p1, v0, p1

    invoke-virtual {p2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->rotateX(F)V

    .line 366
    return-void

    .line 362
    :pswitch_182
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrices:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrixIndex:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->mMatrixIndex:I

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->setIdentity()V

    .line 363
    return-void

    :pswitch_data_190
    .packed-switch 0x320001
        :pswitch_182
        :pswitch_172
        :pswitch_162
        :pswitch_152
        :pswitch_142
        :pswitch_132
        :pswitch_122
        :pswitch_10c
        :pswitch_f0
        :pswitch_e0
        :pswitch_d0
        :pswitch_c0
        :pswitch_aa
        :pswitch_8e
        :pswitch_67
        :pswitch_4b
        :pswitch_29
        :pswitch_7
    .end packed-switch
.end method
