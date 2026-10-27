.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;
.super Ljava/lang/Object;
.source "AnimatedFloatExpression.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression$Op;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final blacklist ABS:F

.field public static final blacklist ACOS:F

.field public static final blacklist ADD:F

.field private static final blacklist API_LEVEL6_MAX:I = 0x310032

.field public static final blacklist ASIN:F

.field public static final blacklist ATAN:F

.field public static final blacklist ATAN2:F

.field public static final blacklist A_AVG:F

.field public static final blacklist A_DEREF:F

.field public static final blacklist A_LEN:F

.field public static final blacklist A_MAX:F

.field public static final blacklist A_MIN:F

.field public static final blacklist A_SPLINE:F

.field public static final blacklist A_SUM:F

.field public static final blacklist CBRT:F

.field public static final blacklist CEIL:F

.field public static final blacklist CLAMP:F

.field public static final blacklist COPY_SIGN:F

.field public static final blacklist COS:F

.field public static final blacklist DEG:F

.field public static final blacklist DIV:F

.field public static final blacklist DUP:F

.field public static final blacklist EXP:F

.field public static final blacklist FLOOR:F

.field private static final blacklist FP_TO_DEG:F = 0.017453292f

.field private static final blacklist FP_TO_RAD:F = 57.29578f

.field public static final blacklist FRACT:F

.field public static final blacklist HYPOT:F

.field public static final blacklist IFELSE:F

.field public static final blacklist INV:F

.field public static final blacklist LAST_OP:I = 0x310036

.field public static final blacklist LERP:F

.field public static final blacklist LN:F

.field public static final blacklist LOG:F

.field public static final blacklist LOG2:F

.field public static final blacklist MAD:F

.field public static final blacklist MAX:F

.field public static final blacklist MIN:F

.field public static final blacklist MOD:F

.field public static final blacklist MUL:F

.field public static final blacklist NOISE_FROM:F

.field static final blacklist NO_OF_OPS:[I

.field public static final blacklist OFFSET:I = 0x310000

.field private static final blacklist OP_ABS:I = 0x31000a

.field private static final blacklist OP_ACOS:I = 0x310016

.field private static final blacklist OP_ADD:I = 0x310001

.field private static final blacklist OP_ASIN:I = 0x310015

.field private static final blacklist OP_ATAN:I = 0x310017

.field private static final blacklist OP_ATAN2:I = 0x310018

.field private static final blacklist OP_A_AVG:I = 0x310024

.field private static final blacklist OP_A_DEREF:I = 0x310020

.field private static final blacklist OP_A_LEN:I = 0x310025

.field private static final blacklist OP_A_MAX:I = 0x310021

.field private static final blacklist OP_A_MIN:I = 0x310022

.field private static final blacklist OP_A_SPLINE:I = 0x310026

.field private static final blacklist OP_A_SUM:I = 0x310023

.field private static final blacklist OP_CBRT:I = 0x31001c

.field private static final blacklist OP_CEIL:I = 0x31001f

.field private static final blacklist OP_CLAMP:I = 0x31001b

.field private static final blacklist OP_COPY_SIGN:I = 0x31000c

.field private static final blacklist OP_COS:I = 0x310013

.field private static final blacklist OP_DEG:I = 0x31001d

.field private static final blacklist OP_DIV:I = 0x310004

.field private static final blacklist OP_DUP:I = 0x31002e

.field private static final blacklist OP_EXP:I = 0x31000d

.field private static final blacklist OP_FIRST_VAR:I = 0x310046

.field private static final blacklist OP_FLOOR:I = 0x31000e

.field private static final blacklist OP_FRACT:I = 0x310035

.field private static final blacklist OP_HYPOT:I = 0x31002f

.field private static final blacklist OP_INV:I = 0x310034

.field private static final blacklist OP_LERP:I = 0x310031

.field private static final blacklist OP_LN:I = 0x310010

.field private static final blacklist OP_LOG:I = 0x31000f

.field private static final blacklist OP_LOG2:I = 0x310033

.field private static final blacklist OP_MAD:I = 0x310019

.field private static final blacklist OP_MAX:I = 0x310007

.field private static final blacklist OP_MIN:I = 0x310006

.field private static final blacklist OP_MOD:I = 0x310005

.field private static final blacklist OP_MUL:I = 0x310003

.field private static final blacklist OP_NOISE_FROM:I = 0x310029

.field private static final blacklist OP_PINGPONG:I = 0x310036

.field private static final blacklist OP_POW:I = 0x310008

.field private static final blacklist OP_RAD:I = 0x31001e

.field private static final blacklist OP_RAND:I = 0x310027

.field private static final blacklist OP_RAND_IN_RANGE:I = 0x31002a

.field private static final blacklist OP_RAND_SEED:I = 0x310028

.field private static final blacklist OP_ROUND:I = 0x310011

.field private static final blacklist OP_SECOND_VAR:I = 0x310047

.field private static final blacklist OP_SIGN:I = 0x31000b

.field private static final blacklist OP_SIN:I = 0x310012

.field private static final blacklist OP_SMOOTH_STEP:I = 0x310032

.field private static final blacklist OP_SQRT:I = 0x310009

.field private static final blacklist OP_SQUARE:I = 0x31002d

.field private static final blacklist OP_SQUARE_SUM:I = 0x31002b

.field private static final blacklist OP_STEP:I = 0x31002c

.field private static final blacklist OP_SUB:I = 0x310002

.field private static final blacklist OP_SWAP:I = 0x310030

.field private static final blacklist OP_TAN:I = 0x310014

.field private static final blacklist OP_TERNARY_CONDITIONAL:I = 0x31001a

.field private static final blacklist OP_THIRD_VAR:I = 0x310048

.field public static final blacklist PINGPONG:F

.field public static final blacklist POW:F

.field public static final blacklist RAD:F

.field public static final blacklist RAND:F

.field public static final blacklist RAND_IN_RANGE:F

.field public static final blacklist RAND_SEED:F

.field public static final blacklist ROUND:F

.field public static final blacklist SIGN:F

.field public static final blacklist SIN:F

.field public static final blacklist SMOOTH_STEP:F

.field public static final blacklist SQRT:F

.field public static final blacklist SQUARE:F

.field public static final blacklist SQUARE_SUM:F

.field public static final blacklist STEP:F

.field public static final blacklist SUB:F

.field public static final blacklist SWAP:F

.field public static final blacklist TAN:F

.field public static final blacklist VAR1:F

.field public static final blacklist VAR2:F

.field public static final blacklist VAR3:F

.field static blacklist sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sRandom:Ljava/util/Random;


# instance fields
.field blacklist mCollectionsAccess:Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

.field blacklist mLocalStack:[F

.field blacklist mSplineMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mStack:[F

.field blacklist mVar:[F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 26
    nop

    .line 27
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    .line 33
    const v0, 0x310001    # 4.499941E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->ADD:F

    .line 36
    const v0, 0x310002    # 4.499942E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->SUB:F

    .line 39
    const v0, 0x310003    # 4.499944E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->MUL:F

    .line 42
    const v0, 0x310004    # 4.499945E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->DIV:F

    .line 45
    const v0, 0x310005    # 4.499946E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->MOD:F

    .line 48
    const v0, 0x310006    # 4.499948E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->MIN:F

    .line 51
    const v0, 0x310007    # 4.499949E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->MAX:F

    .line 54
    const v0, 0x310008    # 4.49995E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->POW:F

    .line 57
    const v0, 0x310009    # 4.499952E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->SQRT:F

    .line 60
    const v0, 0x31000a    # 4.499953E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->ABS:F

    .line 63
    const v0, 0x31000b    # 4.499955E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->SIGN:F

    .line 66
    const v0, 0x31000c    # 4.499956E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->COPY_SIGN:F

    .line 69
    const v0, 0x31000d    # 4.499958E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->EXP:F

    .line 72
    const v0, 0x31000e    # 4.499959E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->FLOOR:F

    .line 75
    const v0, 0x31000f    # 4.49996E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->LOG:F

    .line 78
    const v0, 0x310010    # 4.499962E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->LN:F

    .line 81
    const v0, 0x310011    # 4.499963E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->ROUND:F

    .line 84
    const v0, 0x310012    # 4.499965E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->SIN:F

    .line 87
    const v0, 0x310013    # 4.499966E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->COS:F

    .line 90
    const v0, 0x310014    # 4.499967E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->TAN:F

    .line 93
    const v0, 0x310015    # 4.499969E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->ASIN:F

    .line 96
    const v0, 0x310016    # 4.49997E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->ACOS:F

    .line 99
    const v0, 0x310017    # 4.499972E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->ATAN:F

    .line 102
    const v0, 0x310018    # 4.499973E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->ATAN2:F

    .line 105
    const v0, 0x310019    # 4.499974E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->MAD:F

    .line 108
    const v0, 0x31001a    # 4.499976E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->IFELSE:F

    .line 111
    const v0, 0x31001b    # 4.499977E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->CLAMP:F

    .line 114
    const v0, 0x31001c    # 4.499979E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->CBRT:F

    .line 117
    const v0, 0x31001d    # 4.49998E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->DEG:F

    .line 120
    const v0, 0x31001e    # 4.499981E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->RAD:F

    .line 123
    const v0, 0x31001f    # 4.499983E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->CEIL:F

    .line 127
    const v0, 0x310020    # 4.499984E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->A_DEREF:F

    .line 130
    const v0, 0x310021    # 4.499986E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->A_MAX:F

    .line 133
    const v0, 0x310022    # 4.499987E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->A_MIN:F

    .line 136
    const v0, 0x310023    # 4.499988E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->A_SUM:F

    .line 139
    const v0, 0x310024    # 4.49999E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->A_AVG:F

    .line 142
    const v0, 0x310025    # 4.499991E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->A_LEN:F

    .line 145
    const v0, 0x310026    # 4.499993E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->A_SPLINE:F

    .line 148
    const v0, 0x310027    # 4.499994E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->RAND:F

    .line 151
    const v0, 0x310028    # 4.499995E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->RAND_SEED:F

    .line 154
    const v0, 0x310029    # 4.499997E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->NOISE_FROM:F

    .line 157
    const v0, 0x31002a    # 4.499998E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->RAND_IN_RANGE:F

    .line 160
    const v0, 0x31002b    # 4.5E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->SQUARE_SUM:F

    .line 163
    const v0, 0x31002c    # 4.500001E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->STEP:F

    .line 166
    const v0, 0x31002d    # 4.500002E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->SQUARE:F

    .line 169
    const v0, 0x31002e    # 4.500004E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->DUP:F

    .line 172
    const v0, 0x31002f    # 4.500005E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->HYPOT:F

    .line 175
    const v0, 0x310030    # 4.500007E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->SWAP:F

    .line 178
    const v0, 0x310031    # 4.500008E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->LERP:F

    .line 181
    const v0, 0x310032    # 4.50001E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->SMOOTH_STEP:F

    .line 186
    const v0, 0x310033    # 4.500011E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->LOG2:F

    .line 189
    const v0, 0x310034    # 4.500012E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->INV:F

    .line 192
    const v0, 0x310035    # 4.500014E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->FRACT:F

    .line 195
    const v0, 0x310036    # 4.500015E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->PINGPONG:F

    .line 201
    const v0, 0x310046    # 4.500037E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->VAR1:F

    .line 204
    const v0, 0x310047    # 4.500039E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->VAR2:F

    .line 207
    const v0, 0x310048    # 4.50004E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->VAR3:F

    .line 415
    nop

    .line 416
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "NOP"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 417
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "+"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "-"

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 419
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "*"

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 420
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "/"

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "%"

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "min"

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "max"

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 424
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string/jumbo v1, "pow"

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string/jumbo v1, "sqrt"

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 426
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "abs"

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 427
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string/jumbo v1, "sign"

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 428
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "copySign"

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 429
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "exp"

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "floor"

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 431
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "log"

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 432
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "ln"

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 433
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string/jumbo v1, "round"

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 434
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string/jumbo v1, "sin"

    const/16 v2, 0x12

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 435
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "cos"

    const/16 v2, 0x13

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 436
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string/jumbo v1, "tan"

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 437
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "asin"

    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 438
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "acos"

    const/16 v2, 0x16

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 439
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "atan"

    const/16 v2, 0x17

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 440
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "atan2"

    const/16 v2, 0x18

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 441
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "mad"

    const/16 v2, 0x19

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 442
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "ifElse"

    const/16 v2, 0x1a

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 443
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "clamp"

    const/16 v2, 0x1b

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 444
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "cbrt"

    const/16 v2, 0x1c

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 445
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "deg"

    const/16 v2, 0x1d

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 446
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string/jumbo v1, "rad"

    const/16 v2, 0x1e

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 447
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "ceil"

    const/16 v2, 0x1f

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 449
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "A_DEREF"

    const/16 v2, 0x20

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "A_MAX"

    const/16 v2, 0x21

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 451
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "A_MIN"

    const/16 v2, 0x22

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 452
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "A_SUM"

    const/16 v2, 0x23

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 453
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "A_AVG"

    const/16 v2, 0x24

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 454
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "A_LEN"

    const/16 v2, 0x25

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 455
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "A_SPLINE"

    const/16 v2, 0x26

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 456
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "RAND"

    const/16 v2, 0x27

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 457
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "RAND_SEED"

    const/16 v2, 0x28

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 459
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "noise_from"

    const/16 v2, 0x29

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 460
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string/jumbo v1, "rand_in_range"

    const/16 v2, 0x2a

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 461
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string/jumbo v1, "square_sum"

    const/16 v2, 0x2b

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 462
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string/jumbo v1, "step"

    const/16 v2, 0x2c

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 463
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string/jumbo v1, "square"

    const/16 v2, 0x2d

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 464
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "dup"

    const/16 v2, 0x2e

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 465
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "hypot"

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 466
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string/jumbo v1, "swap"

    const/16 v2, 0x30

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 467
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "lerp"

    const/16 v2, 0x31

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 468
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string/jumbo v1, "smooth_step"

    const/16 v2, 0x32

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 469
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "log2"

    const/16 v2, 0x33

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 470
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "inv"

    const/16 v2, 0x34

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 471
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "fract"

    const/16 v2, 0x35

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 472
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string/jumbo v1, "ping_pong"

    const/16 v2, 0x36

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 473
    nop

    .line 474
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "a[0]"

    const/16 v2, 0x46

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 475
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "a[1]"

    const/16 v2, 0x47

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 476
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "a[2]"

    const/16 v2, 0x48

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 578
    const/16 v0, 0x27

    new-array v0, v0, [I

    fill-array-data v0, :array_426

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->NO_OF_OPS:[I

    return-void

    nop

    :array_426
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
    .registers 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    const/4 v0, 0x0

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    .line 215
    const/16 v1, 0x80

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mLocalStack:[F

    .line 216
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mVar:[F

    .line 218
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mSplineMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    return-void
.end method

.method public static blacklist asNan(I)F
    .registers 2

    .line 608
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    or-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static blacklist fromNaN(F)I
    .registers 2

    .line 618
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    .line 619
    const v0, 0x7fffff

    and-int/2addr p0, v0

    return p0
.end method

.method public static blacklist getMaxOpForLevel(I)I
    .registers 2

    .line 228
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 229
    const p0, 0x310036    # 4.500015E-39f

    return p0

    .line 231
    :cond_7
    const p0, 0x310032    # 4.50001E-39f

    return p0
.end method

.method private blacklist getSplineValue(IF)F
    .registers 6

    .line 236
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mSplineMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;

    .line 237
    nop

    .line 238
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mCollectionsAccess:Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;->getFloats(I)[F

    move-result-object v1

    .line 239
    if-eqz v0, :cond_1c

    .line 240
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->getArray()[F

    move-result-object v2

    if-ne v2, v1, :cond_1c

    .line 241
    invoke-virtual {v0, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->getPos(F)F

    move-result p1

    return p1

    .line 245
    :cond_1c
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;-><init>([F[F)V

    .line 246
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mSplineMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-virtual {v0, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->getPos(F)F

    move-result p1

    return p1
.end method

.method static blacklist infix(I)Z
    .registers 2

    .line 598
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

.method public static blacklist isMathOperator(F)Z
    .registers 3

    .line 257
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 258
    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->fromNaN(F)I

    move-result v0

    .line 261
    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result p0

    if-eqz p0, :cond_12

    .line 262
    return v1

    .line 264
    :cond_12
    const/high16 p0, 0x310000    # 4.49994E-39f

    if-le v0, p0, :cond_1c

    const p0, 0x310036    # 4.500015E-39f

    if-gt v0, p0, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1

    .line 266
    :cond_1d
    return v1
.end method

.method public static blacklist toMathName(F)Ljava/lang/String;
    .registers 2

    .line 487
    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->fromNaN(F)I

    move-result p0

    const/high16 v0, 0x310000    # 4.49994E-39f

    sub-int/2addr p0, v0

    .line 488
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method static blacklist toString([FI)Ljava/lang/String;
    .registers 8

    .line 531
    aget v0, p0, p1

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_149

    .line 532
    aget v0, p0, p1

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->fromNaN(F)I

    move-result v0

    const/high16 v1, 0x310000    # 4.49994E-39f

    sub-int/2addr v0, v1

    .line 533
    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->NO_OF_OPS:[I

    aget v1, v1, v0

    const-string v2, ") "

    const-string v3, ")"

    const-string v4, ", "

    const-string v5, "("

    packed-switch v1, :pswitch_data_150

    :pswitch_20
    goto/16 :goto_149

    .line 555
    :pswitch_22
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->infix(I)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    .line 557
    invoke-static {p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->toString([FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x2

    .line 559
    invoke-static {p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->toString([FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 p1, p1, 0x3

    .line 561
    invoke-static {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->toString([FI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 556
    return-object p0

    .line 564
    :cond_66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    .line 566
    invoke-static {p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->toString([FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x2

    .line 568
    invoke-static {p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->toString([FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 p1, p1, 0x3

    .line 570
    invoke-static {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->toString([FI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 564
    return-object p0

    .line 539
    :pswitch_aa
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->infix(I)Z

    move-result v1

    if-eqz v1, :cond_e8

    .line 540
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v3, p1, 0x1

    .line 541
    invoke-static {p0, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->toString([FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    .line 542
    invoke-virtual {v3, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 p1, p1, 0x2

    .line 544
    invoke-static {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->toString([FI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 540
    return-object p0

    .line 547
    :cond_e8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    .line 549
    invoke-static {p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->toString([FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 p1, p1, 0x2

    .line 551
    invoke-static {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->toString([FI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 547
    return-object p0

    .line 537
    :pswitch_11e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->toString([FI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 535
    :pswitch_146
    const-string p0, "nop"

    return-object p0

    .line 575
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

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 501
    const/4 v1, 0x0

    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_7c

    .line 502
    aget v2, p0, v1

    .line 503
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 504
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 505
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->toMathName(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_74

    .line 507
    :cond_1f
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->fromNaN(F)I

    move-result v2

    .line 509
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

    .line 510
    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    goto :goto_74

    .line 515
    :cond_58
    if-eqz p1, :cond_71

    aget-object v3, p1, v1

    if-eqz v3, :cond_71

    .line 516
    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    aget-object v3, p1, v1

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_74

    .line 518
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_74

    .line 521
    :cond_71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 524
    :cond_74
    :goto_74
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 526
    :cond_7c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist eval(Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;[FI)F
    .registers 8

    .line 342
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mLocalStack:[F

    const/4 v1, 0x0

    invoke-static {p2, v1, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 343
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mLocalStack:[F

    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    .line 344
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mCollectionsAccess:Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

    .line 345
    nop

    .line 347
    const/4 p1, -0x1

    :goto_e
    if-ge v1, p3, :cond_3a

    .line 348
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget p2, p2, v1

    .line 349
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 350
    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->fromNaN(F)I

    move-result v0

    .line 351
    const/high16 v2, 0x700000

    and-int/2addr v2, v0

    const/high16 v3, 0x200000

    if-eq v2, v3, :cond_2a

    .line 352
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->opEval(II)I

    move-result p1

    goto :goto_30

    .line 354
    :cond_2a
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 p1, p1, 0x1

    aput p2, v0, p1

    .line 356
    :goto_30
    goto :goto_37

    .line 357
    :cond_31
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 p1, p1, 0x1

    aput p2, v0, p1

    .line 347
    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 360
    :cond_3a
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget p1, p2, p1

    return p1
.end method

.method public varargs blacklist eval(Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;[FI[F)F
    .registers 8

    .line 311
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mLocalStack:[F

    const/4 v1, 0x0

    invoke-static {p2, v1, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mLocalStack:[F

    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    .line 313
    iput-object p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mVar:[F

    .line 314
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mCollectionsAccess:Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

    .line 315
    nop

    .line 317
    const/4 p1, -0x1

    :goto_10
    if-ge v1, p3, :cond_3c

    .line 318
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget p2, p2, v1

    .line 319
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p4

    if-eqz p4, :cond_33

    .line 320
    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->fromNaN(F)I

    move-result p4

    .line 321
    const/high16 v0, 0x700000

    and-int/2addr v0, p4

    const/high16 v2, 0x200000

    if-eq v0, v2, :cond_2c

    .line 322
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->opEval(II)I

    move-result p1

    goto :goto_32

    .line 324
    :cond_2c
    iget-object p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 p1, p1, 0x1

    aput p2, p4, p1

    .line 326
    :goto_32
    goto :goto_39

    .line 327
    :cond_33
    iget-object p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 p1, p1, 0x1

    aput p2, p4, p1

    .line 317
    :goto_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 330
    :cond_3c
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget p1, p2, p1

    return p1
.end method

.method public varargs blacklist eval([FI[F)F
    .registers 6

    .line 377
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mLocalStack:[F

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 378
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mLocalStack:[F

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    .line 379
    iput-object p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mVar:[F

    .line 380
    nop

    .line 381
    const/4 p1, -0x1

    :goto_e
    if-ge v1, p2, :cond_2c

    .line 382
    iget-object p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget p3, p3, v1

    .line 383
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 384
    invoke-static {p3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->fromNaN(F)I

    move-result p3

    invoke-virtual {p0, p1, p3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->opEval(II)I

    move-result p1

    goto :goto_29

    .line 386
    :cond_23
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 p1, p1, 0x1

    aput p3, v0, p1

    .line 381
    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 389
    :cond_2c
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget p1, p2, p1

    return p1
.end method

.method public varargs blacklist eval([F[F)F
    .registers 5

    .line 286
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    .line 287
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mVar:[F

    .line 288
    nop

    .line 289
    const/4 p1, -0x1

    const/4 p2, 0x0

    :goto_7
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    array-length v0, v0

    if-ge p2, v0, :cond_28

    .line 290
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v0, v0, p2

    .line 291
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 292
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->fromNaN(F)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->opEval(II)I

    move-result p1

    goto :goto_25

    .line 294
    :cond_1f
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 p1, p1, 0x1

    aput v0, v1, p1

    .line 289
    :goto_25
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    .line 297
    :cond_28
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget p1, p2, p1

    return p1
.end method

.method public varargs blacklist evalDB([F[F)F
    .registers 7

    .line 400
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    .line 401
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mVar:[F

    .line 402
    nop

    .line 404
    array-length p2, p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_8
    if-ge v1, p2, :cond_24

    aget v2, p1, v1

    .line 405
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 406
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->fromNaN(F)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->opEval(II)I

    move-result v0

    goto :goto_21

    .line 408
    :cond_1b
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v0, v0, 0x1

    aput v2, v3, v0

    .line 404
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 411
    :cond_24
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget p1, p1, v0

    return p1
.end method

.method blacklist opEval(II)I
    .registers 9

    .line 686
    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch p2, :pswitch_data_49e

    .line 972
    :pswitch_a
    return p1

    .line 969
    :pswitch_b
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/2addr p1, v4

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mVar:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    aput v0, p2, p1

    .line 970
    return p1

    .line 966
    :pswitch_16
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/2addr p1, v4

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mVar:[F

    aget v0, v0, v4

    aput v0, p2, p1

    .line 967
    return p1

    .line 963
    :pswitch_20
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/2addr p1, v4

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mVar:[F

    aget v0, v0, v2

    aput v0, p2, p1

    .line 964
    return p1

    .line 958
    :pswitch_2a
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget p2, p2, p1

    mul-float/2addr p2, v0

    .line 959
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    rem-float/2addr v0, p2

    .line 960
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget p1, v3, p1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_41

    goto :goto_43

    :cond_41
    sub-float v0, p2, v0

    :goto_43
    aput v0, v2, v1

    .line 961
    return v1

    .line 955
    :pswitch_46
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v0, v0, p1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v1, v1, p1

    float-to-int v1, v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, p1

    .line 956
    return p1

    .line 952
    :pswitch_56
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v0, v0, p1

    div-float/2addr v1, v0

    aput v1, p2, p1

    .line 953
    return p1

    .line 949
    :pswitch_60
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v0, v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float v0, v0

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    double-to-float v1, v1

    div-float/2addr v0, v1

    aput v0, p2, p1

    .line 950
    return p1

    .line 936
    :pswitch_77
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v2, p1, -0x2

    aget p2, p2, v2

    .line 937
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v5, p1, -0x1

    aget v4, v4, v5

    .line 938
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget p1, v5, p1

    .line 939
    cmpg-float v5, p2, p1

    if-gez v5, :cond_90

    .line 940
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aput v3, p1, v2

    goto :goto_a7

    .line 941
    :cond_90
    cmpl-float v3, p2, v4

    if-lez v3, :cond_99

    .line 942
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aput v1, p1, v2

    goto :goto_a7

    .line 944
    :cond_99
    sub-float/2addr p2, p1

    sub-float/2addr v4, p1

    div-float/2addr p2, v4

    .line 945
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    mul-float v1, p2, p2

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr p2, v0

    sub-float/2addr v3, p2

    mul-float/2addr v1, v3

    aput v1, p1, v2

    .line 947
    :goto_a7
    return v2

    .line 930
    :pswitch_a8
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v0, p1, -0x2

    aget p2, p2, v0

    .line 931
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    .line 932
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget p1, v2, p1

    .line 933
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    sub-float/2addr v1, p2

    mul-float/2addr v1, p1

    add-float/2addr p2, v1

    aput p2, v2, v0

    .line 934
    return v0

    .line 925
    :pswitch_c0
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v0, p1, -0x1

    aget p2, p2, v0

    .line 926
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v2, v2, p1

    aput v2, v1, v0

    .line 927
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aput p2, v0, p1

    .line 928
    return p1

    .line 922
    :pswitch_d3
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v1, v1, v0

    float-to-double v1, v1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget p1, v3, p1

    float-to-double v3, p1

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float p1, v1

    aput p1, p2, v0

    .line 923
    return v0

    .line 919
    :pswitch_e9
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget p1, v1, p1

    aput p1, p2, v0

    .line 920
    return v0

    .line 916
    :pswitch_f4
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v0, v0, p1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v1, v1, p1

    mul-float/2addr v0, v1

    aput v0, p2, p1

    .line 917
    return p1

    .line 913
    :pswitch_102
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v0, p1, -0x1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v2, v2, v0

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget p1, v4, p1

    cmpl-float p1, v2, p1

    if-lez p1, :cond_113

    goto :goto_114

    :cond_113
    move v1, v3

    :goto_114
    aput v1, p2, v0

    .line 914
    return v0

    .line 910
    :pswitch_117
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v1, v1, v0

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v2, v2, v0

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v2, v2, p1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget p1, v3, p1

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    aput v1, p2, v0

    .line 911
    return v0

    .line 904
    :pswitch_131
    sget-object p2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sRandom:Ljava/util/Random;

    if-nez p2, :cond_13c

    .line 905
    new-instance p2, Ljava/util/Random;

    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    sput-object p2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sRandom:Ljava/util/Random;

    .line 907
    :cond_13c
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v1, v1, p1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v1, v1, v3

    add-float/2addr v0, v1

    aput v0, p2, p1

    .line 908
    return p1

    .line 895
    :pswitch_158
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget p2, p2, p1

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    .line 896
    shl-int/lit8 v0, p2, 0xd

    xor-int/2addr p2, v0

    .line 897
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    mul-int v2, p2, p2

    mul-int/lit16 v2, v2, 0x3d73

    const v3, 0xc0ae5

    add-int/2addr v2, v3

    mul-int/2addr p2, v2

    const v2, 0x5208dd0d

    add-int/2addr p2, v2

    const v2, 0x7fffffff

    and-int/2addr p2, v2

    int-to-float p2, p2

    const/high16 v2, 0x4e800000

    div-float/2addr p2, v2

    sub-float/2addr v1, p2

    aput v1, v0, p1

    .line 901
    return p1

    .line 883
    :pswitch_17e
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget p2, p2, p1

    .line 884
    cmpl-float v0, p2, v3

    if-nez v0, :cond_18e

    .line 885
    new-instance p2, Ljava/util/Random;

    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    sput-object p2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sRandom:Ljava/util/Random;

    goto :goto_1a9

    .line 887
    :cond_18e
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sRandom:Ljava/util/Random;

    if-nez v0, :cond_19f

    .line 888
    new-instance v0, Ljava/util/Random;

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    int-to-long v1, p2

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sRandom:Ljava/util/Random;

    goto :goto_1a9

    .line 890
    :cond_19f
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sRandom:Ljava/util/Random;

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/Random;->setSeed(J)V

    .line 893
    :goto_1a9
    sub-int/2addr p1, v4

    return p1

    .line 876
    :pswitch_1ab
    sget-object p2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sRandom:Ljava/util/Random;

    if-nez p2, :cond_1b6

    .line 877
    new-instance p2, Ljava/util/Random;

    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    sput-object p2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sRandom:Ljava/util/Random;

    .line 879
    :cond_1b6
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/2addr p1, v4

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    aput v0, p2, p1

    .line 880
    return p1

    .line 871
    :pswitch_1c2
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v0, p1, -0x1

    aget p2, p2, v0

    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->fromNaN(F)I

    move-result p2

    .line 872
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget p1, v2, p1

    invoke-direct {p0, p2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->getSplineValue(IF)F

    move-result p1

    aput p1, v1, v0

    .line 873
    return v0

    .line 865
    :pswitch_1d9
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget p2, p2, p1

    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->fromNaN(F)I

    move-result p2

    .line 866
    nop

    .line 867
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mCollectionsAccess:Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

    invoke-interface {v1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;->getListLength(I)I

    move-result p2

    int-to-float p2, p2

    aput p2, v0, p1

    .line 868
    return p1

    .line 854
    :pswitch_1ee
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget p2, p2, p1

    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->fromNaN(F)I

    move-result p2

    .line 855
    nop

    .line 856
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mCollectionsAccess:Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

    invoke-interface {v0, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;->getFloats(I)[F

    move-result-object p2

    .line 857
    nop

    .line 858
    nop

    :goto_1ff
    array-length v0, p2

    if-ge v2, v0, :cond_208

    .line 859
    aget v0, p2, v2

    add-float/2addr v3, v0

    .line 858
    add-int/lit8 v2, v2, 0x1

    goto :goto_1ff

    .line 861
    :cond_208
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    array-length p2, p2

    int-to-float p2, p2

    div-float/2addr v3, p2

    aput v3, v0, p1

    .line 862
    return p1

    .line 843
    :pswitch_210
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget p2, p2, p1

    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->fromNaN(F)I

    move-result p2

    .line 844
    nop

    .line 845
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mCollectionsAccess:Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

    invoke-interface {v0, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;->getFloats(I)[F

    move-result-object p2

    .line 846
    nop

    .line 847
    nop

    :goto_221
    array-length v0, p2

    if-ge v2, v0, :cond_22a

    .line 848
    aget v0, p2, v2

    add-float/2addr v3, v0

    .line 847
    add-int/lit8 v2, v2, 0x1

    goto :goto_221

    .line 850
    :cond_22a
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aput v3, p2, p1

    .line 851
    return p1

    .line 829
    :pswitch_22f
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget p2, p2, p1

    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->fromNaN(F)I

    move-result p2

    .line 830
    nop

    .line 831
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mCollectionsAccess:Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

    invoke-interface {v0, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;->getFloats(I)[F

    move-result-object p2

    .line 832
    array-length v0, p2

    if-nez v0, :cond_242

    .line 833
    return p1

    .line 835
    :cond_242
    aget v0, p2, v2

    .line 836
    nop

    :goto_245
    array-length v1, p2

    if-ge v4, v1, :cond_251

    .line 837
    aget v1, p2, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 836
    add-int/lit8 v4, v4, 0x1

    goto :goto_245

    .line 839
    :cond_251
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aput v0, p2, p1

    .line 840
    return p1

    .line 818
    :pswitch_256
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget p2, p2, p1

    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->fromNaN(F)I

    move-result p2

    .line 819
    nop

    .line 820
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mCollectionsAccess:Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

    invoke-interface {v0, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;->getFloats(I)[F

    move-result-object p2

    .line 821
    aget v0, p2, v2

    .line 822
    nop

    :goto_268
    array-length v1, p2

    if-ge v4, v1, :cond_274

    .line 823
    aget v1, p2, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 822
    add-int/lit8 v4, v4, 0x1

    goto :goto_268

    .line 825
    :cond_274
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aput v0, p2, p1

    .line 826
    return p1

    .line 812
    :pswitch_279
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v0, p1, -0x1

    aget p2, p2, v0

    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->fromNaN(F)I

    move-result p2

    .line 813
    nop

    .line 814
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mCollectionsAccess:Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget p1, v3, p1

    float-to-int p1, p1

    invoke-interface {v2, p2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;->getFloatValue(II)F

    move-result p1

    aput p1, v1, v0

    .line 815
    return v0

    .line 808
    :pswitch_294
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v0, v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p2, p1

    .line 809
    return p1

    .line 804
    :pswitch_2a3
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v0, v0, p1

    const v1, 0x3c8efa35

    mul-float/2addr v0, v1

    aput v0, p2, p1

    .line 805
    return p1

    .line 800
    :pswitch_2b0
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v0, v0, p1

    const v1, 0x42652ee1

    mul-float/2addr v0, v1

    aput v0, p2, p1

    .line 801
    return p1

    .line 796
    :pswitch_2bd
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v0, v0, p1

    float-to-double v0, v0

    const-wide v2, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p2, p1

    .line 797
    return p1

    .line 792
    :pswitch_2d1
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v0, p1, -0x2

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v1, v1, v0

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v2, v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    sub-int/2addr p1, v4

    aget p1, v2, p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    aput p1, p2, v0

    .line 793
    return v0

    .line 788
    :pswitch_2ed
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v0, p1, -0x2

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v1, v1, p1

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2ff

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    sub-int/2addr p1, v4

    aget p1, v1, p1

    goto :goto_303

    :cond_2ff
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget p1, p1, v0

    :goto_303
    aput p1, p2, v0

    .line 789
    return v0

    .line 784
    :pswitch_306
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v0, p1, -0x2

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v1, v1, p1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    sub-int/2addr p1, v4

    aget p1, v2, p1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v2, v2, v0

    mul-float/2addr p1, v2

    add-float/2addr v1, p1

    aput v1, p2, v0

    .line 785
    return v0

    .line 780
    :pswitch_31c
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v1, v1, v0

    float-to-double v1, v1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget p1, v3, p1

    float-to-double v3, p1

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    double-to-float p1, v1

    aput p1, p2, v0

    .line 781
    return v0

    .line 776
    :pswitch_332
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v0, v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p2, p1

    .line 777
    return p1

    .line 772
    :pswitch_341
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v0, v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p2, p1

    .line 773
    return p1

    .line 768
    :pswitch_350
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v0, v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p2, p1

    .line 769
    return p1

    .line 764
    :pswitch_35f
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v0, v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p2, p1

    .line 765
    return p1

    .line 760
    :pswitch_36e
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v0, v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p2, p1

    .line 761
    return p1

    .line 756
    :pswitch_37d
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v0, v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p2, p1

    .line 757
    return p1

    .line 752
    :pswitch_38c
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    aput v0, p2, p1

    .line 753
    return p1

    .line 748
    :pswitch_39a
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v0, v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p2, p1

    .line 749
    return p1

    .line 744
    :pswitch_3a9
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v0, v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p2, p1

    .line 745
    return p1

    .line 740
    :pswitch_3b8
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v0, v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p2, p1

    .line 741
    return p1

    .line 736
    :pswitch_3c7
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v0, v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p2, p1

    .line 737
    return p1

    .line 732
    :pswitch_3d6
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v1, v1, v0

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget p1, v2, p1

    invoke-static {v1, p1}, Ljava/lang/Math;->copySign(FF)F

    move-result p1

    aput p1, p2, v0

    .line 733
    return v0

    .line 728
    :pswitch_3e9
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    aput v0, p2, p1

    .line 729
    return p1

    .line 724
    :pswitch_3f6
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    aput v0, p2, p1

    .line 725
    return p1

    .line 720
    :pswitch_403
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v0, v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p2, p1

    .line 721
    return p1

    .line 716
    :pswitch_412
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v1, v1, v0

    float-to-double v1, v1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget p1, v3, p1

    float-to-double v3, p1

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float p1, v1

    aput p1, p2, v0

    .line 717
    return v0

    .line 712
    :pswitch_428
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v1, v1, v0

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget p1, v2, p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    aput p1, p2, v0

    .line 713
    return v0

    .line 708
    :pswitch_43b
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v1, v1, v0

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget p1, v2, p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    aput p1, p2, v0

    .line 709
    return v0

    .line 704
    :pswitch_44e
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v1, v1, v0

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget p1, v2, p1

    rem-float/2addr v1, p1

    aput v1, p2, v0

    .line 705
    return v0

    .line 700
    :pswitch_45e
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v1, v1, v0

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget p1, v2, p1

    div-float/2addr v1, p1

    aput v1, p2, v0

    .line 701
    return v0

    .line 696
    :pswitch_46e
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v1, v1, v0

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget p1, v2, p1

    mul-float/2addr v1, p1

    aput v1, p2, v0

    .line 697
    return v0

    .line 692
    :pswitch_47e
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v1, v1, v0

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget p1, v2, p1

    sub-float/2addr v1, p1

    aput v1, p2, v0

    .line 693
    return v0

    .line 688
    :pswitch_48e
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v1, v1, v0

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget p1, v2, p1

    add-float/2addr v1, p1

    aput v1, p2, v0

    .line 689
    return v0

    :pswitch_data_49e
    .packed-switch 0x310001
        :pswitch_48e
        :pswitch_47e
        :pswitch_46e
        :pswitch_45e
        :pswitch_44e
        :pswitch_43b
        :pswitch_428
        :pswitch_412
        :pswitch_403
        :pswitch_3f6
        :pswitch_3e9
        :pswitch_3d6
        :pswitch_3c7
        :pswitch_3b8
        :pswitch_3a9
        :pswitch_39a
        :pswitch_38c
        :pswitch_37d
        :pswitch_36e
        :pswitch_35f
        :pswitch_350
        :pswitch_341
        :pswitch_332
        :pswitch_31c
        :pswitch_306
        :pswitch_2ed
        :pswitch_2d1
        :pswitch_2bd
        :pswitch_2b0
        :pswitch_2a3
        :pswitch_294
        :pswitch_279
        :pswitch_256
        :pswitch_22f
        :pswitch_210
        :pswitch_1ee
        :pswitch_1d9
        :pswitch_1c2
        :pswitch_1ab
        :pswitch_17e
        :pswitch_158
        :pswitch_131
        :pswitch_117
        :pswitch_102
        :pswitch_f4
        :pswitch_e9
        :pswitch_d3
        :pswitch_c0
        :pswitch_a8
        :pswitch_77
        :pswitch_60
        :pswitch_56
        :pswitch_46
        :pswitch_2a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_20
        :pswitch_16
        :pswitch_b
    .end packed-switch
.end method
