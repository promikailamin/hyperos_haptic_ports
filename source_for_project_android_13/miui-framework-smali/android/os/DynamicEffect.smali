.class public Landroid/os/DynamicEffect;
.super Landroid/os/CombinedVibration;
.source "DynamicEffect.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/DynamicEffect$Parameter;,
        Landroid/os/DynamicEffect$Curve;,
        Landroid/os/DynamicEffect$PrimitiveEffect;
    }
.end annotation


# static fields
.field private static final blacklist CONTINUOUS:I = 0x1

.field private static final blacklist CONTINUOUS_EVENT:I = 0x1000

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/DynamicEffect;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEBUG:Z = true

.field private static final blacklist EVENT_KEY_DURATION:Ljava/lang/String; = "Duration"

.field private static final blacklist EVENT_KEY_EVENT:Ljava/lang/String; = "Event"

.field private static final blacklist EVENT_KEY_HE_CURVE:Ljava/lang/String; = "Curve"

.field private static final blacklist EVENT_KEY_HE_CURVE_POINT_TIME:Ljava/lang/String; = "Time"

.field private static final blacklist EVENT_KEY_HE_FREQUENCY:Ljava/lang/String; = "Frequency"

.field private static final blacklist EVENT_KEY_HE_INTENSITY:Ljava/lang/String; = "Intensity"

.field private static final blacklist EVENT_KEY_HE_PARAMETERS:Ljava/lang/String; = "Parameters"

.field private static final blacklist EVENT_KEY_HE_TYPE:Ljava/lang/String; = "Type"

.field private static final blacklist EVENT_KEY_RELATIVE_TIME:Ljava/lang/String; = "RelativeTime"

.field private static final blacklist EVENT_TYPE_HE_CONTINUOUS_NAME:Ljava/lang/String; = "continuous"

.field private static final blacklist EVENT_TYPE_HE_TRANSIENT_NAME:Ljava/lang/String; = "transient"

.field private static final blacklist HE_META_DATA_KEY:Ljava/lang/String; = "Metadata"

.field private static final blacklist HE_VERSION_KEY:Ljava/lang/String; = "Version"

.field public static final whitelist INTENSITY:I = 0x0

.field private static final blacklist MAX_EVENT_COUNT:I = 0x10

.field private static final blacklist MAX_FREQ:I = 0x64

.field private static final blacklist MAX_INTENSITY:I = 0x64

.field private static final blacklist MAX_PATERN_EVENT_LAST_TIME:I = 0x1388

.field private static final blacklist MAX_PATERN_LAST_TIME:I = 0xc350

.field private static final blacklist MAX_POINT_COUNT:I = 0x10

.field private static final blacklist PARCEL_TOKEN_DYNAMIC:I = 0x5

.field private static final blacklist PATTERN_KEY_EVENT_VIB_ID:Ljava/lang/String; = "Index"

.field private static final blacklist PATTERN_KEY_PATTERN:Ljava/lang/String; = "Pattern"

.field private static final blacklist PATTERN_KEY_PATTERN_ABS_TIME:Ljava/lang/String; = "AbsoluteTime"

.field private static final blacklist PATTERN_KEY_PATTERN_LIST:Ljava/lang/String; = "PatternList"

.field public static final whitelist SHARPNESS:I = 0x1

.field public static final whitelist TAG:Ljava/lang/String; = "DynamicEffect"

.field private static final blacklist TRANSIENT:I = 0x0

.field private static final blacklist TRANSIENT_EVENT:I = 0x1001

.field private static final blacklist VERSION_MIHAPTIC:I = 0x0

.field private static final blacklist VERSION_VHAPTIC:I = 0x1

.field private static blacklist mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static blacklist patternHeInfo:[I

.field private static blacklist vhapticVersion:Ljava/lang/String;


# instance fields
.field private blacklist encapsulated:[I

.field public whitelist globalIntensity:I

.field public whitelist globalSharpness:I

.field public whitelist mEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/DynamicEffect$PrimitiveEffect;",
            ">;"
        }
    .end annotation
.end field

.field public whitelist mGlobalCurve:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/DynamicEffect$Curve;",
            ">;"
        }
    .end annotation
.end field

.field public whitelist mInterval:I

.field public whitelist mLoop:I

.field public whitelist version:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 39
    const-string v0, "sys.haptic.dynamiceffect.richtap.version"

    const-string v1, "1.0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/DynamicEffect;->vhapticVersion:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    sput-object v0, Landroid/os/DynamicEffect;->patternHeInfo:[I

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Landroid/os/DynamicEffect;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 848
    new-instance v0, Landroid/os/DynamicEffect$1;

    invoke-direct {v0}, Landroid/os/DynamicEffect$1;-><init>()V

    sput-object v0, Landroid/os/DynamicEffect;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(I)V
    .registers 3
    .param p1, "ver"    # I

    .line 194
    invoke-direct {p0}, Landroid/os/CombinedVibration;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/DynamicEffect;->mLoop:I

    .line 30
    iput v0, p0, Landroid/os/DynamicEffect;->mInterval:I

    .line 33
    const/16 v0, 0x64

    iput v0, p0, Landroid/os/DynamicEffect;->globalIntensity:I

    .line 34
    const/16 v0, 0x32

    iput v0, p0, Landroid/os/DynamicEffect;->globalSharpness:I

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/DynamicEffect;->encapsulated:[I

    .line 195
    iput p1, p0, Landroid/os/DynamicEffect;->version:I

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/DynamicEffect;->mEffects:Ljava/util/ArrayList;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/DynamicEffect;->mGlobalCurve:Ljava/util/ArrayList;

    .line 198
    return-void
.end method

.method public constructor whitelist <init>([III)V
    .registers 5
    .param p1, "encapsulate"    # [I
    .param p2, "loop"    # I
    .param p3, "interval"    # I

    .line 89
    invoke-direct {p0}, Landroid/os/CombinedVibration;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/DynamicEffect;->mLoop:I

    .line 30
    iput v0, p0, Landroid/os/DynamicEffect;->mInterval:I

    .line 33
    const/16 v0, 0x64

    iput v0, p0, Landroid/os/DynamicEffect;->globalIntensity:I

    .line 34
    const/16 v0, 0x32

    iput v0, p0, Landroid/os/DynamicEffect;->globalSharpness:I

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/DynamicEffect;->encapsulated:[I

    .line 90
    iput-object p1, p0, Landroid/os/DynamicEffect;->encapsulated:[I

    .line 91
    iput p2, p0, Landroid/os/DynamicEffect;->mLoop:I

    .line 92
    iput p3, p0, Landroid/os/DynamicEffect;->mInterval:I

    .line 93
    return-void
.end method

.method private static blacklist between(III)Z
    .registers 4
    .param p0, "var1"    # I
    .param p1, "var2"    # I
    .param p2, "var3"    # I

    .line 221
    if-lt p0, p1, :cond_6

    if-gt p0, p2, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static whitelist create()Landroid/os/DynamicEffect;
    .registers 2

    .line 212
    new-instance v0, Landroid/os/DynamicEffect;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/DynamicEffect;-><init>(I)V

    return-object v0
.end method

.method public static whitelist create(Ljava/lang/String;)Landroid/os/DynamicEffect;
    .registers 42
    .param p0, "jsonStr"    # Ljava/lang/String;

    .line 604
    move-object/from16 v1, p0

    const-string v0, "Duration"

    const-string v2, "RelativeTime"

    const-string v3, "Frequency"

    const-string v4, "Intensity"

    new-instance v5, Landroid/os/DynamicEffect;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/os/DynamicEffect;-><init>(I)V

    .line 605
    .local v5, "ret":Landroid/os/DynamicEffect;
    sget-object v7, Landroid/os/DynamicEffect;->vhapticVersion:Ljava/lang/String;

    const-string v8, "1.0"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x2

    const-string v9, "Version"

    const-string v10, "Metadata"

    const-string v11, "PatternHeImpl"

    if-eqz v7, :cond_29e

    .line 606
    const-string v7, "vhapticVersion is 1"

    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :try_start_26
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 609
    .local v7, "json":Lorg/json/JSONObject;
    const/4 v12, 0x0

    .line 610
    .local v12, "heVersion":I
    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 611
    .local v10, "metaData":Lorg/json/JSONObject;
    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 612
    .end local v12    # "heVersion":I
    .local v9, "heVersion":I
    if-ne v9, v8, :cond_3c

    .line 613
    const-string v0, "vhapticVersion is 1, not support heversion 2"

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    return-object v5

    .line 616
    :cond_3c
    const-string v8, "Pattern"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 617
    .local v8, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v12

    .line 618
    .local v12, "numOfPattern":I
    const/4 v13, 0x0

    .line 619
    .local v13, "relativeTime":I
    const/4 v14, 0x0

    .line 620
    .local v14, "duration":I
    const/4 v15, 0x0

    .line 621
    .local v15, "effect":Landroid/os/DynamicEffect$PrimitiveEffect;
    const/16 v16, 0x0

    move/from16 v6, v16

    .local v6, "i":I
    :goto_4d
    if-ge v6, v12, :cond_289

    .line 622
    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    move-object/from16 v18, v17

    .line 623
    .local v18, "pattern":Lorg/json/JSONObject;
    move-object/from16 v17, v7

    .end local v7    # "json":Lorg/json/JSONObject;
    .local v17, "json":Lorg/json/JSONObject;
    const-string v7, "Event"

    move-object/from16 v19, v8

    move-object/from16 v8, v18

    .end local v18    # "pattern":Lorg/json/JSONObject;
    .local v8, "pattern":Lorg/json/JSONObject;
    .local v19, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 624
    .local v7, "event":Lorg/json/JSONObject;
    move-object/from16 v18, v8

    .end local v8    # "pattern":Lorg/json/JSONObject;
    .restart local v18    # "pattern":Lorg/json/JSONObject;
    const-string v8, "Type"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 626
    .local v8, "type":Ljava/lang/String;
    move/from16 v20, v9

    .end local v9    # "heVersion":I
    .local v20, "heVersion":I
    const-string v9, "continuous"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_75

    .line 627
    const/4 v9, 0x1

    .local v9, "typeCode":I
    goto :goto_85

    .line 629
    .end local v9    # "typeCode":I
    :cond_75
    const-string v9, "transient"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_84

    .line 630
    const-string v0, "haven\'t get type value"

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    goto/16 :goto_29c

    .line 633
    :cond_84
    const/4 v9, 0x0

    .line 636
    .restart local v9    # "typeCode":I
    :goto_85
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v21
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_89} :catch_298

    move-object/from16 v22, v8

    .end local v8    # "type":Ljava/lang/String;
    .local v22, "type":Ljava/lang/String;
    const-string v8, "event:"

    if-nez v21, :cond_b7

    .line 637
    move-object/from16 v21, v10

    .end local v10    # "metaData":Lorg/json/JSONObject;
    .local v21, "metaData":Lorg/json/JSONObject;
    :try_start_91
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v23, v12

    .end local v12    # "numOfPattern":I
    .local v23, "numOfPattern":I
    const-string v12, " don\'t have relativeTime parameters,set default:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    mul-int/lit16 v12, v6, 0x190

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    mul-int/lit16 v10, v6, 0x190

    move v13, v10

    .end local v13    # "relativeTime":I
    .local v10, "relativeTime":I
    goto :goto_c0

    .line 640
    .end local v21    # "metaData":Lorg/json/JSONObject;
    .end local v23    # "numOfPattern":I
    .local v10, "metaData":Lorg/json/JSONObject;
    .restart local v12    # "numOfPattern":I
    .restart local v13    # "relativeTime":I
    :cond_b7
    move-object/from16 v21, v10

    move/from16 v23, v12

    .end local v10    # "metaData":Lorg/json/JSONObject;
    .end local v12    # "numOfPattern":I
    .restart local v21    # "metaData":Lorg/json/JSONObject;
    .restart local v23    # "numOfPattern":I
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .end local v13    # "relativeTime":I
    .local v10, "relativeTime":I
    move v13, v10

    .line 643
    .end local v10    # "relativeTime":I
    .restart local v13    # "relativeTime":I
    :goto_c0
    const v10, 0xc350

    const/4 v12, 0x0

    invoke-static {v13, v12, v10}, Landroid/os/DynamicEffect;->between(III)Z

    move-result v10

    if-nez v10, :cond_d1

    .line 644
    const-string v0, "relativeTime must between 0 and 50000"

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    goto/16 :goto_29c

    .line 648
    :cond_d1
    const-string v10, "Parameters"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 649
    .local v10, "parameters":Lorg/json/JSONObject;
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v30, v24

    .line 650
    .local v30, "intensity":I
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v31, v24

    .line 651
    .local v31, "frequency":I
    move-object/from16 v32, v2

    const/16 v2, 0x64

    move/from16 v33, v14

    move/from16 v14, v30

    .end local v30    # "intensity":I
    .local v14, "intensity":I
    .local v33, "duration":I
    invoke-static {v14, v12, v2}, Landroid/os/DynamicEffect;->between(III)Z

    move-result v24

    if-eqz v24, :cond_277

    move-object/from16 v30, v15

    move/from16 v15, v31

    .end local v31    # "frequency":I
    .local v15, "frequency":I
    .local v30, "effect":Landroid/os/DynamicEffect$PrimitiveEffect;
    invoke-static {v15, v12, v2}, Landroid/os/DynamicEffect;->between(III)Z

    move-result v2

    if-nez v2, :cond_103

    move-object/from16 v34, v7

    move-object/from16 v35, v10

    move-object/from16 v40, v11

    goto/16 :goto_281

    .line 656
    :cond_103
    const/4 v2, 0x1

    if-ne v2, v9, :cond_234

    .line 657
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12c

    .line 658
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " don\'t have duration parameters,set default:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const/4 v2, 0x0

    .end local v33    # "duration":I
    .local v2, "duration":I
    goto :goto_130

    .line 661
    .end local v2    # "duration":I
    .restart local v33    # "duration":I
    :cond_12c
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 664
    .end local v33    # "duration":I
    .restart local v2    # "duration":I
    :goto_130
    const/16 v8, 0x1388

    invoke-static {v2, v12, v8}, Landroid/os/DynamicEffect;->between(III)Z

    move-result v8

    if-nez v8, :cond_13f

    .line 665
    const-string v0, "duration must be less than 5000"

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    goto/16 :goto_29c

    .line 669
    :cond_13f
    new-instance v8, Landroid/os/DynamicEffect$PrimitiveEffect;

    const/16 v25, 0x1

    move-object/from16 v24, v8

    move/from16 v26, v13

    move/from16 v27, v14

    move/from16 v28, v15

    move/from16 v29, v2

    invoke-direct/range {v24 .. v29}, Landroid/os/DynamicEffect$PrimitiveEffect;-><init>(IIIII)V

    .line 671
    .end local v30    # "effect":Landroid/os/DynamicEffect$PrimitiveEffect;
    .local v8, "effect":Landroid/os/DynamicEffect$PrimitiveEffect;
    const-string v12, "Curve"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 672
    .local v12, "curves":Lorg/json/JSONArray;
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v26, v25

    .line 673
    .local v26, "intensityTimings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v27, v25

    .line 674
    .local v27, "intensityValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v28, v25

    .line 675
    .local v28, "freqTimings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v29, v25

    .line 677
    .local v29, "freqValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v25, 0x0

    move-object/from16 v31, v0

    move/from16 v0, v25

    .local v0, "j":I
    :goto_178
    move/from16 v25, v2

    .end local v2    # "duration":I
    .local v25, "duration":I
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1ff

    .line 678
    invoke-virtual {v12, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 679
    .local v2, "point":Lorg/json/JSONObject;
    move-object/from16 v34, v7

    .end local v7    # "event":Lorg/json/JSONObject;
    .local v34, "event":Lorg/json/JSONObject;
    const-string v7, "Time"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 680
    .local v7, "time":I
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_1b4

    .line 681
    move-object/from16 v35, v10

    .end local v10    # "parameters":Lorg/json/JSONObject;
    .local v35, "parameters":Lorg/json/JSONObject;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v30, v12

    move-object/from16 v12, v26

    .end local v26    # "intensityTimings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v12, "intensityTimings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v30, "curves":Lorg/json/JSONArray;
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v36

    const-wide/high16 v38, 0x4059000000000000L    # 100.0

    move-object/from16 v40, v11

    mul-double v10, v36, v38

    double-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v11, v27

    .end local v27    # "intensityValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v11, "intensityValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1be

    .line 680
    .end local v11    # "intensityValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v30    # "curves":Lorg/json/JSONArray;
    .end local v35    # "parameters":Lorg/json/JSONObject;
    .restart local v10    # "parameters":Lorg/json/JSONObject;
    .local v12, "curves":Lorg/json/JSONArray;
    .restart local v26    # "intensityTimings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v27    # "intensityValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1b4
    move-object/from16 v35, v10

    move-object/from16 v40, v11

    move-object/from16 v30, v12

    move-object/from16 v12, v26

    move-object/from16 v11, v27

    .line 685
    .end local v10    # "parameters":Lorg/json/JSONObject;
    .end local v26    # "intensityTimings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v27    # "intensityValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v11    # "intensityValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v12, "intensityTimings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v30    # "curves":Lorg/json/JSONArray;
    .restart local v35    # "parameters":Lorg/json/JSONObject;
    :goto_1be
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1df

    .line 686
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v36, v4

    move-object/from16 v4, v28

    .end local v28    # "freqTimings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v4, "freqTimings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v26, v2

    move-object/from16 v2, v29

    .end local v29    # "freqValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v2, "freqValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v26, "point":Lorg/json/JSONObject;
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e7

    .line 685
    .end local v4    # "freqTimings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v26    # "point":Lorg/json/JSONObject;
    .local v2, "point":Lorg/json/JSONObject;
    .restart local v28    # "freqTimings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v29    # "freqValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1df
    move-object/from16 v26, v2

    move-object/from16 v36, v4

    move-object/from16 v4, v28

    move-object/from16 v2, v29

    .line 677
    .end local v7    # "time":I
    .end local v28    # "freqTimings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v29    # "freqValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v2, "freqValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v4    # "freqTimings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_1e7
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v29, v2

    move-object/from16 v28, v4

    move-object/from16 v27, v11

    move-object/from16 v26, v12

    move/from16 v2, v25

    move-object/from16 v12, v30

    move-object/from16 v7, v34

    move-object/from16 v10, v35

    move-object/from16 v4, v36

    move-object/from16 v11, v40

    goto/16 :goto_178

    .end local v2    # "freqValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "freqTimings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v11    # "intensityValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v30    # "curves":Lorg/json/JSONArray;
    .end local v34    # "event":Lorg/json/JSONObject;
    .end local v35    # "parameters":Lorg/json/JSONObject;
    .local v7, "event":Lorg/json/JSONObject;
    .restart local v10    # "parameters":Lorg/json/JSONObject;
    .local v12, "curves":Lorg/json/JSONArray;
    .local v26, "intensityTimings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v27    # "intensityValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v28    # "freqTimings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v29    # "freqValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1ff
    move-object/from16 v36, v4

    move-object/from16 v34, v7

    move-object/from16 v35, v10

    move-object/from16 v40, v11

    move-object/from16 v30, v12

    move-object/from16 v12, v26

    move-object/from16 v11, v27

    move-object/from16 v4, v28

    move-object/from16 v2, v29

    .line 690
    .end local v0    # "j":I
    .end local v7    # "event":Lorg/json/JSONObject;
    .end local v10    # "parameters":Lorg/json/JSONObject;
    .end local v26    # "intensityTimings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v27    # "intensityValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v28    # "freqTimings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v29    # "freqValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v2    # "freqValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v4    # "freqTimings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v11    # "intensityValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v12, "intensityTimings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v30    # "curves":Lorg/json/JSONArray;
    .restart local v34    # "event":Lorg/json/JSONObject;
    .restart local v35    # "parameters":Lorg/json/JSONObject;
    new-instance v0, Landroid/os/DynamicEffect$Parameter;

    new-instance v7, Landroid/os/DynamicEffect$Curve;

    const/4 v10, 0x0

    invoke-direct {v7, v10, v10, v12, v11}, Landroid/os/DynamicEffect$Curve;-><init>(IILjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-direct {v0, v7}, Landroid/os/DynamicEffect$Parameter;-><init>(Landroid/os/DynamicEffect$Curve;)V

    invoke-virtual {v8, v0}, Landroid/os/DynamicEffect$PrimitiveEffect;->addParameter(Landroid/os/DynamicEffect$Parameter;)Landroid/os/DynamicEffect$PrimitiveEffect;

    .line 691
    new-instance v0, Landroid/os/DynamicEffect$Parameter;

    new-instance v7, Landroid/os/DynamicEffect$Curve;

    move-object/from16 v37, v3

    const/4 v3, 0x0

    const/4 v10, 0x1

    invoke-direct {v7, v10, v3, v4, v2}, Landroid/os/DynamicEffect$Curve;-><init>(IILjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-direct {v0, v7}, Landroid/os/DynamicEffect$Parameter;-><init>(Landroid/os/DynamicEffect$Curve;)V

    invoke-virtual {v8, v0}, Landroid/os/DynamicEffect$PrimitiveEffect;->addParameter(Landroid/os/DynamicEffect$Parameter;)Landroid/os/DynamicEffect$PrimitiveEffect;

    .line 692
    move-object v0, v8

    move/from16 v33, v25

    .end local v2    # "freqValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "freqTimings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v11    # "intensityValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v12    # "intensityTimings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v30    # "curves":Lorg/json/JSONArray;
    goto :goto_256

    .end local v8    # "effect":Landroid/os/DynamicEffect$PrimitiveEffect;
    .end local v25    # "duration":I
    .end local v34    # "event":Lorg/json/JSONObject;
    .end local v35    # "parameters":Lorg/json/JSONObject;
    .restart local v7    # "event":Lorg/json/JSONObject;
    .restart local v10    # "parameters":Lorg/json/JSONObject;
    .local v30, "effect":Landroid/os/DynamicEffect$PrimitiveEffect;
    .restart local v33    # "duration":I
    :cond_234
    move-object/from16 v31, v0

    move-object/from16 v37, v3

    move-object/from16 v36, v4

    move-object/from16 v34, v7

    move-object/from16 v35, v10

    move-object/from16 v40, v11

    .end local v7    # "event":Lorg/json/JSONObject;
    .end local v10    # "parameters":Lorg/json/JSONObject;
    .restart local v34    # "event":Lorg/json/JSONObject;
    .restart local v35    # "parameters":Lorg/json/JSONObject;
    if-nez v9, :cond_254

    .line 693
    new-instance v0, Landroid/os/DynamicEffect$PrimitiveEffect;

    const/16 v25, 0x0

    const/16 v29, -0x1

    move-object/from16 v24, v0

    move/from16 v26, v13

    move/from16 v27, v14

    move/from16 v28, v15

    invoke-direct/range {v24 .. v29}, Landroid/os/DynamicEffect$PrimitiveEffect;-><init>(IIIII)V

    .end local v30    # "effect":Landroid/os/DynamicEffect$PrimitiveEffect;
    .local v0, "effect":Landroid/os/DynamicEffect$PrimitiveEffect;
    goto :goto_256

    .line 692
    .end local v0    # "effect":Landroid/os/DynamicEffect$PrimitiveEffect;
    .restart local v30    # "effect":Landroid/os/DynamicEffect$PrimitiveEffect;
    :cond_254
    move-object/from16 v0, v30

    .line 695
    .end local v30    # "effect":Landroid/os/DynamicEffect$PrimitiveEffect;
    .restart local v0    # "effect":Landroid/os/DynamicEffect$PrimitiveEffect;
    :goto_256
    iget-object v2, v5, Landroid/os/DynamicEffect;->mEffects:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    nop

    .end local v9    # "typeCode":I
    .end local v14    # "intensity":I
    .end local v15    # "frequency":I
    .end local v18    # "pattern":Lorg/json/JSONObject;
    .end local v22    # "type":Ljava/lang/String;
    .end local v34    # "event":Lorg/json/JSONObject;
    .end local v35    # "parameters":Lorg/json/JSONObject;
    add-int/lit8 v6, v6, 0x1

    move-object v15, v0

    move-object/from16 v7, v17

    move-object/from16 v8, v19

    move/from16 v9, v20

    move-object/from16 v10, v21

    move/from16 v12, v23

    move-object/from16 v0, v31

    move-object/from16 v2, v32

    move/from16 v14, v33

    move-object/from16 v4, v36

    move-object/from16 v3, v37

    move-object/from16 v11, v40

    goto/16 :goto_4d

    .line 651
    .end local v0    # "effect":Landroid/os/DynamicEffect$PrimitiveEffect;
    .restart local v7    # "event":Lorg/json/JSONObject;
    .restart local v9    # "typeCode":I
    .restart local v10    # "parameters":Lorg/json/JSONObject;
    .restart local v14    # "intensity":I
    .local v15, "effect":Landroid/os/DynamicEffect$PrimitiveEffect;
    .restart local v18    # "pattern":Lorg/json/JSONObject;
    .restart local v22    # "type":Ljava/lang/String;
    .restart local v31    # "frequency":I
    :cond_277
    move-object/from16 v34, v7

    move-object/from16 v35, v10

    move-object/from16 v40, v11

    move-object/from16 v30, v15

    move/from16 v15, v31

    .line 652
    .end local v7    # "event":Lorg/json/JSONObject;
    .end local v10    # "parameters":Lorg/json/JSONObject;
    .end local v31    # "frequency":I
    .local v15, "frequency":I
    .restart local v30    # "effect":Landroid/os/DynamicEffect$PrimitiveEffect;
    .restart local v34    # "event":Lorg/json/JSONObject;
    .restart local v35    # "parameters":Lorg/json/JSONObject;
    :goto_281
    const-string v0, "intensity or frequency must between 0 and 100"

    move-object/from16 v2, v40

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_288
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_288} :catch_298

    .line 653
    goto :goto_29c

    .line 621
    .end local v17    # "json":Lorg/json/JSONObject;
    .end local v18    # "pattern":Lorg/json/JSONObject;
    .end local v19    # "jsonArray":Lorg/json/JSONArray;
    .end local v20    # "heVersion":I
    .end local v21    # "metaData":Lorg/json/JSONObject;
    .end local v22    # "type":Ljava/lang/String;
    .end local v23    # "numOfPattern":I
    .end local v30    # "effect":Landroid/os/DynamicEffect$PrimitiveEffect;
    .end local v33    # "duration":I
    .end local v34    # "event":Lorg/json/JSONObject;
    .end local v35    # "parameters":Lorg/json/JSONObject;
    .local v7, "json":Lorg/json/JSONObject;
    .local v8, "jsonArray":Lorg/json/JSONArray;
    .local v9, "heVersion":I
    .local v10, "metaData":Lorg/json/JSONObject;
    .local v12, "numOfPattern":I
    .local v14, "duration":I
    .local v15, "effect":Landroid/os/DynamicEffect$PrimitiveEffect;
    :cond_289
    move-object/from16 v17, v7

    move-object/from16 v19, v8

    move/from16 v20, v9

    move-object/from16 v21, v10

    move/from16 v23, v12

    move/from16 v33, v14

    move-object/from16 v30, v15

    .end local v7    # "json":Lorg/json/JSONObject;
    .end local v8    # "jsonArray":Lorg/json/JSONArray;
    .end local v9    # "heVersion":I
    .end local v10    # "metaData":Lorg/json/JSONObject;
    .end local v12    # "numOfPattern":I
    .end local v14    # "duration":I
    .end local v15    # "effect":Landroid/os/DynamicEffect$PrimitiveEffect;
    .restart local v17    # "json":Lorg/json/JSONObject;
    .restart local v19    # "jsonArray":Lorg/json/JSONArray;
    .restart local v20    # "heVersion":I
    .restart local v21    # "metaData":Lorg/json/JSONObject;
    .restart local v23    # "numOfPattern":I
    .restart local v30    # "effect":Landroid/os/DynamicEffect$PrimitiveEffect;
    .restart local v33    # "duration":I
    goto :goto_29c

    .line 697
    .end local v6    # "i":I
    .end local v13    # "relativeTime":I
    .end local v17    # "json":Lorg/json/JSONObject;
    .end local v19    # "jsonArray":Lorg/json/JSONArray;
    .end local v20    # "heVersion":I
    .end local v21    # "metaData":Lorg/json/JSONObject;
    .end local v23    # "numOfPattern":I
    .end local v30    # "effect":Landroid/os/DynamicEffect$PrimitiveEffect;
    .end local v33    # "duration":I
    :catch_298
    move-exception v0

    .line 698
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 699
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_29c
    goto/16 :goto_342

    .line 700
    :cond_29e
    move-object v2, v11

    sget-object v0, Landroid/os/DynamicEffect;->vhapticVersion:Ljava/lang/String;

    const-string v3, "2.0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_342

    .line 701
    const-string v0, "vhapticVersion is 2"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :try_start_2ae
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 704
    .local v0, "hapticObject":Lorg/json/JSONObject;
    const/4 v3, 0x0

    .line 705
    .local v3, "heVersion":I
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 706
    .local v4, "metaData":Lorg/json/JSONObject;
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    move v3, v6

    .line 707
    sget-object v6, Landroid/os/DynamicEffect;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v6

    .line 708
    .local v6, "seq":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    .line 709
    .local v7, "pid":I
    const/4 v9, 0x1

    if-ne v3, v9, :cond_2d1

    .line 710
    invoke-static {v1, v7, v6}, Landroid/os/DynamicEffect;->getSerializationDataHe_1_0(Ljava/lang/String;II)[I

    move-result-object v8

    sput-object v8, Landroid/os/DynamicEffect;->patternHeInfo:[I

    goto :goto_2f0

    .line 711
    :cond_2d1
    if-ne v3, v8, :cond_2da

    .line 712
    invoke-static {v1, v7, v6}, Landroid/os/DynamicEffect;->getSerializationDataHe_2_0(Ljava/lang/String;II)[I

    move-result-object v8

    sput-object v8, Landroid/os/DynamicEffect;->patternHeInfo:[I

    goto :goto_2f0

    .line 714
    :cond_2da
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HEVersion not support! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :goto_2f0
    sget-object v8, Landroid/os/DynamicEffect;->patternHeInfo:[I

    if-nez v8, :cond_30c

    .line 717
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get serialization he data failed! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    const/4 v2, 0x0

    return-object v2

    .line 721
    :cond_30c
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_30d
    sget-object v9, Landroid/os/DynamicEffect;->patternHeInfo:[I

    array-length v9, v9

    if-ge v8, v9, :cond_33b

    .line 722
    const-string v9, "DynamicEffect"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "patternHeInfo is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/os/DynamicEffect;->patternHeInfo:[I

    aget v11, v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_338
    .catch Ljava/lang/Exception; {:try_start_2ae .. :try_end_338} :catch_33c

    .line 721
    add-int/lit8 v8, v8, 0x1

    goto :goto_30d

    .line 727
    .end local v0    # "hapticObject":Lorg/json/JSONObject;
    .end local v3    # "heVersion":I
    .end local v4    # "metaData":Lorg/json/JSONObject;
    .end local v6    # "seq":I
    .end local v7    # "pid":I
    .end local v8    # "i":I
    :cond_33b
    goto :goto_342

    .line 725
    :catch_33c
    move-exception v0

    .line 726
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "create dynamic effect failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_342
    :goto_342
    return-object v5
.end method

.method public static whitelist create(Ljava/lang/String;F)Landroid/os/DynamicEffect;
    .registers 11
    .param p0, "jsonArray"    # Ljava/lang/String;
    .param p1, "intensity"    # F

    .line 297
    const-string v0, "ParameterCurve"

    const-string v1, "Event"

    :try_start_4
    new-instance v2, Landroid/os/DynamicEffect;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/os/DynamicEffect;-><init>(I)V

    .line 298
    .local v2, "ret":Landroid/os/DynamicEffect;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 299
    .local v4, "patterns":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_10
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_55

    .line 300
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 301
    .local v6, "pattern":Lorg/json/JSONObject;
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1e} :catch_67

    const-string v8, "Time"

    if-eqz v7, :cond_38

    .line 302
    :try_start_22
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-float v7, v7

    .line 303
    .local v7, "time":F
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v8}, Landroid/os/DynamicEffect;->parsePrimitive(Lorg/json/JSONObject;)Landroid/os/DynamicEffect$PrimitiveEffect;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/os/DynamicEffect;->addPrimitive(FLandroid/os/DynamicEffect$PrimitiveEffect;)Landroid/os/DynamicEffect;

    .line 304
    nop

    .end local v7    # "time":F
    goto :goto_52

    :cond_38
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_52

    .line 305
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-float v7, v7

    .line 306
    .restart local v7    # "time":F
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v8}, Landroid/os/DynamicEffect;->parseParameter(Lorg/json/JSONObject;)Landroid/os/DynamicEffect$Parameter;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/os/DynamicEffect;->addParameter(FLandroid/os/DynamicEffect$Parameter;)Landroid/os/DynamicEffect;

    .line 299
    .end local v6    # "pattern":Lorg/json/JSONObject;
    .end local v7    # "time":F
    :cond_52
    :goto_52
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 309
    .end local v5    # "i":I
    :cond_55
    const/4 v0, 0x1

    new-array v1, v0, [F

    const/4 v5, 0x0

    aput v5, v1, v3

    new-array v0, v0, [F

    aput p1, v0, v3

    invoke-static {v3, v1, v0}, Landroid/os/DynamicEffect;->createParameter(I[F[F)Landroid/os/DynamicEffect$Parameter;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Landroid/os/DynamicEffect;->addParameter(FLandroid/os/DynamicEffect$Parameter;)Landroid/os/DynamicEffect;
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_66} :catch_67

    .line 310
    return-object v2

    .line 311
    .end local v2    # "ret":Landroid/os/DynamicEffect;
    .end local v4    # "patterns":Lorg/json/JSONArray;
    :catch_67
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DynamicEffect"

    const-string v2, "parse json array error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist createContinuous(FFF)Landroid/os/DynamicEffect$PrimitiveEffect;
    .registers 10
    .param p0, "intensity"    # F
    .param p1, "sharpness"    # F
    .param p2, "duration"    # F

    .line 171
    new-instance v6, Landroid/os/DynamicEffect$PrimitiveEffect;

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float v1, p0, v0

    float-to-int v3, v1

    mul-float/2addr v0, p1

    float-to-int v4, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p2

    float-to-int v5, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/os/DynamicEffect$PrimitiveEffect;-><init>(IIIII)V

    return-object v6
.end method

.method public static whitelist createParameter(I[F[F)Landroid/os/DynamicEffect$Parameter;
    .registers 8
    .param p0, "type"    # I
    .param p1, "timings"    # [F
    .param p2, "values"    # [F

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v0, "timingsInt":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v1, "valuesInt":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    array-length v3, p1

    if-ge v2, v3, :cond_2b

    .line 204
    aget v3, p1, v2

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    aget v3, p2, v2

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 207
    .end local v2    # "i":I
    :cond_2b
    new-instance v2, Landroid/os/DynamicEffect$Curve;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v0, v1}, Landroid/os/DynamicEffect$Curve;-><init>(IILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 208
    .local v2, "curve":Landroid/os/DynamicEffect$Curve;
    new-instance v3, Landroid/os/DynamicEffect$Parameter;

    invoke-direct {v3, v2}, Landroid/os/DynamicEffect$Parameter;-><init>(Landroid/os/DynamicEffect$Curve;)V

    return-object v3
.end method

.method public static whitelist createTransient(FF)Landroid/os/DynamicEffect$PrimitiveEffect;
    .registers 9
    .param p0, "intensity"    # F
    .param p1, "sharpness"    # F

    .line 167
    new-instance v6, Landroid/os/DynamicEffect$PrimitiveEffect;

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float v1, p0, v0

    float-to-int v3, v1

    mul-float/2addr v0, p1

    float-to-int v4, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, -0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/os/DynamicEffect$PrimitiveEffect;-><init>(IIIII)V

    return-object v6
.end method

.method private static blacklist generateSerializationDataHe(III[Landroid/os/Pattern;)[I
    .registers 14
    .param p0, "heVersion"    # I
    .param p1, "pid"    # I
    .param p2, "seq"    # I
    .param p3, "patternList"    # [Landroid/os/Pattern;

    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, "totalPatternLen":I
    const/4 v1, 0x4

    .line 320
    .local v1, "patternOffset":I
    array-length v2, p3

    const/4 v3, 0x0

    move v4, v3

    :goto_5
    if-ge v4, v2, :cond_11

    aget-object v5, p3, v4

    .line 321
    .local v5, "patternTmp":Landroid/os/Pattern;
    invoke-virtual {v5}, Landroid/os/Pattern;->getPatternDataLen()I

    move-result v6

    add-int/2addr v0, v6

    .line 320
    .end local v5    # "patternTmp":Landroid/os/Pattern;
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 323
    :cond_11
    add-int v2, v1, v0

    new-array v2, v2, [I

    .line 324
    .local v2, "data":[I
    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 325
    aput p0, v2, v3

    .line 326
    const/4 v4, 0x1

    aput p1, v2, v4

    .line 327
    const/4 v4, 0x2

    aput p2, v2, v4

    .line 328
    const/4 v4, 0x3

    array-length v5, p3

    aput v5, v2, v4

    .line 329
    const/4 v4, 0x0

    .line 330
    .local v4, "indexBase":I
    const/4 v5, 0x0

    .line 331
    .local v5, "patternData":[I
    array-length v6, p3

    move v7, v3

    :goto_28
    if-ge v7, v6, :cond_3c

    aget-object v8, p3, v7

    .line 332
    .local v8, "patternTmp":Landroid/os/Pattern;
    invoke-virtual {v8, v4}, Landroid/os/Pattern;->generateSerializationPatternData(I)[I

    move-result-object v5

    .line 333
    array-length v9, v5

    invoke-static {v5, v3, v2, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 334
    array-length v9, v5

    add-int/2addr v1, v9

    .line 335
    nop

    .end local v8    # "patternTmp":Landroid/os/Pattern;
    add-int/lit8 v4, v4, 0x1

    .line 331
    add-int/lit8 v7, v7, 0x1

    goto :goto_28

    .line 337
    :cond_3c
    return-object v2
.end method

.method private static blacklist getSerializationDataHe_1_0(Ljava/lang/String;II)[I
    .registers 37
    .param p0, "patternString"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "seq"    # I

    .line 341
    const-string v0, "Frequency"

    const-string v1, "Intensity"

    const-string v2, "RelativeTime"

    const/4 v3, 0x0

    .line 344
    .local v3, "patternList":[Landroid/os/Pattern;
    :try_start_7
    new-instance v5, Lorg/json/JSONObject;

    move-object/from16 v6, p0

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 345
    .local v5, "hapticObject":Lorg/json/JSONObject;
    const-string v7, "Pattern"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 347
    .local v7, "eventArray":Lorg/json/JSONArray;
    const/4 v8, 0x1

    new-array v8, v8, [Landroid/os/Pattern;

    move-object v3, v8

    .line 348
    new-instance v8, Landroid/os/Pattern;

    invoke-direct {v8}, Landroid/os/Pattern;-><init>()V

    .line 349
    .local v8, "pattern":Landroid/os/Pattern;
    const/4 v9, 0x0

    iput v9, v8, Landroid/os/Pattern;->mRelativeTime:I

    .line 351
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v10

    new-array v10, v10, [Landroid/os/Event;

    iput-object v10, v8, Landroid/os/Pattern;->mEvent:[Landroid/os/Event;

    .line 352
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v10

    const/16 v11, 0x10

    invoke-static {v10, v9, v11}, Landroid/os/DynamicEffect;->between(III)Z

    move-result v10
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_32} :catch_2ec

    const-string v12, "DynamicEffect"

    if-nez v10, :cond_3b

    .line 353
    :try_start_36
    const-string v10, "Bad event num in pattern: 0"

    invoke-static {v12, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_3b
    const/4 v10, 0x0

    .line 357
    .local v10, "eventTimeLast":I
    const/4 v13, 0x0

    .local v13, "eventInd":I
    :goto_3d
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_2d9

    .line 358
    invoke-virtual {v7, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 359
    .local v14, "eventObject":Lorg/json/JSONObject;
    const-string v15, "Event"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 361
    .local v15, "eventTemp":Lorg/json/JSONObject;
    const-string v11, "Type"

    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 363
    .local v11, "name":Ljava/lang/String;
    const-string v9, "continuous"

    invoke-static {v9, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_67

    .line 364
    const/16 v9, 0x1000

    .line 365
    .local v9, "type":I
    iget-object v4, v8, Landroid/os/Pattern;->mEvent:[Landroid/os/Event;

    new-instance v17, Landroid/os/ContinuousEvent;

    invoke-direct/range {v17 .. v17}, Landroid/os/ContinuousEvent;-><init>()V

    aput-object v17, v4, v13

    goto :goto_7a

    .line 366
    .end local v9    # "type":I
    :cond_67
    const-string v4, "transient"

    invoke-static {v4, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2b9

    .line 367
    const/16 v9, 0x1001

    .line 368
    .restart local v9    # "type":I
    iget-object v4, v8, Landroid/os/Pattern;->mEvent:[Landroid/os/Event;

    new-instance v17, Landroid/os/TransientEvent;

    invoke-direct/range {v17 .. v17}, Landroid/os/TransientEvent;-><init>()V

    aput-object v17, v4, v13

    .line 374
    :goto_7a
    const/4 v4, 0x0

    .line 375
    .local v4, "vibId":I
    move-object/from16 v17, v5

    .end local v5    # "hapticObject":Lorg/json/JSONObject;
    .local v17, "hapticObject":Lorg/json/JSONObject;
    iget-object v5, v8, Landroid/os/Pattern;->mEvent:[Landroid/os/Event;

    aget-object v5, v5, v13

    int-to-byte v6, v4

    iput v6, v5, Landroid/os/Event;->mVibId:I

    .line 376
    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_88} :catch_2ec

    const-string v6, "Bad event relative time in pattern:0 in event:"

    if-nez v5, :cond_a2

    .line 377
    :try_start_8c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/4 v1, 0x0

    return-object v1

    .line 380
    :cond_a2
    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 381
    .local v5, "eventTime":I
    if-lez v13, :cond_c0

    if-ge v5, v10, :cond_c0

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/4 v1, 0x0

    return-object v1

    .line 385
    :cond_c0
    move v10, v5

    .line 388
    .end local v5    # "eventTime":I
    const v5, 0xc350

    move-object/from16 v18, v2

    const/4 v2, 0x0

    invoke-static {v10, v2, v5}, Landroid/os/DynamicEffect;->between(III)Z

    move-result v5

    if-nez v5, :cond_e8

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const-string v0, "relativeTime must between 0 and 50000"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v1, 0x0

    return-object v1

    .line 394
    :cond_e8
    const-string v2, "Parameters"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 395
    .local v2, "parametersObject":Lorg/json/JSONObject;
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 396
    .local v5, "intensity":I
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 397
    .local v6, "frequency":I
    move/from16 v19, v4

    .end local v4    # "vibId":I
    .local v19, "vibId":I
    const/16 v4, 0x96

    move-object/from16 v20, v7

    .end local v7    # "eventArray":Lorg/json/JSONArray;
    .local v20, "eventArray":Lorg/json/JSONArray;
    const/16 v7, -0x32

    invoke-static {v5, v7, v4}, Landroid/os/DynamicEffect;->between(III)Z

    move-result v21

    if-eqz v21, :cond_293

    invoke-static {v6, v7, v4}, Landroid/os/DynamicEffect;->between(III)Z

    move-result v4

    if-nez v4, :cond_11a

    move-object/from16 v22, v2

    move/from16 v21, v5

    move/from16 v23, v6

    move/from16 v24, v9

    move/from16 v25, v10

    move-object/from16 v31, v14

    move-object/from16 v32, v15

    goto/16 :goto_2a1

    .line 401
    :cond_11a
    iget-object v4, v8, Landroid/os/Pattern;->mEvent:[Landroid/os/Event;

    aget-object v4, v4, v13

    iput v9, v4, Landroid/os/Event;->mType:I

    .line 402
    iget-object v4, v8, Landroid/os/Pattern;->mEvent:[Landroid/os/Event;

    aget-object v4, v4, v13

    iput v10, v4, Landroid/os/Event;->mRelativeTime:I

    .line 403
    iget-object v4, v8, Landroid/os/Pattern;->mEvent:[Landroid/os/Event;

    aget-object v4, v4, v13

    iput v5, v4, Landroid/os/Event;->mIntensity:I

    .line 404
    iget-object v4, v8, Landroid/os/Pattern;->mEvent:[Landroid/os/Event;

    aget-object v4, v4, v13

    iput v6, v4, Landroid/os/Event;->mFreq:I

    .line 406
    const/16 v4, 0x1000

    if-ne v4, v9, :cond_270

    .line 407
    const-string v4, "Duration"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 408
    .local v4, "duration":I
    const/16 v7, 0x1388

    move/from16 v21, v5

    const/4 v5, 0x0

    .end local v5    # "intensity":I
    .local v21, "intensity":I
    invoke-static {v4, v5, v7}, Landroid/os/DynamicEffect;->between(III)Z

    move-result v7

    if-nez v7, :cond_164

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad duration in pattern:0 in event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const-string v0, "duration must be less than 5000"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const/4 v1, 0x0

    return-object v1

    .line 413
    :cond_164
    iget-object v5, v8, Landroid/os/Pattern;->mEvent:[Landroid/os/Event;

    aget-object v5, v5, v13

    iput v4, v5, Landroid/os/Event;->mDuration:I

    .line 414
    const-string v5, "Curve"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 415
    .local v5, "curve":Lorg/json/JSONArray;
    iget-object v7, v8, Landroid/os/Pattern;->mEvent:[Landroid/os/Event;

    aget-object v7, v7, v13

    check-cast v7, Landroid/os/ContinuousEvent;

    move-object/from16 v22, v2

    .end local v2    # "parametersObject":Lorg/json/JSONObject;
    .local v22, "parametersObject":Lorg/json/JSONObject;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v2

    int-to-byte v2, v2

    iput v2, v7, Landroid/os/ContinuousEvent;->mPointNum:I

    .line 416
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v7, 0x4

    move/from16 v23, v6

    const/16 v6, 0x10

    .end local v6    # "frequency":I
    .local v23, "frequency":I
    invoke-static {v2, v7, v6}, Landroid/os/DynamicEffect;->between(III)Z

    move-result v2

    if-nez v2, :cond_1a4

    .line 417
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad point num in pattern:0 in event:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_1a4
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Landroid/os/Point;

    .line 421
    .local v2, "pointArray":[Landroid/os/Point;
    const/4 v7, -0x1

    .line 422
    .local v7, "prevPointTime":I
    const/16 v16, 0x0

    .line 423
    .local v16, "pointInd":I
    const/16 v24, 0x0

    .line 424
    .local v24, "pointLastTime":I
    const/16 v16, 0x0

    move/from16 v6, v16

    move/from16 v33, v24

    move/from16 v24, v9

    move/from16 v9, v33

    .end local v16    # "pointInd":I
    .local v6, "pointInd":I
    .local v9, "pointLastTime":I
    .local v24, "type":I
    :goto_1b9
    move/from16 v25, v10

    .end local v10    # "eventTimeLast":I
    .local v25, "eventTimeLast":I
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v6, v10, :cond_245

    .line 425
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 426
    .local v10, "curveObject":Lorg/json/JSONObject;
    new-instance v26, Landroid/os/Point;

    invoke-direct/range {v26 .. v26}, Landroid/os/Point;-><init>()V

    aput-object v26, v2, v6

    .line 427
    move-object/from16 v26, v5

    .end local v5    # "curve":Lorg/json/JSONArray;
    .local v26, "curve":Lorg/json/JSONArray;
    const-string v5, "Time"

    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 428
    .local v5, "pointTime":I
    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v27

    const-wide/high16 v29, 0x4059000000000000L    # 100.0

    move-object/from16 v31, v14

    move-object/from16 v32, v15

    .end local v14    # "eventObject":Lorg/json/JSONObject;
    .end local v15    # "eventTemp":Lorg/json/JSONObject;
    .local v31, "eventObject":Lorg/json/JSONObject;
    .local v32, "eventTemp":Lorg/json/JSONObject;
    mul-double v14, v27, v29

    double-to-int v14, v14

    .line 429
    .local v14, "pointIntensity":I
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 431
    .local v15, "pointFrequency":I
    if-nez v6, :cond_201

    if-eqz v5, :cond_201

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad point start time in pattern:0 in event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const/4 v1, 0x0

    return-object v1

    .line 436
    :cond_201
    if-lez v6, :cond_227

    if-ge v5, v7, :cond_227

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad point time in pattern:0 in event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in point:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const/4 v1, 0x0

    return-object v1

    .line 440
    :cond_227
    move v7, v5

    .line 442
    move-object/from16 v27, v0

    aget-object v0, v2, v6

    iput v5, v0, Landroid/os/Point;->mTime:I

    .line 443
    aget-object v0, v2, v6

    iput v14, v0, Landroid/os/Point;->mIntensity:I

    .line 444
    aget-object v0, v2, v6

    iput v15, v0, Landroid/os/Point;->mFreq:I

    .line 445
    move v9, v5

    .line 424
    .end local v5    # "pointTime":I
    .end local v10    # "curveObject":Lorg/json/JSONObject;
    .end local v14    # "pointIntensity":I
    .end local v15    # "pointFrequency":I
    add-int/lit8 v6, v6, 0x1

    move/from16 v10, v25

    move-object/from16 v5, v26

    move-object/from16 v0, v27

    move-object/from16 v14, v31

    move-object/from16 v15, v32

    goto/16 :goto_1b9

    .line 447
    .end local v26    # "curve":Lorg/json/JSONArray;
    .end local v31    # "eventObject":Lorg/json/JSONObject;
    .end local v32    # "eventTemp":Lorg/json/JSONObject;
    .local v5, "curve":Lorg/json/JSONArray;
    .local v14, "eventObject":Lorg/json/JSONObject;
    .local v15, "eventTemp":Lorg/json/JSONObject;
    :cond_245
    move-object/from16 v27, v0

    move-object/from16 v26, v5

    move-object/from16 v31, v14

    move-object/from16 v32, v15

    .end local v5    # "curve":Lorg/json/JSONArray;
    .end local v14    # "eventObject":Lorg/json/JSONObject;
    .end local v15    # "eventTemp":Lorg/json/JSONObject;
    .restart local v26    # "curve":Lorg/json/JSONArray;
    .restart local v31    # "eventObject":Lorg/json/JSONObject;
    .restart local v32    # "eventTemp":Lorg/json/JSONObject;
    if-eq v9, v4, :cond_267

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad point end time in pattern:0 in event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const/4 v1, 0x0

    return-object v1

    .line 451
    :cond_267
    iget-object v0, v8, Landroid/os/Pattern;->mEvent:[Landroid/os/Event;

    aget-object v0, v0, v13

    check-cast v0, Landroid/os/ContinuousEvent;

    iput-object v2, v0, Landroid/os/ContinuousEvent;->mPoint:[Landroid/os/Point;

    goto :goto_280

    .line 406
    .end local v4    # "duration":I
    .end local v7    # "prevPointTime":I
    .end local v21    # "intensity":I
    .end local v22    # "parametersObject":Lorg/json/JSONObject;
    .end local v23    # "frequency":I
    .end local v24    # "type":I
    .end local v25    # "eventTimeLast":I
    .end local v26    # "curve":Lorg/json/JSONArray;
    .end local v31    # "eventObject":Lorg/json/JSONObject;
    .end local v32    # "eventTemp":Lorg/json/JSONObject;
    .local v2, "parametersObject":Lorg/json/JSONObject;
    .local v5, "intensity":I
    .local v6, "frequency":I
    .local v9, "type":I
    .local v10, "eventTimeLast":I
    .restart local v14    # "eventObject":Lorg/json/JSONObject;
    .restart local v15    # "eventTemp":Lorg/json/JSONObject;
    :cond_270
    move-object/from16 v27, v0

    move-object/from16 v22, v2

    move/from16 v21, v5

    move/from16 v23, v6

    move/from16 v24, v9

    move/from16 v25, v10

    move-object/from16 v31, v14

    move-object/from16 v32, v15

    .line 357
    .end local v2    # "parametersObject":Lorg/json/JSONObject;
    .end local v5    # "intensity":I
    .end local v6    # "frequency":I
    .end local v9    # "type":I
    .end local v10    # "eventTimeLast":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v14    # "eventObject":Lorg/json/JSONObject;
    .end local v15    # "eventTemp":Lorg/json/JSONObject;
    .end local v19    # "vibId":I
    .restart local v25    # "eventTimeLast":I
    :goto_280
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v6, p0

    move-object/from16 v5, v17

    move-object/from16 v2, v18

    move-object/from16 v7, v20

    move/from16 v10, v25

    move-object/from16 v0, v27

    const/4 v9, 0x0

    const/16 v11, 0x10

    goto/16 :goto_3d

    .line 397
    .end local v25    # "eventTimeLast":I
    .restart local v2    # "parametersObject":Lorg/json/JSONObject;
    .restart local v5    # "intensity":I
    .restart local v6    # "frequency":I
    .restart local v9    # "type":I
    .restart local v10    # "eventTimeLast":I
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v14    # "eventObject":Lorg/json/JSONObject;
    .restart local v15    # "eventTemp":Lorg/json/JSONObject;
    .restart local v19    # "vibId":I
    :cond_293
    move-object/from16 v22, v2

    move/from16 v21, v5

    move/from16 v23, v6

    move/from16 v24, v9

    move/from16 v25, v10

    move-object/from16 v31, v14

    move-object/from16 v32, v15

    .line 398
    .end local v2    # "parametersObject":Lorg/json/JSONObject;
    .end local v5    # "intensity":I
    .end local v6    # "frequency":I
    .end local v9    # "type":I
    .end local v10    # "eventTimeLast":I
    .end local v14    # "eventObject":Lorg/json/JSONObject;
    .end local v15    # "eventTemp":Lorg/json/JSONObject;
    .restart local v21    # "intensity":I
    .restart local v22    # "parametersObject":Lorg/json/JSONObject;
    .restart local v23    # "frequency":I
    .restart local v24    # "type":I
    .restart local v25    # "eventTimeLast":I
    .restart local v31    # "eventObject":Lorg/json/JSONObject;
    .restart local v32    # "eventTemp":Lorg/json/JSONObject;
    :goto_2a1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad intensity or frequency in pattern:0 in event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/4 v1, 0x0

    return-object v1

    .line 370
    .end local v17    # "hapticObject":Lorg/json/JSONObject;
    .end local v19    # "vibId":I
    .end local v20    # "eventArray":Lorg/json/JSONArray;
    .end local v21    # "intensity":I
    .end local v22    # "parametersObject":Lorg/json/JSONObject;
    .end local v23    # "frequency":I
    .end local v24    # "type":I
    .end local v25    # "eventTimeLast":I
    .end local v31    # "eventObject":Lorg/json/JSONObject;
    .end local v32    # "eventTemp":Lorg/json/JSONObject;
    .local v5, "hapticObject":Lorg/json/JSONObject;
    .local v7, "eventArray":Lorg/json/JSONArray;
    .restart local v10    # "eventTimeLast":I
    .restart local v14    # "eventObject":Lorg/json/JSONObject;
    .restart local v15    # "eventTemp":Lorg/json/JSONObject;
    :cond_2b9
    move-object/from16 v17, v5

    move-object/from16 v20, v7

    move-object/from16 v31, v14

    move-object/from16 v32, v15

    .end local v5    # "hapticObject":Lorg/json/JSONObject;
    .end local v7    # "eventArray":Lorg/json/JSONArray;
    .end local v14    # "eventObject":Lorg/json/JSONObject;
    .end local v15    # "eventTemp":Lorg/json/JSONObject;
    .restart local v17    # "hapticObject":Lorg/json/JSONObject;
    .restart local v20    # "eventArray":Lorg/json/JSONArray;
    .restart local v31    # "eventObject":Lorg/json/JSONObject;
    .restart local v32    # "eventTemp":Lorg/json/JSONObject;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad event type in pattern:0 in event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 v1, 0x0

    return-object v1

    .line 357
    .end local v11    # "name":Ljava/lang/String;
    .end local v17    # "hapticObject":Lorg/json/JSONObject;
    .end local v20    # "eventArray":Lorg/json/JSONArray;
    .end local v31    # "eventObject":Lorg/json/JSONObject;
    .end local v32    # "eventTemp":Lorg/json/JSONObject;
    .restart local v5    # "hapticObject":Lorg/json/JSONObject;
    .restart local v7    # "eventArray":Lorg/json/JSONArray;
    :cond_2d9
    move-object/from16 v17, v5

    move-object/from16 v20, v7

    .line 454
    .end local v5    # "hapticObject":Lorg/json/JSONObject;
    .end local v7    # "eventArray":Lorg/json/JSONArray;
    .end local v13    # "eventInd":I
    .restart local v17    # "hapticObject":Lorg/json/JSONObject;
    .restart local v20    # "eventArray":Lorg/json/JSONArray;
    const/4 v0, 0x0

    aput-object v8, v3, v0
    :try_end_2e0
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_2e0} :catch_2ec

    .line 455
    const/4 v0, 0x2

    move/from16 v1, p1

    move/from16 v2, p2

    :try_start_2e5
    invoke-static {v0, v1, v2, v3}, Landroid/os/DynamicEffect;->generateSerializationDataHe(III[Landroid/os/Pattern;)[I

    move-result-object v0
    :try_end_2e9
    .catch Ljava/lang/Exception; {:try_start_2e5 .. :try_end_2e9} :catch_2ea

    .line 456
    .local v0, "patternHe":[I
    return-object v0

    .line 457
    .end local v0    # "patternHe":[I
    .end local v8    # "pattern":Landroid/os/Pattern;
    .end local v10    # "eventTimeLast":I
    .end local v17    # "hapticObject":Lorg/json/JSONObject;
    .end local v20    # "eventArray":Lorg/json/JSONArray;
    :catch_2ea
    move-exception v0

    goto :goto_2f1

    :catch_2ec
    move-exception v0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 458
    .local v0, "e":Ljava/lang/Exception;
    :goto_2f1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 460
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    return-object v4
.end method

.method private static blacklist getSerializationDataHe_2_0(Ljava/lang/String;II)[I
    .registers 44
    .param p0, "patternString"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "seq"    # I

    .line 464
    const-string v0, "Frequency"

    const-string v1, "Intensity"

    const-string v2, "RelativeTime"

    const/4 v3, 0x0

    .line 465
    .local v3, "patternTimeLast":I
    const/4 v4, 0x0

    .line 467
    .local v4, "patternList":[Landroid/os/Pattern;
    const/4 v5, 0x0

    :try_start_9
    new-instance v6, Lorg/json/JSONObject;

    move-object/from16 v7, p0

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 468
    .local v6, "hapticObject":Lorg/json/JSONObject;
    const-string v8, "PatternList"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 469
    .local v8, "patternArray":Lorg/json/JSONArray;
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    .line 470
    .local v9, "patternNum":I
    new-array v10, v9, [Landroid/os/Pattern;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1c} :catch_42f

    move-object v4, v10

    .line 471
    const/4 v10, 0x0

    .local v10, "ind":I
    :goto_1e
    if-ge v10, v9, :cond_414

    .line 472
    :try_start_20
    new-instance v11, Landroid/os/Pattern;

    invoke-direct {v11}, Landroid/os/Pattern;-><init>()V

    .line 473
    .local v11, "pattern":Landroid/os/Pattern;
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 474
    .local v12, "patternObject":Lorg/json/JSONObject;
    const-string v13, "AbsoluteTime"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 475
    .local v13, "patternRelativeTime":I
    iput v13, v11, Landroid/os/Pattern;->mRelativeTime:I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_31} :catch_40a

    .line 477
    const-string v14, "DynamicEffect"

    if-lez v10, :cond_4e

    if-ge v13, v3, :cond_4e

    .line 478
    :try_start_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad pattern relative time in pattern:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_4d} :catch_42f

    .line 479
    return-object v5

    .line 482
    :cond_4e
    :try_start_4e
    const-string v15, "Pattern"

    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 483
    .local v15, "eventArray":Lorg/json/JSONArray;
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v5, v5, [Landroid/os/Event;

    iput-object v5, v11, Landroid/os/Pattern;->mEvent:[Landroid/os/Event;

    .line 485
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v5
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_60} :catch_40a

    move/from16 v16, v3

    .end local v3    # "patternTimeLast":I
    .local v16, "patternTimeLast":I
    const/16 v3, 0x10

    move-object/from16 v17, v6

    .end local v6    # "hapticObject":Lorg/json/JSONObject;
    .local v17, "hapticObject":Lorg/json/JSONObject;
    const/4 v6, 0x0

    :try_start_67
    invoke-static {v5, v6, v3}, Landroid/os/DynamicEffect;->between(III)Z

    move-result v5
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6b} :catch_400

    if-nez v5, :cond_8d

    .line 486
    :try_start_6d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad event num in pattern:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_83} :catch_84

    goto :goto_8d

    .line 597
    .end local v8    # "patternArray":Lorg/json/JSONArray;
    .end local v9    # "patternNum":I
    .end local v10    # "ind":I
    .end local v11    # "pattern":Landroid/os/Pattern;
    .end local v12    # "patternObject":Lorg/json/JSONObject;
    .end local v13    # "patternRelativeTime":I
    .end local v15    # "eventArray":Lorg/json/JSONArray;
    .end local v17    # "hapticObject":Lorg/json/JSONObject;
    :catch_84
    move-exception v0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v16

    goto/16 :goto_434

    .line 489
    .restart local v8    # "patternArray":Lorg/json/JSONArray;
    .restart local v9    # "patternNum":I
    .restart local v10    # "ind":I
    .restart local v11    # "pattern":Landroid/os/Pattern;
    .restart local v12    # "patternObject":Lorg/json/JSONObject;
    .restart local v13    # "patternRelativeTime":I
    .restart local v15    # "eventArray":Lorg/json/JSONArray;
    .restart local v17    # "hapticObject":Lorg/json/JSONObject;
    :cond_8d
    :goto_8d
    const/4 v3, 0x0

    .line 490
    .local v3, "eventTimeLast":I
    const/4 v5, 0x0

    move v6, v5

    move/from16 v5, v16

    .end local v16    # "patternTimeLast":I
    .local v5, "patternTimeLast":I
    .local v6, "eventInd":I
    :goto_92
    :try_start_92
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_3c7

    .line 491
    invoke-virtual {v15, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 492
    .local v7, "eventObject":Lorg/json/JSONObject;
    move-object/from16 v19, v8

    .end local v8    # "patternArray":Lorg/json/JSONArray;
    .local v19, "patternArray":Lorg/json/JSONArray;
    const-string v8, "Event"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 494
    .local v8, "eventTemp":Lorg/json/JSONObject;
    move-object/from16 v16, v7

    .end local v7    # "eventObject":Lorg/json/JSONObject;
    .local v16, "eventObject":Lorg/json/JSONObject;
    const-string v7, "Type"

    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 496
    .local v7, "name":Ljava/lang/String;
    move/from16 v20, v9

    .end local v9    # "patternNum":I
    .local v20, "patternNum":I
    const-string v9, "continuous"

    invoke-static {v9, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_b4} :catch_3f7

    move-object/from16 v21, v12

    .end local v12    # "patternObject":Lorg/json/JSONObject;
    .local v21, "patternObject":Lorg/json/JSONObject;
    const-string v12, " in event:"

    if-eqz v9, :cond_d4

    .line 497
    const/16 v9, 0x1000

    .line 498
    .local v9, "type":I
    move/from16 v22, v9

    .end local v9    # "type":I
    .local v22, "type":I
    :try_start_be
    iget-object v9, v11, Landroid/os/Pattern;->mEvent:[Landroid/os/Event;

    new-instance v23, Landroid/os/ContinuousEvent;

    invoke-direct/range {v23 .. v23}, Landroid/os/ContinuousEvent;-><init>()V

    aput-object v23, v9, v6
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_c7} :catch_cc

    move/from16 v9, v22

    move-object/from16 v22, v7

    goto :goto_e9

    .line 597
    .end local v3    # "eventTimeLast":I
    .end local v6    # "eventInd":I
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "eventTemp":Lorg/json/JSONObject;
    .end local v10    # "ind":I
    .end local v11    # "pattern":Landroid/os/Pattern;
    .end local v13    # "patternRelativeTime":I
    .end local v15    # "eventArray":Lorg/json/JSONArray;
    .end local v16    # "eventObject":Lorg/json/JSONObject;
    .end local v17    # "hapticObject":Lorg/json/JSONObject;
    .end local v19    # "patternArray":Lorg/json/JSONArray;
    .end local v20    # "patternNum":I
    .end local v21    # "patternObject":Lorg/json/JSONObject;
    .end local v22    # "type":I
    :catch_cc
    move-exception v0

    move/from16 v1, p1

    move/from16 v2, p2

    move v3, v5

    goto/16 :goto_434

    .line 499
    .restart local v3    # "eventTimeLast":I
    .restart local v6    # "eventInd":I
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v8    # "eventTemp":Lorg/json/JSONObject;
    .restart local v10    # "ind":I
    .restart local v11    # "pattern":Landroid/os/Pattern;
    .restart local v13    # "patternRelativeTime":I
    .restart local v15    # "eventArray":Lorg/json/JSONArray;
    .restart local v16    # "eventObject":Lorg/json/JSONObject;
    .restart local v17    # "hapticObject":Lorg/json/JSONObject;
    .restart local v19    # "patternArray":Lorg/json/JSONArray;
    .restart local v20    # "patternNum":I
    .restart local v21    # "patternObject":Lorg/json/JSONObject;
    :cond_d4
    :try_start_d4
    const-string v9, "transient"

    invoke-static {v9, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_39d

    .line 500
    const/16 v9, 0x1001

    .line 501
    .restart local v9    # "type":I
    move-object/from16 v22, v7

    .end local v7    # "name":Ljava/lang/String;
    .local v22, "name":Ljava/lang/String;
    iget-object v7, v11, Landroid/os/Pattern;->mEvent:[Landroid/os/Event;

    new-instance v23, Landroid/os/TransientEvent;

    invoke-direct/range {v23 .. v23}, Landroid/os/TransientEvent;-><init>()V

    aput-object v23, v7, v6

    .line 507
    :goto_e9
    const-string v7, "Index"

    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 508
    .local v7, "vibId":I
    move/from16 v23, v13

    .end local v13    # "patternRelativeTime":I
    .local v23, "patternRelativeTime":I
    iget-object v13, v11, Landroid/os/Pattern;->mEvent:[Landroid/os/Event;

    aget-object v13, v13, v6

    move-object/from16 v24, v15

    .end local v15    # "eventArray":Lorg/json/JSONArray;
    .local v24, "eventArray":Lorg/json/JSONArray;
    int-to-byte v15, v7

    iput v15, v13, Landroid/os/Event;->mVibId:I

    .line 509
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_fe} :catch_3f7

    const-string v15, "Bad event relative time in pattern:"

    if-nez v13, :cond_120

    .line 510
    :try_start_102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_11e} :catch_cc

    .line 511
    const/4 v1, 0x0

    return-object v1

    .line 513
    :cond_120
    :try_start_120
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_120 .. :try_end_124} :catch_3f7

    .line 514
    .local v13, "eventTime":I
    if-lez v6, :cond_146

    if-ge v13, v3, :cond_146

    .line 515
    :try_start_128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_144
    .catch Ljava/lang/Exception; {:try_start_128 .. :try_end_144} :catch_cc

    .line 516
    const/4 v1, 0x0

    return-object v1

    .line 518
    :cond_146
    move v3, v13

    .line 521
    .end local v13    # "eventTime":I
    const v13, 0xc350

    move-object/from16 v25, v2

    const/4 v2, 0x0

    :try_start_14d
    invoke-static {v3, v2, v13}, Landroid/os/DynamicEffect;->between(III)Z

    move-result v13
    :try_end_151
    .catch Ljava/lang/Exception; {:try_start_14d .. :try_end_151} :catch_3f7

    if-nez v13, :cond_176

    .line 522
    :try_start_153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const-string v0, "relativeTime must between 0 and 50000"

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_174
    .catch Ljava/lang/Exception; {:try_start_153 .. :try_end_174} :catch_cc

    .line 524
    const/4 v1, 0x0

    return-object v1

    .line 527
    :cond_176
    :try_start_176
    const-string v2, "Parameters"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 528
    .local v2, "parametersObject":Lorg/json/JSONObject;
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 529
    .local v13, "intensity":I
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15
    :try_end_184
    .catch Ljava/lang/Exception; {:try_start_176 .. :try_end_184} :catch_3f7

    .line 530
    .local v15, "frequency":I
    move/from16 v26, v7

    .end local v7    # "vibId":I
    .local v26, "vibId":I
    const/16 v7, 0x96

    move-object/from16 v27, v4

    .end local v4    # "patternList":[Landroid/os/Pattern;
    .local v27, "patternList":[Landroid/os/Pattern;
    const/16 v4, -0x32

    :try_start_18c
    invoke-static {v13, v4, v7}, Landroid/os/DynamicEffect;->between(III)Z

    move-result v28

    if-eqz v28, :cond_374

    invoke-static {v15, v4, v7}, Landroid/os/DynamicEffect;->between(III)Z

    move-result v4

    if-nez v4, :cond_1a3

    move-object/from16 v29, v2

    move v0, v3

    move-object/from16 v28, v8

    move/from16 v30, v13

    move/from16 v32, v15

    goto/16 :goto_37d

    .line 534
    :cond_1a3
    iget-object v4, v11, Landroid/os/Pattern;->mEvent:[Landroid/os/Event;

    aget-object v4, v4, v6

    iput v9, v4, Landroid/os/Event;->mType:I

    .line 535
    iget-object v4, v11, Landroid/os/Pattern;->mEvent:[Landroid/os/Event;

    aget-object v4, v4, v6

    iput v3, v4, Landroid/os/Event;->mRelativeTime:I

    .line 536
    iget-object v4, v11, Landroid/os/Pattern;->mEvent:[Landroid/os/Event;

    aget-object v4, v4, v6

    iput v13, v4, Landroid/os/Event;->mIntensity:I

    .line 537
    iget-object v4, v11, Landroid/os/Pattern;->mEvent:[Landroid/os/Event;

    aget-object v4, v4, v6

    iput v15, v4, Landroid/os/Event;->mFreq:I

    .line 539
    const/16 v4, 0x1000

    if-ne v4, v9, :cond_345

    .line 540
    const-string v4, "Duration"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 541
    .local v4, "duration":I
    const/16 v7, 0x1388

    move-object/from16 v28, v8

    const/4 v8, 0x0

    .end local v8    # "eventTemp":Lorg/json/JSONObject;
    .local v28, "eventTemp":Lorg/json/JSONObject;
    invoke-static {v4, v8, v7}, Landroid/os/DynamicEffect;->between(III)Z

    move-result v7

    if-nez v7, :cond_1f5

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad duration in pattern:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const-string v0, "duration must be less than 5000"

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const/4 v1, 0x0

    return-object v1

    .line 546
    :cond_1f5
    iget-object v7, v11, Landroid/os/Pattern;->mEvent:[Landroid/os/Event;

    aget-object v7, v7, v6

    iput v4, v7, Landroid/os/Event;->mDuration:I
    :try_end_1fb
    .catch Ljava/lang/Exception; {:try_start_18c .. :try_end_1fb} :catch_3ee

    .line 547
    add-int v7, v4, v3

    if-ge v5, v7, :cond_201

    .line 548
    add-int v5, v4, v3

    .line 549
    :cond_201
    :try_start_201
    const-string v7, "Curve"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 550
    .local v7, "curve":Lorg/json/JSONArray;
    iget-object v8, v11, Landroid/os/Pattern;->mEvent:[Landroid/os/Event;

    aget-object v8, v8, v6

    check-cast v8, Landroid/os/ContinuousEvent;

    move-object/from16 v29, v2

    .end local v2    # "parametersObject":Lorg/json/JSONObject;
    .local v29, "parametersObject":Lorg/json/JSONObject;
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v2

    int-to-byte v2, v2

    iput v2, v8, Landroid/os/ContinuousEvent;->mPointNum:I

    .line 551
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v8, 0x4

    move/from16 v30, v13

    const/16 v13, 0x10

    .end local v13    # "intensity":I
    .local v30, "intensity":I
    invoke-static {v2, v8, v13}, Landroid/os/DynamicEffect;->between(III)Z

    move-result v2
    :try_end_223
    .catch Ljava/lang/Exception; {:try_start_201 .. :try_end_223} :catch_338

    if-nez v2, :cond_243

    .line 552
    :try_start_225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad point num in pattern:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_243
    .catch Ljava/lang/Exception; {:try_start_225 .. :try_end_243} :catch_3ee

    .line 554
    :cond_243
    :try_start_243
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Landroid/os/Point;
    :try_end_249
    .catch Ljava/lang/Exception; {:try_start_243 .. :try_end_249} :catch_338

    .line 556
    .local v2, "pointArray":[Landroid/os/Point;
    const/4 v8, -0x1

    .line 557
    .local v8, "prevPointTime":I
    const/16 v18, 0x0

    .line 558
    .local v18, "pointInd":I
    const/16 v31, 0x0

    .line 559
    .local v31, "pointLastTime":I
    const/16 v18, 0x0

    move/from16 v13, v18

    move/from16 v40, v31

    move/from16 v31, v5

    move/from16 v5, v40

    .end local v18    # "pointInd":I
    .local v5, "pointLastTime":I
    .local v13, "pointInd":I
    .local v31, "patternTimeLast":I
    :goto_258
    move/from16 v32, v15

    .end local v15    # "frequency":I
    .local v32, "frequency":I
    :try_start_25a
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v13, v15, :cond_2f4

    .line 560
    invoke-virtual {v7, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 561
    .local v15, "curveObject":Lorg/json/JSONObject;
    new-instance v33, Landroid/os/Point;

    invoke-direct/range {v33 .. v33}, Landroid/os/Point;-><init>()V

    aput-object v33, v2, v13

    .line 562
    move-object/from16 v33, v7

    .end local v7    # "curve":Lorg/json/JSONArray;
    .local v33, "curve":Lorg/json/JSONArray;
    const-string v7, "Time"

    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 563
    .local v7, "pointTime":I
    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v34

    const-wide/high16 v36, 0x4059000000000000L    # 100.0

    move/from16 v38, v3

    move/from16 v39, v4

    .end local v3    # "eventTimeLast":I
    .end local v4    # "duration":I
    .local v38, "eventTimeLast":I
    .local v39, "duration":I
    mul-double v3, v34, v36

    double-to-int v3, v3

    .line 564
    .local v3, "pointIntensity":I
    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 566
    .local v4, "pointFrequency":I
    if-nez v13, :cond_2a8

    if-eqz v7, :cond_2a8

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad point start time in pattern:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const/4 v1, 0x0

    return-object v1

    .line 571
    :cond_2a8
    if-lez v13, :cond_2d6

    if-ge v7, v8, :cond_2d6

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad point time in pattern:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in point:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    const/4 v1, 0x0

    return-object v1

    .line 575
    :cond_2d6
    move v8, v7

    .line 577
    move-object/from16 v34, v0

    aget-object v0, v2, v13

    iput v7, v0, Landroid/os/Point;->mTime:I

    .line 578
    aget-object v0, v2, v13

    iput v3, v0, Landroid/os/Point;->mIntensity:I

    .line 579
    aget-object v0, v2, v13

    iput v4, v0, Landroid/os/Point;->mFreq:I

    .line 580
    move v5, v7

    .line 559
    .end local v3    # "pointIntensity":I
    .end local v4    # "pointFrequency":I
    .end local v7    # "pointTime":I
    .end local v15    # "curveObject":Lorg/json/JSONObject;
    add-int/lit8 v13, v13, 0x1

    move/from16 v15, v32

    move-object/from16 v7, v33

    move-object/from16 v0, v34

    move/from16 v3, v38

    move/from16 v4, v39

    goto/16 :goto_258

    .line 582
    .end local v33    # "curve":Lorg/json/JSONArray;
    .end local v38    # "eventTimeLast":I
    .end local v39    # "duration":I
    .local v3, "eventTimeLast":I
    .local v4, "duration":I
    .local v7, "curve":Lorg/json/JSONArray;
    :cond_2f4
    move-object/from16 v34, v0

    move/from16 v38, v3

    move/from16 v39, v4

    move-object/from16 v33, v7

    .end local v3    # "eventTimeLast":I
    .end local v4    # "duration":I
    .end local v7    # "curve":Lorg/json/JSONArray;
    .restart local v33    # "curve":Lorg/json/JSONArray;
    .restart local v38    # "eventTimeLast":I
    .restart local v39    # "duration":I
    move/from16 v0, v39

    .end local v39    # "duration":I
    .local v0, "duration":I
    if-eq v5, v0, :cond_320

    .line 583
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad point end time in pattern:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const/4 v1, 0x0

    return-object v1

    .line 586
    :cond_320
    iget-object v3, v11, Landroid/os/Pattern;->mEvent:[Landroid/os/Event;

    aget-object v3, v3, v6

    check-cast v3, Landroid/os/ContinuousEvent;

    iput-object v2, v3, Landroid/os/ContinuousEvent;->mPoint:[Landroid/os/Point;
    :try_end_328
    .catch Ljava/lang/Exception; {:try_start_25a .. :try_end_328} :catch_32d

    .line 587
    .end local v0    # "duration":I
    .end local v2    # "pointArray":[Landroid/os/Point;
    .end local v5    # "pointLastTime":I
    .end local v8    # "prevPointTime":I
    .end local v13    # "pointInd":I
    .end local v33    # "curve":Lorg/json/JSONArray;
    move/from16 v5, v31

    move/from16 v0, v38

    goto :goto_35d

    .line 597
    .end local v6    # "eventInd":I
    .end local v9    # "type":I
    .end local v10    # "ind":I
    .end local v11    # "pattern":Landroid/os/Pattern;
    .end local v16    # "eventObject":Lorg/json/JSONObject;
    .end local v17    # "hapticObject":Lorg/json/JSONObject;
    .end local v19    # "patternArray":Lorg/json/JSONArray;
    .end local v20    # "patternNum":I
    .end local v21    # "patternObject":Lorg/json/JSONObject;
    .end local v22    # "name":Ljava/lang/String;
    .end local v23    # "patternRelativeTime":I
    .end local v24    # "eventArray":Lorg/json/JSONArray;
    .end local v26    # "vibId":I
    .end local v28    # "eventTemp":Lorg/json/JSONObject;
    .end local v29    # "parametersObject":Lorg/json/JSONObject;
    .end local v30    # "intensity":I
    .end local v32    # "frequency":I
    .end local v38    # "eventTimeLast":I
    :catch_32d
    move-exception v0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, v27

    move/from16 v3, v31

    goto/16 :goto_434

    .end local v31    # "patternTimeLast":I
    .local v5, "patternTimeLast":I
    :catch_338
    move-exception v0

    move/from16 v31, v5

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, v27

    move/from16 v3, v31

    .end local v5    # "patternTimeLast":I
    .restart local v31    # "patternTimeLast":I
    goto/16 :goto_434

    .line 587
    .end local v31    # "patternTimeLast":I
    .local v2, "parametersObject":Lorg/json/JSONObject;
    .restart local v3    # "eventTimeLast":I
    .restart local v5    # "patternTimeLast":I
    .restart local v6    # "eventInd":I
    .local v8, "eventTemp":Lorg/json/JSONObject;
    .restart local v9    # "type":I
    .restart local v10    # "ind":I
    .restart local v11    # "pattern":Landroid/os/Pattern;
    .local v13, "intensity":I
    .local v15, "frequency":I
    .restart local v16    # "eventObject":Lorg/json/JSONObject;
    .restart local v17    # "hapticObject":Lorg/json/JSONObject;
    .restart local v19    # "patternArray":Lorg/json/JSONArray;
    .restart local v20    # "patternNum":I
    .restart local v21    # "patternObject":Lorg/json/JSONObject;
    .restart local v22    # "name":Ljava/lang/String;
    .restart local v23    # "patternRelativeTime":I
    .restart local v24    # "eventArray":Lorg/json/JSONArray;
    .restart local v26    # "vibId":I
    :cond_345
    move-object/from16 v34, v0

    move-object/from16 v29, v2

    move/from16 v38, v3

    move-object/from16 v28, v8

    move/from16 v30, v13

    move/from16 v32, v15

    .end local v2    # "parametersObject":Lorg/json/JSONObject;
    .end local v3    # "eventTimeLast":I
    .end local v8    # "eventTemp":Lorg/json/JSONObject;
    .end local v13    # "intensity":I
    .end local v15    # "frequency":I
    .restart local v28    # "eventTemp":Lorg/json/JSONObject;
    .restart local v29    # "parametersObject":Lorg/json/JSONObject;
    .restart local v30    # "intensity":I
    .restart local v32    # "frequency":I
    .restart local v38    # "eventTimeLast":I
    const/16 v0, 0x1001

    if-ne v0, v9, :cond_35b

    .line 588
    move/from16 v0, v38

    .end local v38    # "eventTimeLast":I
    .local v0, "eventTimeLast":I
    if-ge v5, v0, :cond_35d

    .line 589
    move v5, v0

    goto :goto_35d

    .line 587
    .end local v0    # "eventTimeLast":I
    .restart local v38    # "eventTimeLast":I
    :cond_35b
    move/from16 v0, v38

    .line 490
    .end local v9    # "type":I
    .end local v16    # "eventObject":Lorg/json/JSONObject;
    .end local v22    # "name":Ljava/lang/String;
    .end local v26    # "vibId":I
    .end local v28    # "eventTemp":Lorg/json/JSONObject;
    .end local v29    # "parametersObject":Lorg/json/JSONObject;
    .end local v30    # "intensity":I
    .end local v32    # "frequency":I
    .end local v38    # "eventTimeLast":I
    .restart local v0    # "eventTimeLast":I
    :cond_35d
    :goto_35d
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v7, p0

    move v3, v0

    move-object/from16 v8, v19

    move/from16 v9, v20

    move-object/from16 v12, v21

    move/from16 v13, v23

    move-object/from16 v15, v24

    move-object/from16 v2, v25

    move-object/from16 v4, v27

    move-object/from16 v0, v34

    goto/16 :goto_92

    .line 530
    .end local v0    # "eventTimeLast":I
    .restart local v2    # "parametersObject":Lorg/json/JSONObject;
    .restart local v3    # "eventTimeLast":I
    .restart local v8    # "eventTemp":Lorg/json/JSONObject;
    .restart local v9    # "type":I
    .restart local v13    # "intensity":I
    .restart local v15    # "frequency":I
    .restart local v16    # "eventObject":Lorg/json/JSONObject;
    .restart local v22    # "name":Ljava/lang/String;
    .restart local v26    # "vibId":I
    :cond_374
    move-object/from16 v29, v2

    move v0, v3

    move-object/from16 v28, v8

    move/from16 v30, v13

    move/from16 v32, v15

    .line 531
    .end local v2    # "parametersObject":Lorg/json/JSONObject;
    .end local v3    # "eventTimeLast":I
    .end local v8    # "eventTemp":Lorg/json/JSONObject;
    .end local v13    # "intensity":I
    .end local v15    # "frequency":I
    .restart local v0    # "eventTimeLast":I
    .restart local v28    # "eventTemp":Lorg/json/JSONObject;
    .restart local v29    # "parametersObject":Lorg/json/JSONObject;
    .restart local v30    # "intensity":I
    .restart local v32    # "frequency":I
    :goto_37d
    :try_start_37d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad intensity or frequency in pattern:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const/4 v1, 0x0

    return-object v1

    .line 503
    .end local v0    # "eventTimeLast":I
    .end local v9    # "type":I
    .end local v22    # "name":Ljava/lang/String;
    .end local v23    # "patternRelativeTime":I
    .end local v24    # "eventArray":Lorg/json/JSONArray;
    .end local v26    # "vibId":I
    .end local v27    # "patternList":[Landroid/os/Pattern;
    .end local v28    # "eventTemp":Lorg/json/JSONObject;
    .end local v29    # "parametersObject":Lorg/json/JSONObject;
    .end local v30    # "intensity":I
    .end local v32    # "frequency":I
    .restart local v3    # "eventTimeLast":I
    .local v4, "patternList":[Landroid/os/Pattern;
    .local v7, "name":Ljava/lang/String;
    .restart local v8    # "eventTemp":Lorg/json/JSONObject;
    .local v13, "patternRelativeTime":I
    .local v15, "eventArray":Lorg/json/JSONArray;
    :cond_39d
    move-object/from16 v27, v4

    move-object/from16 v22, v7

    move-object/from16 v28, v8

    move/from16 v23, v13

    move-object/from16 v24, v15

    .end local v4    # "patternList":[Landroid/os/Pattern;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "eventTemp":Lorg/json/JSONObject;
    .end local v13    # "patternRelativeTime":I
    .end local v15    # "eventArray":Lorg/json/JSONArray;
    .restart local v22    # "name":Ljava/lang/String;
    .restart local v23    # "patternRelativeTime":I
    .restart local v24    # "eventArray":Lorg/json/JSONArray;
    .restart local v27    # "patternList":[Landroid/os/Pattern;
    .restart local v28    # "eventTemp":Lorg/json/JSONObject;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad event type in pattern:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const/4 v1, 0x0

    return-object v1

    .line 490
    .end local v16    # "eventObject":Lorg/json/JSONObject;
    .end local v19    # "patternArray":Lorg/json/JSONArray;
    .end local v20    # "patternNum":I
    .end local v21    # "patternObject":Lorg/json/JSONObject;
    .end local v22    # "name":Ljava/lang/String;
    .end local v23    # "patternRelativeTime":I
    .end local v24    # "eventArray":Lorg/json/JSONArray;
    .end local v27    # "patternList":[Landroid/os/Pattern;
    .end local v28    # "eventTemp":Lorg/json/JSONObject;
    .restart local v4    # "patternList":[Landroid/os/Pattern;
    .local v8, "patternArray":Lorg/json/JSONArray;
    .local v9, "patternNum":I
    .restart local v12    # "patternObject":Lorg/json/JSONObject;
    .restart local v13    # "patternRelativeTime":I
    .restart local v15    # "eventArray":Lorg/json/JSONArray;
    :cond_3c7
    move-object/from16 v34, v0

    move-object/from16 v25, v2

    move-object/from16 v27, v4

    move-object/from16 v19, v8

    move/from16 v20, v9

    move-object/from16 v21, v12

    move/from16 v23, v13

    move-object/from16 v24, v15

    .line 592
    .end local v4    # "patternList":[Landroid/os/Pattern;
    .end local v6    # "eventInd":I
    .end local v8    # "patternArray":Lorg/json/JSONArray;
    .end local v9    # "patternNum":I
    .end local v12    # "patternObject":Lorg/json/JSONObject;
    .end local v13    # "patternRelativeTime":I
    .end local v15    # "eventArray":Lorg/json/JSONArray;
    .restart local v19    # "patternArray":Lorg/json/JSONArray;
    .restart local v20    # "patternNum":I
    .restart local v21    # "patternObject":Lorg/json/JSONObject;
    .restart local v23    # "patternRelativeTime":I
    .restart local v24    # "eventArray":Lorg/json/JSONArray;
    .restart local v27    # "patternList":[Landroid/os/Pattern;
    aput-object v11, v27, v10
    :try_end_3d9
    .catch Ljava/lang/Exception; {:try_start_37d .. :try_end_3d9} :catch_3ee

    .line 593
    nop

    .end local v3    # "eventTimeLast":I
    .end local v11    # "pattern":Landroid/os/Pattern;
    .end local v21    # "patternObject":Lorg/json/JSONObject;
    .end local v23    # "patternRelativeTime":I
    .end local v24    # "eventArray":Lorg/json/JSONArray;
    add-int/lit8 v10, v10, 0x1

    .line 594
    move-object/from16 v7, p0

    move v3, v5

    move-object/from16 v6, v17

    move-object/from16 v8, v19

    move/from16 v9, v20

    move-object/from16 v2, v25

    move-object/from16 v4, v27

    move-object/from16 v0, v34

    const/4 v5, 0x0

    goto/16 :goto_1e

    .line 597
    .end local v10    # "ind":I
    .end local v17    # "hapticObject":Lorg/json/JSONObject;
    .end local v19    # "patternArray":Lorg/json/JSONArray;
    .end local v20    # "patternNum":I
    :catch_3ee
    move-exception v0

    move/from16 v1, p1

    move/from16 v2, p2

    move v3, v5

    move-object/from16 v4, v27

    goto :goto_434

    .end local v27    # "patternList":[Landroid/os/Pattern;
    .restart local v4    # "patternList":[Landroid/os/Pattern;
    :catch_3f7
    move-exception v0

    move-object/from16 v27, v4

    move/from16 v1, p1

    move/from16 v2, p2

    move v3, v5

    .end local v4    # "patternList":[Landroid/os/Pattern;
    .restart local v27    # "patternList":[Landroid/os/Pattern;
    goto :goto_434

    .end local v5    # "patternTimeLast":I
    .end local v27    # "patternList":[Landroid/os/Pattern;
    .restart local v4    # "patternList":[Landroid/os/Pattern;
    .local v16, "patternTimeLast":I
    :catch_400
    move-exception v0

    move-object/from16 v27, v4

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v16

    .end local v4    # "patternList":[Landroid/os/Pattern;
    .restart local v27    # "patternList":[Landroid/os/Pattern;
    goto :goto_434

    .end local v16    # "patternTimeLast":I
    .end local v27    # "patternList":[Landroid/os/Pattern;
    .local v3, "patternTimeLast":I
    .restart local v4    # "patternList":[Landroid/os/Pattern;
    :catch_40a
    move-exception v0

    move/from16 v16, v3

    move-object/from16 v27, v4

    move/from16 v1, p1

    move/from16 v2, p2

    .end local v3    # "patternTimeLast":I
    .end local v4    # "patternList":[Landroid/os/Pattern;
    .restart local v16    # "patternTimeLast":I
    .restart local v27    # "patternList":[Landroid/os/Pattern;
    goto :goto_434

    .line 471
    .end local v16    # "patternTimeLast":I
    .end local v27    # "patternList":[Landroid/os/Pattern;
    .restart local v3    # "patternTimeLast":I
    .restart local v4    # "patternList":[Landroid/os/Pattern;
    .local v6, "hapticObject":Lorg/json/JSONObject;
    .restart local v8    # "patternArray":Lorg/json/JSONArray;
    .restart local v9    # "patternNum":I
    .restart local v10    # "ind":I
    :cond_414
    move/from16 v16, v3

    move-object/from16 v27, v4

    move-object/from16 v17, v6

    move-object/from16 v19, v8

    move/from16 v20, v9

    .line 595
    .end local v3    # "patternTimeLast":I
    .end local v4    # "patternList":[Landroid/os/Pattern;
    .end local v6    # "hapticObject":Lorg/json/JSONObject;
    .end local v8    # "patternArray":Lorg/json/JSONArray;
    .end local v9    # "patternNum":I
    .end local v10    # "ind":I
    .restart local v16    # "patternTimeLast":I
    .restart local v17    # "hapticObject":Lorg/json/JSONObject;
    .restart local v19    # "patternArray":Lorg/json/JSONArray;
    .restart local v20    # "patternNum":I
    .restart local v27    # "patternList":[Landroid/os/Pattern;
    const/4 v0, 0x2

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v27

    .end local v27    # "patternList":[Landroid/os/Pattern;
    .local v3, "patternList":[Landroid/os/Pattern;
    :try_start_425
    invoke-static {v0, v1, v2, v3}, Landroid/os/DynamicEffect;->generateSerializationDataHe(III[Landroid/os/Pattern;)[I

    move-result-object v0
    :try_end_429
    .catch Ljava/lang/Exception; {:try_start_425 .. :try_end_429} :catch_42a

    .line 596
    .local v0, "patternHe":[I
    return-object v0

    .line 597
    .end local v0    # "patternHe":[I
    .end local v17    # "hapticObject":Lorg/json/JSONObject;
    .end local v19    # "patternArray":Lorg/json/JSONArray;
    .end local v20    # "patternNum":I
    :catch_42a
    move-exception v0

    move-object v4, v3

    move/from16 v3, v16

    goto :goto_434

    .end local v16    # "patternTimeLast":I
    .local v3, "patternTimeLast":I
    .restart local v4    # "patternList":[Landroid/os/Pattern;
    :catch_42f
    move-exception v0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 598
    .local v0, "e":Ljava/lang/Exception;
    :goto_434
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 600
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    return-object v5
.end method

.method static synthetic blacklist lambda$encapsulate$0(Ljava/lang/Integer;)I
    .registers 2
    .param p0, "i"    # Ljava/lang/Integer;

    .line 814
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static blacklist parseParameter(Lorg/json/JSONObject;)Landroid/os/DynamicEffect$Parameter;
    .registers 8
    .param p0, "curve"    # Lorg/json/JSONObject;

    .line 276
    :try_start_0
    const-string v0, "ParameterID"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "id":Ljava/lang/String;
    const-string v1, "ParameterCurveControlPoints"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 278
    .local v1, "points":Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [F

    .line 279
    .local v2, "timings":[F
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [F

    .line 280
    .local v3, "values":[F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_19
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_3c

    .line 281
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "Time"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, v2, v4

    .line 282
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "ParameterValue"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, v3, v4

    .line 280
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 284
    .end local v4    # "i":I
    :cond_3c
    const-string v4, "HapticIntensityControl"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 285
    const/4 v4, 0x0

    invoke-static {v4, v2, v3}, Landroid/os/DynamicEffect;->createParameter(I[F[F)Landroid/os/DynamicEffect$Parameter;

    move-result-object v4

    return-object v4

    .line 286
    :cond_4a
    const-string v4, "HapticSharpnessControl"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 287
    const/4 v4, 0x1

    invoke-static {v4, v2, v3}, Landroid/os/DynamicEffect;->createParameter(I[F[F)Landroid/os/DynamicEffect$Parameter;

    move-result-object v4
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_57} :catch_59

    return-object v4

    .line 291
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "points":Lorg/json/JSONArray;
    .end local v2    # "timings":[F
    .end local v3    # "values":[F
    :cond_58
    goto :goto_61

    .line 289
    :catch_59
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DynamicEffect"

    const-string v2, "parse json fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_61
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist parsePrimitive(Lorg/json/JSONObject;)Landroid/os/DynamicEffect$PrimitiveEffect;
    .registers 21
    .param p0, "event"    # Lorg/json/JSONObject;

    .line 225
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 227
    .local v2, "ret":Landroid/os/DynamicEffect$PrimitiveEffect;
    :try_start_3
    const-string v0, "EventType"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "eventType":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "intensity":F
    const/4 v4, 0x0

    .local v4, "sharpness":F
    const/4 v5, 0x0

    .local v5, "attackTime":F
    const/4 v6, 0x0

    .local v6, "releaseTime":F
    const/high16 v7, -0x40800000    # -1.0f

    .local v7, "sustained":F
    const/4 v8, 0x0

    .line 229
    .local v8, "decayTime":F
    const-string v9, "EventParameters"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 230
    .local v9, "parameters":Lorg/json/JSONArray;
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_17
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_62

    .line 231
    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 232
    .local v11, "parameter":Lorg/json/JSONObject;
    const-string v12, "ParameterID"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 233
    .local v12, "parameterId":Ljava/lang/String;
    const-string v13, "ParameterValue"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v13

    double-to-float v13, v13

    .line 234
    .local v13, "value":F
    const-string v14, "HapticIntensity"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_38

    .line 235
    move v3, v13

    goto :goto_5f

    .line 236
    :cond_38
    const-string v14, "HapticSharpness"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_42

    .line 237
    move v4, v13

    goto :goto_5f

    .line 238
    :cond_42
    const-string v14, "AttackTime"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4c

    .line 239
    move v5, v13

    goto :goto_5f

    .line 240
    :cond_4c
    const-string v14, "ReleaseTime"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_56

    .line 241
    move v6, v13

    goto :goto_5f

    .line 242
    :cond_56
    const-string v14, "Sustained"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5f

    .line 243
    move v7, v13

    .line 230
    .end local v11    # "parameter":Lorg/json/JSONObject;
    .end local v12    # "parameterId":Ljava/lang/String;
    .end local v13    # "value":F
    :cond_5f
    :goto_5f
    add-int/lit8 v10, v10, 0x1

    goto :goto_17

    .line 247
    .end local v10    # "j":I
    :cond_62
    const-string v10, "HapticContinuous"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_db

    .line 248
    const-string v10, "EventDuration"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-float v10, v10

    .line 249
    .local v10, "duration":F
    const/4 v11, 0x0

    cmpl-float v12, v7, v11

    const/4 v14, 0x0

    if-lez v12, :cond_ab

    .line 250
    add-float v12, v10, v6

    .line 251
    .local v12, "sustainedDuration":F
    invoke-static {v3, v4, v12}, Landroid/os/DynamicEffect;->createContinuous(FFF)Landroid/os/DynamicEffect$PrimitiveEffect;

    move-result-object v17

    move-object/from16 v2, v17

    .line 252
    const/4 v13, 0x4

    new-array v15, v13, [F

    aput v11, v15, v14

    const/16 v18, 0x1

    aput v5, v15, v18

    const/16 v17, 0x2

    aput v10, v15, v17

    add-float v19, v10, v6

    const/16 v16, 0x3

    aput v19, v15, v16

    new-array v13, v13, [F

    aput v11, v13, v14

    const/16 v18, 0x1

    aput v3, v13, v18

    const/16 v17, 0x2

    aput v3, v13, v17

    const/16 v16, 0x3

    aput v11, v13, v16

    invoke-static {v14, v15, v13}, Landroid/os/DynamicEffect;->createParameter(I[F[F)Landroid/os/DynamicEffect$Parameter;

    move-result-object v11

    .line 255
    .local v11, "param":Landroid/os/DynamicEffect$Parameter;
    invoke-virtual {v2, v11}, Landroid/os/DynamicEffect$PrimitiveEffect;->addParameter(Landroid/os/DynamicEffect$Parameter;)Landroid/os/DynamicEffect$PrimitiveEffect;

    .line 256
    nop

    .end local v11    # "param":Landroid/os/DynamicEffect$Parameter;
    .end local v12    # "sustainedDuration":F
    goto :goto_e9

    :cond_ab
    const/high16 v12, -0x40800000    # -1.0f

    cmpl-float v12, v7, v12

    if-lez v12, :cond_d5

    .line 257
    invoke-static {v3, v4, v10}, Landroid/os/DynamicEffect;->createContinuous(FFF)Landroid/os/DynamicEffect$PrimitiveEffect;

    move-result-object v12

    move-object v2, v12

    .line 258
    const/4 v12, 0x3

    new-array v13, v12, [F

    aput v11, v13, v14

    const/4 v12, 0x1

    aput v5, v13, v12

    const/4 v12, 0x2

    aput v8, v13, v12

    const/4 v12, 0x3

    new-array v12, v12, [F

    aput v11, v12, v14

    const/4 v15, 0x1

    aput v3, v12, v15

    const/4 v15, 0x2

    aput v11, v12, v15

    invoke-static {v14, v13, v12}, Landroid/os/DynamicEffect;->createParameter(I[F[F)Landroid/os/DynamicEffect$Parameter;

    move-result-object v11

    .line 261
    .restart local v11    # "param":Landroid/os/DynamicEffect$Parameter;
    invoke-virtual {v2, v11}, Landroid/os/DynamicEffect$PrimitiveEffect;->addParameter(Landroid/os/DynamicEffect$Parameter;)Landroid/os/DynamicEffect$PrimitiveEffect;

    .line 262
    nop

    .end local v11    # "param":Landroid/os/DynamicEffect$Parameter;
    goto :goto_e9

    .line 263
    :cond_d5
    invoke-static {v3, v4, v10}, Landroid/os/DynamicEffect;->createContinuous(FFF)Landroid/os/DynamicEffect$PrimitiveEffect;

    move-result-object v11

    move-object v2, v11

    goto :goto_e9

    .line 265
    .end local v10    # "duration":F
    :cond_db
    const-string v10, "HapticTransient"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e9

    .line 266
    invoke-static {v3, v4}, Landroid/os/DynamicEffect;->createTransient(FF)Landroid/os/DynamicEffect$PrimitiveEffect;

    move-result-object v10
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e7} :catch_eb

    move-object v2, v10

    goto :goto_ea

    .line 265
    :cond_e9
    :goto_e9
    nop

    .line 270
    .end local v0    # "eventType":Ljava/lang/String;
    .end local v3    # "intensity":F
    .end local v4    # "sharpness":F
    .end local v5    # "attackTime":F
    .end local v6    # "releaseTime":F
    .end local v7    # "sustained":F
    .end local v8    # "decayTime":F
    .end local v9    # "parameters":Lorg/json/JSONArray;
    :goto_ea
    goto :goto_f3

    .line 268
    :catch_eb
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "DynamicEffect"

    const-string v4, "parse json fail"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_f3
    return-object v2
.end method


# virtual methods
.method public whitelist addParameter(FLandroid/os/DynamicEffect$Parameter;)Landroid/os/DynamicEffect;
    .registers 6
    .param p1, "startTime"    # F
    .param p2, "param"    # Landroid/os/DynamicEffect$Parameter;

    .line 185
    if-nez p2, :cond_18

    .line 186
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "fail to add global parameter, time : %f"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DynamicEffect"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 188
    :cond_18
    iget-object v0, p2, Landroid/os/DynamicEffect$Parameter;->mCurve:Landroid/os/DynamicEffect$Curve;

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/os/DynamicEffect$Curve;->mRelativeTime:I

    .line 189
    iget-object v0, p0, Landroid/os/DynamicEffect;->mGlobalCurve:Ljava/util/ArrayList;

    iget-object v1, p2, Landroid/os/DynamicEffect$Parameter;->mCurve:Landroid/os/DynamicEffect$Curve;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    :goto_27
    return-object p0
.end method

.method public whitelist addPrimitive(FLandroid/os/DynamicEffect$PrimitiveEffect;)Landroid/os/DynamicEffect;
    .registers 6
    .param p1, "startTime"    # F
    .param p2, "effect"    # Landroid/os/DynamicEffect$PrimitiveEffect;

    .line 175
    if-nez p2, :cond_18

    .line 176
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "fail to add Primitive, time : %f"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DynamicEffect"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 178
    :cond_18
    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p2, Landroid/os/DynamicEffect$PrimitiveEffect;->mRelativeTime:I

    .line 179
    iget-object v0, p0, Landroid/os/DynamicEffect;->mEffects:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    :goto_23
    return-object p0
.end method

.method public whitelist clear()V
    .registers 2

    .line 216
    iget-object v0, p0, Landroid/os/DynamicEffect;->mEffects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 217
    iget-object v0, p0, Landroid/os/DynamicEffect;->mGlobalCurve:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 218
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 840
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist encapsulate()[I
    .registers 10

    .line 766
    iget-object v0, p0, Landroid/os/DynamicEffect;->encapsulated:[I

    if-eqz v0, :cond_5

    .line 767
    return-object v0

    .line 769
    :cond_5
    sget-object v0, Landroid/os/DynamicEffect;->vhapticVersion:Ljava/lang/String;

    const-string v1, "2.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_32

    iget v0, p0, Landroid/os/DynamicEffect;->version:I

    if-ne v3, v0, :cond_32

    .line 770
    sget-object v1, Landroid/os/DynamicEffect;->patternHeInfo:[I

    array-length v4, v1

    .line 771
    .local v4, "len":I
    const/4 v5, 0x0

    .line 772
    .local v5, "encapsulate":[I
    add-int/lit8 v6, v4, 0x4

    new-array v5, v6, [I

    .line 773
    array-length v6, v5

    aput v6, v5, v2

    .line 774
    aput v0, v5, v3

    .line 775
    const/4 v0, 0x2

    iget v3, p0, Landroid/os/DynamicEffect;->globalIntensity:I

    aput v3, v5, v0

    .line 776
    const/4 v0, 0x3

    iget v3, p0, Landroid/os/DynamicEffect;->globalSharpness:I

    aput v3, v5, v0

    .line 777
    array-length v0, v1

    const/4 v3, 0x4

    invoke-static {v1, v2, v5, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 778
    return-object v5

    .line 779
    .end local v4    # "len":I
    .end local v5    # "encapsulate":[I
    :cond_32
    sget-object v0, Landroid/os/DynamicEffect;->vhapticVersion:Ljava/lang/String;

    const-string v4, "1.0"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    sget-object v0, Landroid/os/DynamicEffect;->vhapticVersion:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    iget v0, p0, Landroid/os/DynamicEffect;->version:I

    if-nez v0, :cond_49

    goto :goto_4b

    .line 817
    :cond_49
    const/4 v0, 0x0

    return-object v0

    .line 780
    :cond_4b
    :goto_4b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 781
    .local v0, "encapsulate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget v1, p0, Landroid/os/DynamicEffect;->version:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    iget v1, p0, Landroid/os/DynamicEffect;->globalIntensity:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    iget v1, p0, Landroid/os/DynamicEffect;->globalSharpness:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    iget-object v1, p0, Landroid/os/DynamicEffect;->mGlobalCurve:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    iget-object v1, p0, Landroid/os/DynamicEffect;->mGlobalCurve:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_cc

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/DynamicEffect$Curve;

    .line 786
    .local v4, "curve":Landroid/os/DynamicEffect$Curve;
    iget v5, v4, Landroid/os/DynamicEffect$Curve;->mType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    iget v5, v4, Landroid/os/DynamicEffect$Curve;->mRelativeTime:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 788
    iget-object v5, v4, Landroid/os/DynamicEffect$Curve;->mTimings:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_aa
    iget-object v6, v4, Landroid/os/DynamicEffect$Curve;->mTimings:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_cb

    .line 790
    iget-object v6, v4, Landroid/os/DynamicEffect$Curve;->mTimings:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    iget-object v6, v4, Landroid/os/DynamicEffect$Curve;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    add-int/lit8 v5, v5, 0x1

    goto :goto_aa

    .line 793
    .end local v4    # "curve":Landroid/os/DynamicEffect$Curve;
    .end local v5    # "i":I
    :cond_cb
    goto :goto_7e

    .line 794
    :cond_cc
    iget-object v1, p0, Landroid/os/DynamicEffect;->mEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 795
    iget-object v1, p0, Landroid/os/DynamicEffect;->mEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_df
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/DynamicEffect$PrimitiveEffect;

    .line 796
    .local v4, "effect":Landroid/os/DynamicEffect$PrimitiveEffect;
    iget v5, v4, Landroid/os/DynamicEffect$PrimitiveEffect;->mType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 797
    iget v5, v4, Landroid/os/DynamicEffect$PrimitiveEffect;->mRelativeTime:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 798
    iget v5, v4, Landroid/os/DynamicEffect$PrimitiveEffect;->mIntensity:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    iget v5, v4, Landroid/os/DynamicEffect$PrimitiveEffect;->mSharpness:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 800
    iget v5, v4, Landroid/os/DynamicEffect$PrimitiveEffect;->mDuration:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    iget-object v5, v4, Landroid/os/DynamicEffect$PrimitiveEffect;->mCurves:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 802
    iget-object v5, v4, Landroid/os/DynamicEffect$PrimitiveEffect;->mCurves:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_12b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_179

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/DynamicEffect$Curve;

    .line 803
    .local v6, "curve":Landroid/os/DynamicEffect$Curve;
    iget v7, v6, Landroid/os/DynamicEffect$Curve;->mType:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    iget v7, v6, Landroid/os/DynamicEffect$Curve;->mRelativeTime:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 805
    iget-object v7, v6, Landroid/os/DynamicEffect$Curve;->mTimings:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_157
    iget-object v8, v6, Landroid/os/DynamicEffect$Curve;->mTimings:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_178

    .line 807
    iget-object v8, v6, Landroid/os/DynamicEffect$Curve;->mTimings:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    iget-object v8, v6, Landroid/os/DynamicEffect$Curve;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    add-int/lit8 v7, v7, 0x1

    goto :goto_157

    .line 810
    .end local v6    # "curve":Landroid/os/DynamicEffect$Curve;
    .end local v7    # "i":I
    :cond_178
    goto :goto_12b

    .line 811
    .end local v4    # "effect":Landroid/os/DynamicEffect$PrimitiveEffect;
    :cond_179
    goto/16 :goto_df

    .line 812
    :cond_17b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 813
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/os/DynamicEffect;->encapsulated:[I

    .line 814
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/os/DynamicEffect$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/os/DynamicEffect$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    iput-object v1, p0, Landroid/os/DynamicEffect;->encapsulated:[I

    .line 815
    return-object v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 747
    instance-of v0, p1, Landroid/os/DynamicEffect;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 748
    return v1

    .line 749
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/os/DynamicEffect;

    .line 751
    .local v0, "other":Landroid/os/DynamicEffect;
    iget-object v2, p0, Landroid/os/DynamicEffect;->mEffects:Ljava/util/ArrayList;

    iget-object v3, v0, Landroid/os/DynamicEffect;->mEffects:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Landroid/os/DynamicEffect;->mGlobalCurve:Ljava/util/ArrayList;

    iget-object v3, v0, Landroid/os/DynamicEffect;->mGlobalCurve:Ljava/util/ArrayList;

    .line 752
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    nop

    .line 751
    :goto_20
    return v1
.end method

.method public whitelist getDuration()J
    .registers 3

    .line 737
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public whitelist hasVibrator(I)Z
    .registers 3
    .param p1, "vibratorId"    # I

    .line 845
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 757
    iget-object v0, p0, Landroid/os/DynamicEffect;->mEffects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist resolve(I)Landroid/os/DynamicEffect;
    .registers 2
    .param p1, "defaultAmplitude"    # I

    .line 834
    iput p1, p0, Landroid/os/DynamicEffect;->globalIntensity:I

    .line 835
    return-object p0
.end method

.method public whitelist scale(F)Landroid/os/DynamicEffect;
    .registers 3
    .param p1, "scaleFactor"    # F

    .line 829
    iget v0, p0, Landroid/os/DynamicEffect;->globalIntensity:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Landroid/os/DynamicEffect;->globalIntensity:I

    .line 830
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 762
    const-string v0, "DynamicEffect"

    return-object v0
.end method

.method public whitelist validate()V
    .registers 1

    .line 742
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 822
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 823
    invoke-virtual {p0}, Landroid/os/DynamicEffect;->encapsulate()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 824
    iget v0, p0, Landroid/os/DynamicEffect;->mLoop:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 825
    iget v0, p0, Landroid/os/DynamicEffect;->mInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 826
    return-void
.end method
