.class public Landroid/perf/PerfMTKStubImpl;
.super Ljava/lang/Object;
.source "PerfMTKStubImpl.java"

# interfaces
.implements Landroid/perf/PerfMTKStub;


# static fields
.field public static final blacklist TAG:Ljava/lang/String; = "PerfMTKStubImpl"

.field private static final blacklist mFBoostParamValAres:[I

.field private static final blacklist mFBoostParamValBiloba:[I

.field private static final blacklist mFBoostParamValDaumier:[I

.field private static final blacklist mFBoostParamValDefault:[I

.field private static final blacklist mFBoostParamValEvergo:[I

.field private static final blacklist mFBoostParamValFire:[I

.field private static final blacklist mFBoostParamValMatisse:[I

.field private static final blacklist mFBoostParamValPearl:[I

.field private static final blacklist mFBoostParamValPissarro:[I

.field private static final blacklist mFBoostParamValRock:[I

.field private static final blacklist mFBoostParamValRubens:[I

.field private static final blacklist mFBoostParamValSelene:[I

.field private static final blacklist mFBoostParamValViva:[I

.field private static final blacklist mFBoostParamValXaga:[I


# instance fields
.field private blacklist mBoost:Landroid/util/MtkBoostFramework;

.field private blacklist mFBoostParamVal:[I

.field private final blacklist productName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 17
    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_6c

    sput-object v1, Landroid/perf/PerfMTKStubImpl;->mFBoostParamValDefault:[I

    .line 20
    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_7c

    sput-object v1, Landroid/perf/PerfMTKStubImpl;->mFBoostParamValMatisse:[I

    .line 23
    new-array v1, v0, [I

    fill-array-data v1, :array_88

    sput-object v1, Landroid/perf/PerfMTKStubImpl;->mFBoostParamValDaumier:[I

    .line 26
    new-array v0, v0, [I

    fill-array-data v0, :array_98

    sput-object v0, Landroid/perf/PerfMTKStubImpl;->mFBoostParamValRubens:[I

    .line 29
    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_a8

    sput-object v1, Landroid/perf/PerfMTKStubImpl;->mFBoostParamValXaga:[I

    .line 32
    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_bc

    sput-object v1, Landroid/perf/PerfMTKStubImpl;->mFBoostParamValAres:[I

    .line 35
    new-array v1, v0, [I

    fill-array-data v1, :array_d4

    sput-object v1, Landroid/perf/PerfMTKStubImpl;->mFBoostParamValPissarro:[I

    .line 38
    new-array v1, v0, [I

    fill-array-data v1, :array_e8

    sput-object v1, Landroid/perf/PerfMTKStubImpl;->mFBoostParamValRock:[I

    .line 41
    new-array v1, v0, [I

    fill-array-data v1, :array_fc

    sput-object v1, Landroid/perf/PerfMTKStubImpl;->mFBoostParamValBiloba:[I

    .line 44
    new-array v1, v0, [I

    fill-array-data v1, :array_110

    sput-object v1, Landroid/perf/PerfMTKStubImpl;->mFBoostParamValEvergo:[I

    .line 47
    new-array v1, v0, [I

    fill-array-data v1, :array_124

    sput-object v1, Landroid/perf/PerfMTKStubImpl;->mFBoostParamValSelene:[I

    .line 50
    new-array v1, v0, [I

    fill-array-data v1, :array_138

    sput-object v1, Landroid/perf/PerfMTKStubImpl;->mFBoostParamValViva:[I

    .line 53
    new-array v0, v0, [I

    fill-array-data v0, :array_14c

    sput-object v0, Landroid/perf/PerfMTKStubImpl;->mFBoostParamValFire:[I

    .line 56
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_160

    sput-object v0, Landroid/perf/PerfMTKStubImpl;->mFBoostParamValPearl:[I

    return-void

    nop

    :array_6c
    .array-data 4
        0x400000
        0xf4240
        0x400100
        0xf4240
        0x400200
        0xf4240
    .end array-data

    :array_7c
    .array-data 4
        0x400000
        0xf4240
        0x400100
        0xf4240
    .end array-data

    :array_88
    .array-data 4
        0x400000
        0xf4240
        0x400100
        0xf4240
        0xc00000
        0x27
    .end array-data

    :array_98
    .array-data 4
        0x400000
        0xf4240
        0x400100
        0xf4240
        0x400200
        0xf4240
    .end array-data

    :array_a8
    .array-data 4
        0x400000
        0x13d620
        0x400100
        0xf4240
        0x400200
        0xf4240
        0xc00000
        0x6
    .end array-data

    :array_bc
    .array-data 4
        0x400000
        0x162010
        0x400100
        0xff5f0
        0x400200
        0x10e820
        0x1000000
        0x0
        0xc00000
        0x0
    .end array-data

    :array_d4
    .array-data 4
        0x400000
        0x157818
        0x400100
        0x13d620
        0x1000000
        0x12
        0xc00000
        0x14
    .end array-data

    :array_e8
    .array-data 4
        0x400000
        0x16e360
        0x400100
        0x186a00
        0x1000000
        0x0
        0xc00000
        0x0
    .end array-data

    :array_fc
    .array-data 4
        0x400000
        0x1b7740
        0x400100
        0x1e8480
        0x1000000
        0x0
        0xc00000
        0x0
    .end array-data

    :array_110
    .array-data 4
        0x400000
        0x1e8480
        0x400100
        0x249f00
        0x1000000
        0x0
        0xc00000
        0x0
    .end array-data

    :array_124
    .array-data 4
        0x400000
        0x1b7740
        0x400100
        0x1e8480
        0x1000000
        0x0
        0xc00000
        0x0
    .end array-data

    :array_138
    .array-data 4
        0x400000
        0x1e8480
        0x400100
        0x251fe8
        0x1000000
        0x0
        0xc00000
        0x0
    .end array-data

    :array_14c
    .array-data 4
        0x400000
        0x1b7740
        0x400100
        0x1e8480
        0x1000000
        0x0
        0xc00000
        0x0
    .end array-data

    :array_160
    .array-data 4
        0x400000
        0x1e8480
        0x400100
        0xf4240
        0x400200
        0xf4240
        0x1000000
        0x0
        0xc00000
        0x0
        0x1430100
        0x8
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/perf/PerfMTKStubImpl;->productName:Ljava/lang/String;

    .line 60
    new-instance v0, Landroid/util/MtkBoostFramework;

    invoke-direct {v0}, Landroid/util/MtkBoostFramework;-><init>()V

    iput-object v0, p0, Landroid/perf/PerfMTKStubImpl;->mBoost:Landroid/util/MtkBoostFramework;

    .line 61
    invoke-direct {p0}, Landroid/perf/PerfMTKStubImpl;->initBoostParamByDevice()V

    .line 62
    return-void
.end method

.method private blacklist initBoostParamByDevice()V
    .registers 4

    .line 71
    const-string v0, "PerfMTKStubImpl"

    const-string v1, "initBoostParamByDevice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Landroid/perf/PerfMTKStubImpl;->productName:Ljava/lang/String;

    if-nez v0, :cond_11

    .line 73
    sget-object v0, Landroid/perf/PerfMTKStubImpl;->mFBoostParamValDefault:[I

    iput-object v0, p0, Landroid/perf/PerfMTKStubImpl;->mFBoostParamVal:[I

    goto/16 :goto_215

    .line 76
    :cond_11
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_216

    :cond_19
    goto/16 :goto_1c4

    :sswitch_1b
    const-string v2, "xagapro"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v1, 0x4

    goto/16 :goto_1c4

    :sswitch_26
    const-string v2, "pissarropro"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v1, 0xc

    goto/16 :goto_1c4

    :sswitch_32
    const-string v2, "daumier"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v1, 0x6

    goto/16 :goto_1c4

    :sswitch_3d
    const-string v2, "matisse"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v1, 0x0

    goto/16 :goto_1c4

    :sswitch_48
    const-string v2, "maltose"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v1, 0x13

    goto/16 :goto_1c4

    :sswitch_54
    const-string v2, "evergreen"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v1, 0x18

    goto/16 :goto_1c4

    :sswitch_60
    const-string v2, "stone"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v1, 0x10

    goto/16 :goto_1c4

    :sswitch_6c
    const-string v2, "pearl"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v1, 0x23

    goto/16 :goto_1c4

    :sswitch_78
    const-string v2, "fleur"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v1, 0x21

    goto/16 :goto_1c4

    :sswitch_84
    const-string v2, "earth"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v1, 0x1a

    goto/16 :goto_1c4

    :sswitch_90
    const-string v2, "corot"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v1, 0x24

    goto/16 :goto_1c4

    :sswitch_9c
    const-string v2, "amber"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v1, 0xa

    goto/16 :goto_1c4

    :sswitch_a8
    const-string v2, "xaga"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v1, 0x2

    goto/16 :goto_1c4

    :sswitch_b3
    const-string v2, "viva"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v1, 0x1e

    goto/16 :goto_1c4

    :sswitch_bf
    const-string v2, "vida"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v1, 0x1f

    goto/16 :goto_1c4

    :sswitch_cb
    const-string v2, "rock"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v1, 0xf

    goto/16 :goto_1c4

    :sswitch_d7
    const-string v2, "opal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v1, 0x19

    goto/16 :goto_1c4

    :sswitch_e3
    const-string v2, "miel"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v1, 0x20

    goto/16 :goto_1c4

    :sswitch_ef
    const-string v2, "fire"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v1, 0x22

    goto/16 :goto_1c4

    :sswitch_fb
    const-string v2, "ares"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v1, 0x7

    goto/16 :goto_1c4

    :sswitch_106
    const-string v2, "eos"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v1, 0x1d

    goto/16 :goto_1c4

    :sswitch_112
    const-string v2, "rosemary"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v1, 0x11

    goto/16 :goto_1c4

    :sswitch_11e
    const-string v2, "camellia"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v1, 0x15

    goto/16 :goto_1c4

    :sswitch_12a
    const-string v2, "pissarro"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v1, 0xb

    goto/16 :goto_1c4

    :sswitch_136
    const-string v2, "camellian"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v1, 0x16

    goto/16 :goto_1c4

    :sswitch_142
    const-string v2, "pissarroinpro"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v1, 0xe

    goto/16 :goto_1c4

    :sswitch_14e
    const-string v2, "xagain"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v1, 0x3

    goto/16 :goto_1c4

    :sswitch_159
    const-string v2, "xagaproin"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v1, 0x5

    goto :goto_1c4

    :sswitch_163
    const-string v2, "selene"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v1, 0x1c

    goto :goto_1c4

    :sswitch_16e
    const-string v2, "secret"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v1, 0x12

    goto :goto_1c4

    :sswitch_179
    const-string v2, "pissarroin"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v1, 0xd

    goto :goto_1c4

    :sswitch_184
    const-string v2, "rubens"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v1, 0x1

    goto :goto_1c4

    :sswitch_18e
    const-string v2, "evergo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v1, 0x17

    goto :goto_1c4

    :sswitch_199
    const-string v2, "chopin"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v1, 0x9

    goto :goto_1c4

    :sswitch_1a4
    const-string v2, "biloba"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v1, 0x14

    goto :goto_1c4

    :sswitch_1af
    const-string v2, "aresin"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v1, 0x8

    goto :goto_1c4

    :sswitch_1ba
    const-string v2, "aether"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v1, 0x1b

    :goto_1c4
    packed-switch v1, :pswitch_data_2ac

    .line 130
    sget-object v0, Landroid/perf/PerfMTKStubImpl;->mFBoostParamValDefault:[I

    iput-object v0, p0, Landroid/perf/PerfMTKStubImpl;->mFBoostParamVal:[I

    goto :goto_215

    .line 128
    :pswitch_1cc
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/perf/PerfMTKStubImpl;->mFBoostParamVal:[I

    goto :goto_215

    .line 126
    :pswitch_1d0
    sget-object v0, Landroid/perf/PerfMTKStubImpl;->mFBoostParamValPearl:[I

    iput-object v0, p0, Landroid/perf/PerfMTKStubImpl;->mFBoostParamVal:[I

    goto :goto_215

    .line 124
    :pswitch_1d5
    sget-object v0, Landroid/perf/PerfMTKStubImpl;->mFBoostParamValFire:[I

    iput-object v0, p0, Landroid/perf/PerfMTKStubImpl;->mFBoostParamVal:[I

    goto :goto_215

    .line 122
    :pswitch_1da
    sget-object v0, Landroid/perf/PerfMTKStubImpl;->mFBoostParamValViva:[I

    iput-object v0, p0, Landroid/perf/PerfMTKStubImpl;->mFBoostParamVal:[I

    goto :goto_215

    .line 117
    :pswitch_1df
    sget-object v0, Landroid/perf/PerfMTKStubImpl;->mFBoostParamValSelene:[I

    iput-object v0, p0, Landroid/perf/PerfMTKStubImpl;->mFBoostParamVal:[I

    goto :goto_215

    .line 112
    :pswitch_1e4
    sget-object v0, Landroid/perf/PerfMTKStubImpl;->mFBoostParamValEvergo:[I

    iput-object v0, p0, Landroid/perf/PerfMTKStubImpl;->mFBoostParamVal:[I

    goto :goto_215

    .line 108
    :pswitch_1e9
    sget-object v0, Landroid/perf/PerfMTKStubImpl;->mFBoostParamValRock:[I

    iput-object v0, p0, Landroid/perf/PerfMTKStubImpl;->mFBoostParamVal:[I

    goto :goto_215

    .line 105
    :pswitch_1ee
    sget-object v0, Landroid/perf/PerfMTKStubImpl;->mFBoostParamValBiloba:[I

    iput-object v0, p0, Landroid/perf/PerfMTKStubImpl;->mFBoostParamVal:[I

    goto :goto_215

    .line 100
    :pswitch_1f3
    sget-object v0, Landroid/perf/PerfMTKStubImpl;->mFBoostParamValRock:[I

    iput-object v0, p0, Landroid/perf/PerfMTKStubImpl;->mFBoostParamVal:[I

    goto :goto_215

    .line 97
    :pswitch_1f8
    sget-object v0, Landroid/perf/PerfMTKStubImpl;->mFBoostParamValPissarro:[I

    iput-object v0, p0, Landroid/perf/PerfMTKStubImpl;->mFBoostParamVal:[I

    goto :goto_215

    .line 92
    :pswitch_1fd
    sget-object v0, Landroid/perf/PerfMTKStubImpl;->mFBoostParamValAres:[I

    iput-object v0, p0, Landroid/perf/PerfMTKStubImpl;->mFBoostParamVal:[I

    goto :goto_215

    .line 87
    :pswitch_202
    sget-object v0, Landroid/perf/PerfMTKStubImpl;->mFBoostParamValDaumier:[I

    iput-object v0, p0, Landroid/perf/PerfMTKStubImpl;->mFBoostParamVal:[I

    goto :goto_215

    .line 85
    :pswitch_207
    sget-object v0, Landroid/perf/PerfMTKStubImpl;->mFBoostParamValXaga:[I

    iput-object v0, p0, Landroid/perf/PerfMTKStubImpl;->mFBoostParamVal:[I

    goto :goto_215

    .line 80
    :pswitch_20c
    sget-object v0, Landroid/perf/PerfMTKStubImpl;->mFBoostParamValRubens:[I

    iput-object v0, p0, Landroid/perf/PerfMTKStubImpl;->mFBoostParamVal:[I

    goto :goto_215

    .line 78
    :pswitch_211
    sget-object v0, Landroid/perf/PerfMTKStubImpl;->mFBoostParamValMatisse:[I

    iput-object v0, p0, Landroid/perf/PerfMTKStubImpl;->mFBoostParamVal:[I

    .line 133
    :goto_215
    return-void

    :sswitch_data_216
    .sparse-switch
        -0x54b457bb -> :sswitch_1ba
        -0x5403cdfc -> :sswitch_1af
        -0x52caaa37 -> :sswitch_1a4
        -0x51228755 -> :sswitch_199
        -0x4cf8117a -> :sswitch_18e
        -0x36d8b5f5 -> :sswitch_184
        -0x363728d4 -> :sswitch_179
        -0x3604b150 -> :sswitch_16e
        -0x3600c9be -> :sswitch_163
        -0x2f124311 -> :sswitch_159
        -0x2db34218 -> :sswitch_14e
        -0x1cf683ff -> :sswitch_142
        -0x14b1c7e0 -> :sswitch_136
        -0x104e6039 -> :sswitch_12a
        -0x8ecf5f2 -> :sswitch_11e
        -0x3e6b756 -> :sswitch_112
        0x18909 -> :sswitch_106
        0x2dd09f -> :sswitch_fb
        0x2ff636 -> :sswitch_ef
        0x332343 -> :sswitch_e3
        0x3425cc -> :sswitch_d7
        0x357f65 -> :sswitch_cb
        0x373a70 -> :sswitch_bf
        0x373c9e -> :sswitch_b3
        0x380583 -> :sswitch_a8
        0x589f0e3 -> :sswitch_9c
        0x5a745eb -> :sswitch_90
        0x5bd184a -> :sswitch_84
        0x5cfff3c -> :sswitch_78
        0x659ac46 -> :sswitch_6c
        0x68af865 -> :sswitch_60
        0x80920a5 -> :sswitch_54
        0x31b5a365 -> :sswitch_48
        0x32216e5c -> :sswitch_3d
        0x56191ae1 -> :sswitch_32
        0x6f522986 -> :sswitch_26
        0x774b1a4a -> :sswitch_1b
    .end sparse-switch

    :pswitch_data_2ac
    .packed-switch 0x0
        :pswitch_211
        :pswitch_20c
        :pswitch_207
        :pswitch_207
        :pswitch_207
        :pswitch_207
        :pswitch_202
        :pswitch_1fd
        :pswitch_1fd
        :pswitch_1fd
        :pswitch_1fd
        :pswitch_1f8
        :pswitch_1f8
        :pswitch_1f8
        :pswitch_1f8
        :pswitch_1f3
        :pswitch_1f3
        :pswitch_1ee
        :pswitch_1ee
        :pswitch_1ee
        :pswitch_1ee
        :pswitch_1e9
        :pswitch_1e9
        :pswitch_1e4
        :pswitch_1e4
        :pswitch_1e4
        :pswitch_1df
        :pswitch_1df
        :pswitch_1df
        :pswitch_1df
        :pswitch_1da
        :pswitch_1da
        :pswitch_1da
        :pswitch_1da
        :pswitch_1d5
        :pswitch_1d0
        :pswitch_1cc
    .end packed-switch
.end method


# virtual methods
.method public blacklist getBoostParamByDevice()[I
    .registers 3

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBoostParamByDevice: mFBoostParamVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/perf/PerfMTKStubImpl;->mFBoostParamVal:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PerfMTKStubImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Landroid/perf/PerfMTKStubImpl;->mFBoostParamVal:[I

    return-object v0
.end method

.method public varargs blacklist perfLockAcquire(I[I)I
    .registers 5
    .param p1, "duration"    # I
    .param p2, "list"    # [I

    .line 66
    const-string v0, "PerfMTKStubImpl"

    const-string v1, "perfLockAcquire"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Landroid/perf/PerfMTKStubImpl;->mBoost:Landroid/util/MtkBoostFramework;

    invoke-virtual {v0, p1, p2}, Landroid/util/MtkBoostFramework;->perfLockAcquire(I[I)I

    move-result v0

    return v0
.end method

.method public blacklist perfLockRelease()I
    .registers 3

    .line 144
    const-string v0, "PerfMTKStubImpl"

    const-string v1, "perfLockRelease"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Landroid/perf/PerfMTKStubImpl;->mBoost:Landroid/util/MtkBoostFramework;

    invoke-virtual {v0}, Landroid/util/MtkBoostFramework;->perfLockRelease()I

    move-result v0

    return v0
.end method

.method public blacklist perfLockReleaseHandler(I)I
    .registers 4
    .param p1, "handle"    # I

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "perfLockReleaseHandler: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PerfMTKStubImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    if-lez p1, :cond_21

    .line 152
    iget-object v0, p0, Landroid/perf/PerfMTKStubImpl;->mBoost:Landroid/util/MtkBoostFramework;

    invoke-virtual {v0, p1}, Landroid/util/MtkBoostFramework;->perfLockReleaseHandler(I)I

    move-result v0

    return v0

    .line 154
    :cond_21
    const/4 v0, -0x1

    return v0
.end method
