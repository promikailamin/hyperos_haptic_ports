.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;
.super Ljava/lang/Object;
.source "IntegerExpressionEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator$Op;
    }
.end annotation


# static fields
.field public static final blacklist I_ABS:I = 0x10010

.field public static final blacklist I_ADD:I = 0x10001

.field public static final blacklist I_AND:I = 0x1000a

.field public static final blacklist I_CLAMP:I = 0x10015

.field public static final blacklist I_COPY_SIGN:I = 0x1000c

.field public static final blacklist I_DECR:I = 0x10012

.field public static final blacklist I_DIV:I = 0x10004

.field public static final blacklist I_IFELSE:I = 0x10016

.field public static final blacklist I_INCR:I = 0x10011

.field public static final blacklist I_MAD:I = 0x10017

.field public static final blacklist I_MAX:I = 0x1000e

.field public static final blacklist I_MIN:I = 0x1000d

.field public static final blacklist I_MOD:I = 0x10005

.field public static final blacklist I_MUL:I = 0x10003

.field public static final blacklist I_NEG:I = 0x1000f

.field public static final blacklist I_NOT:I = 0x10013

.field public static final blacklist I_OR:I = 0x10009

.field public static final blacklist I_SHL:I = 0x10006

.field public static final blacklist I_SHR:I = 0x10007

.field public static final blacklist I_SIGN:I = 0x10014

.field public static final blacklist I_SUB:I = 0x10002

.field public static final blacklist I_USHR:I = 0x10008

.field public static final blacklist I_VAR1:I = 0x10018

.field public static final blacklist I_VAR2:I = 0x10019

.field public static final blacklist I_XOR:I = 0x1000b

.field public static final blacklist LAST_OP:F = 25.0f

.field static final blacklist NO_OF_OPS:[I

.field public static final blacklist OFFSET:I = 0x10000

.field private static final blacklist OP_ABS:I = 0x10010

.field private static final blacklist OP_ADD:I = 0x10001

.field private static final blacklist OP_AND:I = 0x1000a

.field private static final blacklist OP_CLAMP:I = 0x10015

.field private static final blacklist OP_COPY_SIGN:I = 0x1000c

.field private static final blacklist OP_DECR:I = 0x10012

.field private static final blacklist OP_DIV:I = 0x10004

.field private static final blacklist OP_FIRST_VAR:I = 0x10018

.field private static final blacklist OP_INCR:I = 0x10011

.field private static final blacklist OP_MAD:I = 0x10017

.field private static final blacklist OP_MAX:I = 0x1000e

.field private static final blacklist OP_MIN:I = 0x1000d

.field private static final blacklist OP_MOD:I = 0x10005

.field private static final blacklist OP_MUL:I = 0x10003

.field private static final blacklist OP_NEG:I = 0x1000f

.field private static final blacklist OP_NOT:I = 0x10013

.field private static final blacklist OP_OR:I = 0x10009

.field private static final blacklist OP_SECOND_VAR:I = 0x10019

.field private static final blacklist OP_SHL:I = 0x10006

.field private static final blacklist OP_SHR:I = 0x10007

.field private static final blacklist OP_SIGN:I = 0x10014

.field private static final blacklist OP_SUB:I = 0x10002

.field private static final blacklist OP_TERNARY_CONDITIONAL:I = 0x10016

.field private static final blacklist OP_THIRD_VAR:I = 0x1001a

.field private static final blacklist OP_USHR:I = 0x10008

.field private static final blacklist OP_XOR:I = 0x1000b

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
.field blacklist mLocalStack:[I

.field blacklist mStack:[I

.field blacklist mVar:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 28
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    .line 278
    nop

    .line 279
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "NOP"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "+"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "-"

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "*"

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "/"

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "%"

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "<<"

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, ">>"

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, ">>>"

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string/jumbo v1, "|"

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "&"

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "^"

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "copySign"

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "min"

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "max"

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "neg"

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "abs"

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "incr"

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "decr"

    const/16 v2, 0x12

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "not"

    const/16 v2, 0x13

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string/jumbo v1, "sign"

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "clamp"

    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "ifElse"

    const/16 v2, 0x16

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "mad"

    const/16 v2, 0x17

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "ceil"

    const/16 v2, 0x18

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "a[0]"

    const/16 v2, 0x19

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "a[1]"

    const/16 v2, 0x1a

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "a[2]"

    const/16 v2, 0x1b

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 448
    new-array v0, v2, [I

    fill-array-data v0, :array_106

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->NO_OF_OPS:[I

    return-void

    :array_106
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
        0x3
        0x3
        0x3
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    .line 63
    const/16 v1, 0x80

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mLocalStack:[I

    .line 64
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mVar:[I

    return-void
.end method

.method static blacklist infix(I)Z
    .registers 2

    .line 486
    const/16 v0, 0xc

    if-ge p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static blacklist isOperation(II)Z
    .registers 3

    .line 497
    const/4 v0, 0x1

    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static blacklist toMathName(I)Ljava/lang/String;
    .registers 2

    .line 317
    const/high16 v0, 0x10000

    sub-int/2addr p0, v0

    .line 318
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static blacklist toString(I[I)Ljava/lang/String;
    .registers 7

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    invoke-static {p0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    const/4 v1, 0x0

    :goto_12
    array-length v2, p1

    if-ge v1, v2, :cond_54

    .line 367
    aget v2, p1, v1

    .line 369
    const/4 v3, 0x1

    shl-int/2addr v3, v1

    and-int/2addr v3, p0

    const-string v4, " "

    if-eqz v3, :cond_3d

    .line 370
    const/high16 v3, 0x10000

    if-le v2, v3, :cond_30

    .line 371
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->toMathName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 376
    :cond_30
    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 378
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    :cond_3d
    :goto_3d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 383
    :cond_54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static blacklist toString(I[II)Ljava/lang/String;
    .registers 10

    .line 400
    const/4 v0, 0x1

    shl-int v1, v0, p2

    and-int/2addr v1, p0

    if-eqz v1, :cond_142

    .line 401
    aget v1, p1, p2

    const/high16 v2, 0x10000

    sub-int/2addr v1, v2

    .line 402
    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->NO_OF_OPS:[I

    aget v2, v2, v1

    const-string v3, ") "

    const-string v4, ")"

    const-string v5, ", "

    const-string v6, "("

    packed-switch v2, :pswitch_data_14a

    :pswitch_1a
    goto/16 :goto_142

    .line 425
    :pswitch_1c
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->infix(I)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p2, 0x3

    .line 427
    invoke-static {p0, p1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->toString(I[II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p2, -0x2

    .line 429
    invoke-static {p0, p1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->toString(I[II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-int/2addr p2, v0

    .line 431
    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->toString(I[II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 426
    return-object p0

    .line 434
    :cond_5f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p2, -0x3

    .line 436
    invoke-static {p0, p1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->toString(I[II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p2, -0x2

    .line 438
    invoke-static {p0, p1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->toString(I[II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-int/2addr p2, v0

    .line 440
    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->toString(I[II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 434
    return-object p0

    .line 408
    :pswitch_a2
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->infix(I)Z

    move-result v2

    if-eqz v2, :cond_e3

    .line 409
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v4, p2, -0x2

    .line 410
    invoke-static {p0, p1, v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->toString(I[II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    .line 412
    invoke-virtual {v5, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-int/2addr p2, v0

    .line 414
    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->toString(I[II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 409
    return-object p0

    .line 417
    :cond_e3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p2, -0x2

    .line 419
    invoke-static {p0, p1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->toString(I[II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-int/2addr p2, v0

    .line 421
    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->toString(I[II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 417
    return-object p0

    .line 406
    :pswitch_118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v4, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-int/2addr p2, v0

    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->toString(I[II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 404
    :pswitch_13f
    const-string p0, "nop"

    return-object p0

    .line 445
    :cond_142
    :goto_142
    aget p0, p1, p2

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_14a
    .packed-switch -0x1
        :pswitch_13f
        :pswitch_1a
        :pswitch_118
        :pswitch_a2
        :pswitch_1c
    .end packed-switch
.end method

.method public static blacklist toString(I[I[Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 332
    const/4 v1, 0x0

    :goto_6
    array-length v2, p1

    if-ge v1, v2, :cond_3e

    .line 333
    aget v2, p1, v1

    .line 335
    const/4 v3, 0x1

    shl-int/2addr v3, v1

    and-int/2addr v3, p0

    if-eqz v3, :cond_2a

    .line 336
    const/high16 v3, 0x10000

    if-ge v2, v3, :cond_1c

    .line 337
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->toMathName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_36

    .line 339
    :cond_1c
    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 341
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_36

    .line 344
    :cond_2a
    aget-object v3, p2, v1

    if-eqz v3, :cond_33

    .line 345
    aget-object v3, p2, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    :cond_33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 349
    :goto_36
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 351
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist toStringInfix(I[I)Ljava/lang/String;
    .registers 3

    .line 395
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->toString(I[II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public varargs blacklist eval(I[II[I)I
    .registers 7

    .line 103
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mLocalStack:[I

    const/4 v1, 0x0

    invoke-static {p2, v1, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mLocalStack:[I

    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    .line 105
    iput-object p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mVar:[I

    .line 106
    nop

    .line 107
    const/4 p2, -0x1

    :goto_e
    if-ge v1, p3, :cond_27

    .line 108
    iget-object p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget p4, p4, v1

    .line 109
    const/4 v0, 0x1

    shl-int/2addr v0, v1

    and-int/2addr v0, p1

    if-eqz v0, :cond_1e

    .line 110
    invoke-virtual {p0, p2, p4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->opEval(II)I

    move-result p2

    goto :goto_24

    .line 112
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 p2, p2, 0x1

    aput p4, v0, p2

    .line 107
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 115
    :cond_27
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget p1, p1, p2

    return p1
.end method

.method public varargs blacklist eval(I[I[I)I
    .registers 6

    .line 79
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    .line 80
    iput-object p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mVar:[I

    .line 81
    nop

    .line 82
    const/4 p2, -0x1

    const/4 p3, 0x0

    :goto_7
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    array-length v0, v0

    if-ge p3, v0, :cond_23

    .line 83
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v0, v0, p3

    .line 84
    const/4 v1, 0x1

    shl-int/2addr v1, p3

    and-int/2addr v1, p1

    if-eqz v1, :cond_1a

    .line 85
    invoke-virtual {p0, p2, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->opEval(II)I

    move-result p2

    goto :goto_20

    .line 87
    :cond_1a
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 p2, p2, 0x1

    aput v0, v1, p2

    .line 82
    :goto_20
    add-int/lit8 p3, p3, 0x1

    goto :goto_7

    .line 90
    :cond_23
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget p1, p1, p2

    return p1
.end method

.method public varargs blacklist evalDB(I[I[I)I
    .registers 7

    .line 127
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    .line 128
    iput-object p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mVar:[I

    .line 129
    nop

    .line 130
    const/4 p3, -0x1

    const/4 v0, 0x0

    :goto_7
    array-length v1, p2

    if-ge v0, v1, :cond_21

    .line 131
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v1, v1, v0

    .line 132
    const/4 v2, 0x1

    shl-int/2addr v2, v0

    and-int/2addr v2, p1

    if-eqz v2, :cond_18

    .line 133
    invoke-virtual {p0, p3, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->opEval(II)I

    move-result p3

    goto :goto_1e

    .line 135
    :cond_18
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 p3, p3, 0x1

    aput v1, v2, p3

    .line 130
    :goto_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 138
    :cond_21
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget p1, p1, p3

    return p1
.end method

.method blacklist opEval(II)I
    .registers 7

    .line 169
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_1a6

    .line 274
    return v0

    .line 271
    :pswitch_6
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mVar:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    aput v0, p2, p1

    .line 272
    return p1

    .line 267
    :pswitch_10
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mVar:[I

    aget v0, v0, v1

    aput v0, p2, p1

    .line 268
    return p1

    .line 263
    :pswitch_19
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mVar:[I

    aget v0, v1, v0

    aput v0, p2, p1

    .line 264
    return p1

    .line 259
    :pswitch_22
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v0, p1, -0x2

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v2, v2, p1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    sub-int/2addr p1, v1

    aget p1, v3, p1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v1, v1, v0

    mul-int/2addr p1, v1

    add-int/2addr v2, p1

    aput v2, p2, v0

    .line 260
    return v0

    .line 255
    :pswitch_38
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v0, p1, -0x2

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v2, v2, p1

    if-lez v2, :cond_48

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    sub-int/2addr p1, v1

    aget p1, v2, p1

    goto :goto_4c

    :cond_48
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget p1, p1, v0

    :goto_4c
    aput p1, p2, v0

    .line 256
    return v0

    .line 251
    :pswitch_4f
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v0, p1, -0x2

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v3, v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    sub-int/2addr p1, v1

    aget p1, v3, p1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    aput p1, p2, v0

    .line 252
    return v0

    .line 247
    :pswitch_6b
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v0, v0, p1

    shr-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v1, v1, p1

    neg-int v1, v1

    ushr-int/lit8 v1, v1, 0x1f

    or-int/2addr v0, v1

    aput v0, p2, p1

    .line 248
    return p1

    .line 243
    :pswitch_7e
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v0, v0, p1

    not-int v0, v0

    aput v0, p2, p1

    .line 244
    return p1

    .line 239
    :pswitch_88
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v0, v0, p1

    sub-int/2addr v0, v1

    aput v0, p2, p1

    .line 240
    return p1

    .line 235
    :pswitch_92
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v0, v0, p1

    add-int/2addr v0, v1

    aput v0, p2, p1

    .line 236
    return p1

    .line 231
    :pswitch_9c
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    aput v0, p2, p1

    .line 232
    return p1

    .line 227
    :pswitch_a9
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v0, v0, p1

    neg-int v0, v0

    aput v0, p2, p1

    .line 228
    return p1

    .line 223
    :pswitch_b3
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget p1, v2, p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    aput p1, p2, v0

    .line 224
    return v0

    .line 219
    :pswitch_c6
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget p1, v2, p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    aput p1, p2, v0

    .line 220
    return v0

    .line 215
    :pswitch_d9
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v2, v2, p1

    shr-int/lit8 v2, v2, 0x1f

    xor-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget p1, v2, p1

    shr-int/lit8 p1, p1, 0x1f

    sub-int/2addr v1, p1

    aput v1, p2, v0

    .line 216
    return v0

    .line 211
    :pswitch_f2
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget p1, v2, p1

    xor-int/2addr p1, v1

    aput p1, p2, v0

    .line 212
    return v0

    .line 207
    :pswitch_102
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget p1, v2, p1

    and-int/2addr p1, v1

    aput p1, p2, v0

    .line 208
    return v0

    .line 203
    :pswitch_112
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget p1, v2, p1

    or-int/2addr p1, v1

    aput p1, p2, v0

    .line 204
    return v0

    .line 199
    :pswitch_122
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget p1, v2, p1

    ushr-int p1, v1, p1

    aput p1, p2, v0

    .line 200
    return v0

    .line 195
    :pswitch_133
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget p1, v2, p1

    shr-int p1, v1, p1

    aput p1, p2, v0

    .line 196
    return v0

    .line 191
    :pswitch_144
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget p1, v2, p1

    shl-int p1, v1, p1

    aput p1, p2, v0

    .line 192
    return v0

    .line 187
    :pswitch_155
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget p1, v2, p1

    rem-int/2addr v1, p1

    aput v1, p2, v0

    .line 188
    return v0

    .line 183
    :pswitch_165
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget p1, v2, p1

    div-int/2addr v1, p1

    aput v1, p2, v0

    .line 184
    return v0

    .line 179
    :pswitch_175
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget p1, v2, p1

    mul-int/2addr v1, p1

    aput v1, p2, v0

    .line 180
    return v0

    .line 175
    :pswitch_185
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget p1, v2, p1

    sub-int/2addr v1, p1

    aput v1, p2, v0

    .line 176
    return v0

    .line 171
    :pswitch_195
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget p1, v2, p1

    add-int/2addr v1, p1

    aput v1, p2, v0

    .line 172
    return v0

    nop

    :pswitch_data_1a6
    .packed-switch 0x10001
        :pswitch_195
        :pswitch_185
        :pswitch_175
        :pswitch_165
        :pswitch_155
        :pswitch_144
        :pswitch_133
        :pswitch_122
        :pswitch_112
        :pswitch_102
        :pswitch_f2
        :pswitch_d9
        :pswitch_c6
        :pswitch_b3
        :pswitch_a9
        :pswitch_9c
        :pswitch_92
        :pswitch_88
        :pswitch_7e
        :pswitch_6b
        :pswitch_4f
        :pswitch_38
        :pswitch_22
        :pswitch_19
        :pswitch_10
        :pswitch_6
    .end packed-switch
.end method
