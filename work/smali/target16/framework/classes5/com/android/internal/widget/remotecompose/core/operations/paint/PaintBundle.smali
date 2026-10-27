.class public Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;
.super Ljava/lang/Object;
.source "PaintBundle.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field public static final blacklist ALPHA:I = 0xc

.field public static final blacklist ANTI_ALIAS:I = 0xe

.field public static final blacklist BLEND_MODE:I = 0x12

.field public static final blacklist BLEND_MODE_CLEAR:I = 0x0

.field public static final blacklist BLEND_MODE_COLOR:I = 0x1b

.field public static final blacklist BLEND_MODE_COLOR_BURN:I = 0x13

.field public static final blacklist BLEND_MODE_COLOR_DODGE:I = 0x12

.field public static final blacklist BLEND_MODE_DARKEN:I = 0x10

.field public static final blacklist BLEND_MODE_DIFFERENCE:I = 0x16

.field public static final blacklist BLEND_MODE_DST:I = 0x2

.field public static final blacklist BLEND_MODE_DST_ATOP:I = 0xa

.field public static final blacklist BLEND_MODE_DST_IN:I = 0x6

.field public static final blacklist BLEND_MODE_DST_OUT:I = 0x8

.field public static final blacklist BLEND_MODE_DST_OVER:I = 0x4

.field public static final blacklist BLEND_MODE_EXCLUSION:I = 0x17

.field public static final blacklist BLEND_MODE_HARD_LIGHT:I = 0x14

.field public static final blacklist BLEND_MODE_HUE:I = 0x19

.field public static final blacklist BLEND_MODE_LIGHTEN:I = 0x11

.field public static final blacklist BLEND_MODE_LUMINOSITY:I = 0x1c

.field public static final blacklist BLEND_MODE_MODULATE:I = 0xd

.field public static final blacklist BLEND_MODE_MULTIPLY:I = 0x18

.field public static final blacklist BLEND_MODE_NULL:I = 0x1d

.field public static final blacklist BLEND_MODE_OVERLAY:I = 0xf

.field public static final blacklist BLEND_MODE_PLUS:I = 0xc

.field public static final blacklist BLEND_MODE_SATURATION:I = 0x1a

.field public static final blacklist BLEND_MODE_SCREEN:I = 0xe

.field public static final blacklist BLEND_MODE_SOFT_LIGHT:I = 0x15

.field public static final blacklist BLEND_MODE_SRC:I = 0x1

.field public static final blacklist BLEND_MODE_SRC_ATOP:I = 0x9

.field public static final blacklist BLEND_MODE_SRC_IN:I = 0x5

.field public static final blacklist BLEND_MODE_SRC_OUT:I = 0x7

.field public static final blacklist BLEND_MODE_SRC_OVER:I = 0x3

.field public static final blacklist BLEND_MODE_XOR:I = 0xb

.field public static final blacklist CLEAR_COLOR_FILTER:I = 0x15

.field public static final blacklist COLOR:I = 0x4

.field public static final blacklist COLOR_FILTER:I = 0xd

.field public static final blacklist COLOR_FILTER_ID:I = 0x14

.field public static final blacklist COLOR_ID:I = 0x13

.field public static final blacklist FILTER_BITMAP:I = 0x11

.field public static final blacklist FONT_AXIS:I = 0x17

.field public static final blacklist FONT_BOLD:I = 0x1

.field public static final blacklist FONT_BOLD_ITALIC:I = 0x3

.field public static final blacklist FONT_ITALIC:I = 0x2

.field public static final blacklist FONT_NORMAL:I = 0x0

.field public static final blacklist FONT_TYPE_DEFAULT:I = 0x0

.field public static final blacklist FONT_TYPE_MONOSPACE:I = 0x3

.field public static final blacklist FONT_TYPE_SANS_SERIF:I = 0x1

.field public static final blacklist FONT_TYPE_SERIF:I = 0x2

.field public static final blacklist GRADIENT:I = 0xb

.field public static final blacklist IMAGE_FILTER_QUALITY:I = 0xa

.field public static final blacklist LINEAR_GRADIENT:I = 0x0

.field public static final blacklist PORTER_MODE_ADD:I = 0x1e

.field public static final blacklist RADIAL_GRADIENT:I = 0x1

.field public static final blacklist SHADER:I = 0x9

.field public static final blacklist SHADER_MATRIX:I = 0x16

.field public static final blacklist STROKE_CAP:I = 0x7

.field public static final blacklist STROKE_JOIN:I = 0xf

.field public static final blacklist STROKE_MITER:I = 0x6

.field public static final blacklist STROKE_WIDTH:I = 0x5

.field public static final blacklist STYLE:I = 0x8

.field public static final blacklist STYLE_FILL:I = 0x0

.field public static final blacklist STYLE_FILL_AND_STROKE:I = 0x2

.field public static final blacklist STYLE_STROKE:I = 0x1

.field public static final blacklist SWEEP_GRADIENT:I = 0x2

.field public static final blacklist TEXTURE:I = 0x18

.field public static final blacklist TEXT_SIZE:I = 0x1

.field public static final blacklist TYPEFACE:I = 0x10


# instance fields
.field blacklist mArray:[I

.field private blacklist mColorFilterSet:Z

.field private blacklist mLastShaderSet:I

.field blacklist mOutArray:[I

.field blacklist mPos:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0xc8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 675
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mLastShaderSet:I

    .line 676
    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mColorFilterSet:Z

    return-void
.end method

.method private static blacklist asFloatStr(I)Ljava/lang/String;
    .registers 3

    .line 202
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    .line 203
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 206
    :cond_28
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist blendModeString(I)Ljava/lang/String;
    .registers 2

    .line 1104
    const-string v0, "null"

    packed-switch p0, :pswitch_data_62

    .line 1168
    return-object v0

    .line 1166
    :pswitch_6
    const-string p0, "ADD"

    return-object p0

    .line 1164
    :pswitch_9
    return-object v0

    .line 1162
    :pswitch_a
    const-string p0, "LUMINOSITY"

    return-object p0

    .line 1160
    :pswitch_d
    const-string p0, "COLOR"

    return-object p0

    .line 1158
    :pswitch_10
    const-string p0, "SATURATION"

    return-object p0

    .line 1156
    :pswitch_13
    const-string p0, "HUE"

    return-object p0

    .line 1154
    :pswitch_16
    const-string p0, "MULTIPLY"

    return-object p0

    .line 1152
    :pswitch_19
    const-string p0, "EXCLUSION"

    return-object p0

    .line 1150
    :pswitch_1c
    const-string p0, "DIFFERENCE"

    return-object p0

    .line 1148
    :pswitch_1f
    const-string p0, "SOFT_LIGHT"

    return-object p0

    .line 1146
    :pswitch_22
    const-string p0, "HARD_LIGHT"

    return-object p0

    .line 1144
    :pswitch_25
    const-string p0, "COLOR_BURN"

    return-object p0

    .line 1142
    :pswitch_28
    const-string p0, "COLOR_DODGE"

    return-object p0

    .line 1140
    :pswitch_2b
    const-string p0, "LIGHTEN"

    return-object p0

    .line 1138
    :pswitch_2e
    const-string p0, "DARKEN"

    return-object p0

    .line 1136
    :pswitch_31
    const-string p0, "OVERLAY"

    return-object p0

    .line 1134
    :pswitch_34
    const-string p0, "SCREEN"

    return-object p0

    .line 1132
    :pswitch_37
    const-string p0, "MODULATE"

    return-object p0

    .line 1130
    :pswitch_3a
    const-string p0, "PLUS"

    return-object p0

    .line 1128
    :pswitch_3d
    const-string p0, "XOR"

    return-object p0

    .line 1126
    :pswitch_40
    const-string p0, "DST_ATOP"

    return-object p0

    .line 1124
    :pswitch_43
    const-string p0, "SRC_ATOP"

    return-object p0

    .line 1122
    :pswitch_46
    const-string p0, "DST_OUT"

    return-object p0

    .line 1120
    :pswitch_49
    const-string p0, "SRC_OUT"

    return-object p0

    .line 1118
    :pswitch_4c
    const-string p0, "DST_IN"

    return-object p0

    .line 1116
    :pswitch_4f
    const-string p0, "SRC_IN"

    return-object p0

    .line 1114
    :pswitch_52
    const-string p0, "DST_OVER"

    return-object p0

    .line 1112
    :pswitch_55
    const-string p0, "SRC_OVER"

    return-object p0

    .line 1110
    :pswitch_58
    const-string p0, "DST"

    return-object p0

    .line 1108
    :pswitch_5b
    const-string p0, "SRC"

    return-object p0

    .line 1106
    :pswitch_5e
    const-string p0, "CLEAR"

    return-object p0

    nop

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_5e
        :pswitch_5b
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_a
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private static blacklist colorInt(I)Ljava/lang/String;
    .registers 3

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist colorInt([I)Ljava/lang/String;
    .registers 4

    .line 191
    nop

    .line 192
    const-string v0, "["

    const/4 v1, 0x0

    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_36

    .line 193
    if-lez v1, :cond_1c

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    :cond_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v2, p0, v1

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->colorInt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 198
    :cond_36
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist fixColor(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I
    .registers 3

    .line 1303
    invoke-virtual {p2, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getColor(I)I

    move-result p1

    .line 1304
    return p1
.end method

.method private blacklist fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I
    .registers 5

    .line 1294
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 1295
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1296
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result p1

    .line 1297
    invoke-virtual {p2, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    return p1

    .line 1299
    :cond_17
    return p1
.end method

.method private static blacklist getVariable(I)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1504
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    .line 1505
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const-string/jumbo v1, "type"

    if-eqz v0, :cond_22

    .line 1506
    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "Variable"

    const-string v2, "id"

    filled-new-array {v1, v0, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0

    .line 1508
    :cond_22
    const-string/jumbo v0, "value"

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string v2, "Value"

    filled-new-array {v1, v2, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0
.end method

.method private blacklist registerFloat(ILcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)V
    .registers 5

    .line 328
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    .line 329
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 330
    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result p1

    invoke-virtual {p2, p1, p3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 332
    :cond_11
    return-void
.end method

.method private static blacklist serializeGradient(I[IILjava/util/List;)I
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[II",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)I"
        }
    .end annotation

    .line 1514
    move-object/from16 v0, p3

    .line 1515
    shr-int/lit8 v1, p0, 0x10

    .line 1517
    add-int/lit8 v2, p2, 0x1

    aget v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    .line 1519
    nop

    .line 1520
    const/4 v4, 0x0

    const/4 v5, 0x0

    if-lez v3, :cond_24

    .line 1521
    new-array v6, v3, [Ljava/lang/String;

    .line 1522
    move v7, v4

    :goto_12
    if-ge v7, v3, :cond_22

    .line 1523
    add-int/lit8 v8, v2, 0x1

    aget v2, p1, v2

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->colorInt(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    .line 1522
    add-int/lit8 v7, v7, 0x1

    move v2, v8

    goto :goto_12

    :cond_22
    move-object v9, v6

    goto :goto_25

    .line 1520
    :cond_24
    move-object v9, v5

    .line 1526
    :goto_25
    add-int/lit8 v3, v2, 0x1

    aget v2, p1, v2

    .line 1527
    nop

    .line 1528
    if-lez v2, :cond_40

    .line 1529
    new-array v5, v2, [F

    .line 1530
    nop

    :goto_2f
    array-length v2, v9

    if-ge v4, v2, :cond_40

    .line 1531
    add-int/lit8 v2, v3, 0x1

    aget v3, p1, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    aput v3, v5, v4

    .line 1530
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    goto :goto_2f

    .line 1535
    :cond_40
    if-nez v9, :cond_43

    .line 1536
    return v3

    .line 1543
    :cond_43
    packed-switch v1, :pswitch_data_11a

    goto/16 :goto_119

    .line 1592
    :pswitch_48
    add-int/lit8 v1, v3, 0x1

    aget v2, p1, v3

    .line 1593
    add-int/lit8 v3, v1, 0x1

    aget v1, p1, v1

    .line 1594
    nop

    .line 1601
    if-nez v5, :cond_57

    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v5

    :cond_57
    move-object v11, v5

    .line 1603
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->getVariable(I)Ljava/util/Map;

    move-result-object v13

    .line 1605
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->getVariable(I)Ljava/util/Map;

    move-result-object v15

    const-string/jumbo v6, "type"

    const-string v7, "SweepGradient"

    const-string v8, "colors"

    const-string/jumbo v10, "stops"

    const-string v12, "centerX"

    const-string v14, "centerY"

    filled-new-array/range {v6 .. v15}, [Ljava/lang/Object;

    move-result-object v1

    .line 1595
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 1594
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_119

    .line 1570
    :pswitch_7b
    add-int/lit8 v1, v3, 0x1

    aget v2, p1, v3

    .line 1571
    add-int/lit8 v3, v1, 0x1

    aget v1, p1, v1

    .line 1572
    add-int/lit8 v4, v3, 0x1

    aget v3, p1, v3

    .line 1573
    add-int/lit8 v20, v4, 0x1

    aget v4, p1, v4

    .line 1574
    nop

    .line 1581
    if-nez v5, :cond_92

    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v5

    :cond_92
    move-object v11, v5

    .line 1583
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->getVariable(I)Ljava/util/Map;

    move-result-object v13

    .line 1585
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->getVariable(I)Ljava/util/Map;

    move-result-object v15

    .line 1587
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->getVariable(I)Ljava/util/Map;

    move-result-object v17

    .line 1589
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const-string/jumbo v6, "type"

    const-string v7, "RadialGradient"

    const-string v8, "colors"

    const-string/jumbo v10, "stops"

    const-string v12, "centerX"

    const-string v14, "centerY"

    const-string/jumbo v16, "radius"

    const-string/jumbo v18, "tileMode"

    filled-new-array/range {v6 .. v19}, [Ljava/lang/Object;

    move-result-object v1

    .line 1575
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 1574
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1590
    move/from16 v3, v20

    goto :goto_119

    .line 1545
    :pswitch_c5
    add-int/lit8 v1, v3, 0x1

    aget v2, p1, v3

    .line 1546
    add-int/lit8 v3, v1, 0x1

    aget v1, p1, v1

    .line 1547
    add-int/lit8 v4, v3, 0x1

    aget v3, p1, v3

    .line 1548
    add-int/lit8 v6, v4, 0x1

    aget v4, p1, v4

    .line 1549
    add-int/lit8 v22, v6, 0x1

    aget v6, p1, v6

    .line 1550
    nop

    .line 1557
    if-nez v5, :cond_e0

    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v5

    :cond_e0
    move-object v11, v5

    .line 1559
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->getVariable(I)Ljava/util/Map;

    move-result-object v13

    .line 1561
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->getVariable(I)Ljava/util/Map;

    move-result-object v15

    .line 1563
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->getVariable(I)Ljava/util/Map;

    move-result-object v17

    .line 1565
    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->getVariable(I)Ljava/util/Map;

    move-result-object v19

    .line 1567
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const-string/jumbo v6, "type"

    const-string v7, "LinearGradient"

    const-string v8, "colors"

    const-string/jumbo v10, "stops"

    const-string/jumbo v12, "startX"

    const-string/jumbo v14, "startY"

    const-string v16, "endX"

    const-string v18, "endY"

    const-string/jumbo v20, "tileMode"

    filled-new-array/range {v6 .. v21}, [Ljava/lang/Object;

    move-result-object v1

    .line 1551
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 1550
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1568
    move/from16 v3, v22

    .line 1608
    :goto_119
    return v3

    :pswitch_data_11a
    .packed-switch 0x0
        :pswitch_c5
        :pswitch_7b
        :pswitch_48
    .end packed-switch
.end method


# virtual methods
.method public blacklist applyPaintChange(Lcom/android/internal/widget/remotecompose/core/PaintContext;Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;)V
    .registers 13

    .line 49
    nop

    .line 50
    nop

    .line 51
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    if-nez v0, :cond_a

    .line 52
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    .line 54
    :cond_a
    const/4 v0, 0x0

    move v1, v0

    :goto_c
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    if-ge v1, v2, :cond_161

    .line 55
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    add-int/lit8 v3, v1, 0x1

    aget v1, v2, v1

    .line 56
    nop

    .line 57
    const v2, 0xffff

    and-int/2addr v2, v1

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_162

    .line 143
    :pswitch_1f
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error unknown Paint Type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_15e

    .line 133
    :pswitch_39
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v2, v3, 0x1

    aget v5, v1, v3

    .line 134
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v3, v2, 0x1

    aget v1, v1, v2

    .line 135
    and-int/lit8 v2, v1, 0xf

    int-to-short v6, v2

    .line 136
    shr-int/lit8 v1, v1, 0x10

    int-to-short v7, v1

    .line 137
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v2, v3, 0x1

    aget v1, v1, v3

    .line 138
    and-int/lit8 v3, v1, 0xf

    int-to-short v8, v3

    .line 139
    shr-int/lit8 v1, v1, 0x10

    int-to-short v9, v1

    .line 140
    move-object v4, p2

    invoke-interface/range {v4 .. v9}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setTextureShader(ISSSS)V

    .line 141
    move v1, v2

    goto/16 :goto_15f

    .line 123
    :pswitch_5e
    shr-int/lit8 v1, v1, 0x10

    .line 124
    new-array v2, v1, [Ljava/lang/String;

    .line 125
    new-array v4, v1, [F

    .line 126
    move v5, v0

    :goto_65
    if-ge v5, v1, :cond_83

    .line 127
    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    add-int/lit8 v7, v3, 0x1

    aget v3, v6, v3

    invoke-virtual {p1, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getText(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 128
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    add-int/lit8 v6, v7, 0x1

    aget v3, v3, v7

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    aput v3, v4, v5

    .line 126
    add-int/lit8 v5, v5, 0x1

    move v3, v6

    goto :goto_65

    .line 130
    :cond_83
    invoke-interface {p2, v2, v4}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setFontVariationAxes([Ljava/lang/String;[F)V

    .line 131
    move v1, v3

    goto/16 :goto_15f

    .line 120
    :pswitch_89
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    add-int/lit8 v2, v3, 0x1

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-interface {p2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setShaderMatrix(F)V

    .line 121
    move v1, v2

    goto/16 :goto_15f

    .line 117
    :pswitch_99
    const-wide/16 v1, 0x2000

    invoke-interface {p2, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->clear(J)V

    .line 118
    goto/16 :goto_15e

    .line 101
    :pswitch_a0
    shr-int/lit8 v1, v1, 0x10

    invoke-interface {p2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setBlendMode(I)V

    .line 102
    goto/16 :goto_15e

    .line 104
    :pswitch_a7
    shr-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_ac

    goto :goto_ad

    :cond_ac
    move v4, v0

    :goto_ad
    invoke-interface {p2, v4}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setFilterBitmap(Z)V

    .line 105
    goto/16 :goto_15e

    .line 62
    :pswitch_b2
    shr-int/lit8 v1, v1, 0x10

    .line 63
    and-int/lit16 v2, v1, 0x3ff

    .line 64
    shr-int/lit8 v5, v1, 0xa

    if-lez v5, :cond_bc

    move v5, v4

    goto :goto_bd

    :cond_bc
    move v5, v0

    .line 65
    :goto_bd
    and-int/lit16 v1, v1, 0x400

    if-lez v1, :cond_c2

    goto :goto_c3

    :cond_c2
    move v4, v0

    .line 66
    :goto_c3
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    add-int/lit8 v6, v3, 0x1

    aget v1, v1, v3

    .line 67
    const/16 v3, 0xa

    if-le v1, v3, :cond_d7

    if-nez v4, :cond_d7

    .line 68
    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-interface {p2, v1, v2, v5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setTypeFace(Ljava/lang/String;IZ)V

    .line 70
    goto :goto_db

    .line 72
    :cond_d7
    invoke-interface {p2, v1, v2, v5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setTypeFace(IIZ)V

    .line 74
    nop

    .line 146
    :goto_db
    move v1, v6

    goto/16 :goto_15f

    .line 95
    :pswitch_de
    shr-int/lit8 v1, v1, 0x10

    invoke-interface {p2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setStrokeJoin(I)V

    .line 96
    goto/16 :goto_15e

    .line 111
    :pswitch_e5
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    add-int/lit8 v4, v3, 0x1

    aget v2, v2, v3

    shr-int/lit8 v1, v1, 0x10

    invoke-interface {p2, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setColorFilter(II)V

    .line 112
    move v1, v4

    goto/16 :goto_15f

    .line 114
    :pswitch_f3
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    add-int/lit8 v2, v3, 0x1

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-interface {p2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setAlpha(F)V

    .line 115
    move v1, v2

    goto :goto_15f

    .line 107
    :pswitch_102
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    invoke-virtual {p0, v1, v2, v3, p2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->callSetGradient(I[IILcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;)I

    move-result v1

    .line 108
    goto :goto_15f

    .line 98
    :pswitch_109
    shr-int/lit8 v1, v1, 0x10

    invoke-interface {p2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setImageFilterQuality(I)V

    .line 99
    goto :goto_15e

    .line 92
    :pswitch_10f
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    add-int/lit8 v2, v3, 0x1

    aget v1, v1, v3

    invoke-interface {p2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setShader(I)V

    .line 93
    move v1, v2

    goto :goto_15f

    .line 89
    :pswitch_11a
    shr-int/lit8 v1, v1, 0x10

    invoke-interface {p2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setStyle(I)V

    .line 90
    goto :goto_15e

    .line 86
    :pswitch_120
    shr-int/lit8 v1, v1, 0x10

    invoke-interface {p2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setStrokeCap(I)V

    .line 87
    goto :goto_15e

    .line 83
    :pswitch_126
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    add-int/lit8 v2, v3, 0x1

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-interface {p2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setStrokeMiter(F)V

    .line 84
    move v1, v2

    goto :goto_15f

    .line 80
    :pswitch_135
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    add-int/lit8 v2, v3, 0x1

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-interface {p2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setStrokeWidth(F)V

    .line 81
    move v1, v2

    goto :goto_15f

    .line 77
    :pswitch_144
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    add-int/lit8 v2, v3, 0x1

    aget v1, v1, v3

    invoke-interface {p2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setColor(I)V

    .line 78
    move v1, v2

    goto :goto_15f

    .line 59
    :pswitch_14f
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    add-int/lit8 v2, v3, 0x1

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-interface {p2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setTextSize(F)V

    .line 60
    move v1, v2

    goto :goto_15f

    .line 146
    :goto_15e
    move v1, v3

    :goto_15f
    goto/16 :goto_c

    .line 147
    :cond_161
    return-void

    :pswitch_data_162
    .packed-switch 0x1
        :pswitch_14f
        :pswitch_1f
        :pswitch_1f
        :pswitch_144
        :pswitch_135
        :pswitch_126
        :pswitch_120
        :pswitch_11a
        :pswitch_10f
        :pswitch_109
        :pswitch_102
        :pswitch_f3
        :pswitch_e5
        :pswitch_1f
        :pswitch_de
        :pswitch_b2
        :pswitch_a7
        :pswitch_a0
        :pswitch_144
        :pswitch_e5
        :pswitch_99
        :pswitch_89
        :pswitch_5e
        :pswitch_39
    .end packed-switch
.end method

.method blacklist callPrintGradient(I[IILjava/lang/StringBuilder;)I
    .registers 22

    .line 430
    move-object/from16 v0, p4

    .line 431
    shr-int/lit8 v1, p1, 0x10

    .line 432
    nop

    .line 433
    add-int/lit8 v2, p3, 0x1

    aget v3, p2, p3

    .line 434
    nop

    .line 435
    nop

    .line 436
    const-string v4, "      center = "

    const-string v5, "\n    "

    const-string v6, "      tileMode = "

    const-string v7, "],\n"

    const-string v8, "      stops = "

    const-string v9, "      colors = "

    const-string v10, ", "

    const-string v11, "["

    const/4 v12, 0x0

    const-string v13, ",\n"

    const/4 v14, 0x0

    packed-switch v1, :pswitch_data_2cc

    .line 512
    const-string v1, "GRADIENT_??????!!!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2ca

    .line 491
    :pswitch_29
    const-string v1, "    SweepGradient(\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    if-lez v3, :cond_3f

    .line 493
    new-array v1, v3, [I

    .line 494
    move v5, v12

    :goto_33
    if-ge v5, v3, :cond_40

    .line 495
    add-int/lit8 v6, v2, 0x1

    aget v2, p2, v2

    aput v2, v1, v5

    .line 494
    add-int/lit8 v5, v5, 0x1

    move v2, v6

    goto :goto_33

    .line 492
    :cond_3f
    move-object v1, v14

    .line 498
    :cond_40
    add-int/lit8 v3, v2, 0x1

    aget v2, p2, v2

    .line 499
    if-lez v2, :cond_59

    .line 500
    new-array v14, v2, [Ljava/lang/String;

    .line 501
    nop

    :goto_49
    if-ge v12, v2, :cond_59

    .line 502
    add-int/lit8 v5, v3, 0x1

    aget v3, p2, v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v12

    .line 501
    add-int/lit8 v12, v12, 0x1

    move v3, v5

    goto :goto_49

    .line 505
    :cond_59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->colorInt([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v14}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v3, 0x1

    aget v3, p2, v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v3, v2, 0x1

    aget v2, p2, v2

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "],\n    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    move v2, v3

    goto/16 :goto_2ca

    .line 465
    :pswitch_d5
    const-string v1, "    RadialGradient(\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    if-lez v3, :cond_ec

    .line 467
    new-array v1, v3, [I

    .line 468
    move v15, v12

    :goto_df
    if-ge v15, v3, :cond_ed

    .line 469
    add-int/lit8 v16, v2, 0x1

    aget v2, p2, v2

    aput v2, v1, v15

    .line 468
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, v16

    goto :goto_df

    .line 466
    :cond_ec
    move-object v1, v14

    .line 472
    :cond_ed
    add-int/lit8 v3, v2, 0x1

    aget v2, p2, v2

    .line 473
    if-lez v2, :cond_106

    .line 474
    new-array v14, v2, [Ljava/lang/String;

    .line 475
    nop

    :goto_f6
    if-ge v12, v2, :cond_106

    .line 476
    add-int/lit8 v15, v3, 0x1

    aget v3, p2, v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v12

    .line 475
    add-int/lit8 v12, v12, 0x1

    move v3, v15

    goto :goto_f6

    .line 480
    :cond_106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->colorInt([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v14}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v3, 0x1

    aget v3, p2, v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v3, v2, 0x1

    aget v2, p2, v2

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    const-string v1, "      radius ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v3, 0x1

    aget v3, p2, v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    add-int/lit8 v1, v2, 0x1

    aget v2, p2, v2

    .line 488
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    move v2, v1

    goto/16 :goto_2ca

    .line 438
    :pswitch_1c3
    const-string v1, "    LinearGradient(\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    if-lez v3, :cond_1d9

    .line 440
    new-array v1, v3, [I

    .line 441
    move v4, v12

    :goto_1cd
    if-ge v4, v3, :cond_1da

    .line 442
    add-int/lit8 v15, v2, 0x1

    aget v2, p2, v2

    aput v2, v1, v4

    .line 441
    add-int/lit8 v4, v4, 0x1

    move v2, v15

    goto :goto_1cd

    .line 439
    :cond_1d9
    move-object v1, v14

    .line 445
    :cond_1da
    add-int/lit8 v3, v2, 0x1

    aget v2, p2, v2

    .line 446
    if-lez v2, :cond_1f3

    .line 447
    new-array v14, v2, [Ljava/lang/String;

    .line 448
    nop

    :goto_1e3
    if-ge v12, v2, :cond_1f3

    .line 449
    add-int/lit8 v4, v3, 0x1

    aget v3, p2, v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v12

    .line 448
    add-int/lit8 v12, v12, 0x1

    move v3, v4

    goto :goto_1e3

    .line 453
    :cond_1f3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->colorInt([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v14}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    const-string v1, "      start = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v3, 0x1

    aget v3, p2, v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v3, v2, 0x1

    aget v2, p2, v2

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    const-string v1, "      end = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v3, 0x1

    aget v3, p2, v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v3, v2, 0x1

    aget v2, p2, v2

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    add-int/lit8 v2, v3, 0x1

    aget v1, p2, v3

    .line 462
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    nop

    .line 515
    :goto_2ca
    return v2

    nop

    :pswitch_data_2cc
    .packed-switch 0x0
        :pswitch_1c3
        :pswitch_d5
        :pswitch_29
    .end packed-switch
.end method

.method blacklist callRegisterGradient(I[IILcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)I
    .registers 12

    .line 340
    nop

    .line 341
    shr-int/lit8 p1, p1, 0x10

    .line 342
    add-int/lit8 v0, p3, 0x1

    aget p3, p2, p3

    .line 343
    and-int/lit16 v1, p3, 0xff

    .line 344
    const v2, 0xffff

    shr-int/lit8 p3, p3, 0x10

    and-int/2addr p3, v2

    .line 345
    nop

    .line 346
    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_f2

    .line 423
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "error "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_f1

    .line 404
    :pswitch_2f
    if-lez v1, :cond_44

    .line 406
    move p1, v3

    :goto_32
    if-ge p1, v1, :cond_44

    .line 407
    add-int/lit8 v4, v0, 0x1

    aget v0, p2, v0

    .line 408
    shl-int v5, v2, p1

    and-int/2addr v5, p3

    if-eqz v5, :cond_40

    .line 409
    invoke-virtual {p4, v0, p5}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 406
    :cond_40
    add-int/lit8 p1, p1, 0x1

    move v0, v4

    goto :goto_32

    .line 413
    :cond_44
    add-int/lit8 p1, v0, 0x1

    aget p3, p2, v0

    .line 414
    nop

    :goto_49
    if-ge v3, p3, :cond_56

    .line 415
    add-int/lit8 v0, p1, 0x1

    aget p1, p2, p1

    invoke-direct {p0, p1, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->registerFloat(ILcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 414
    add-int/lit8 v3, v3, 0x1

    move p1, v0

    goto :goto_49

    .line 418
    :cond_56
    add-int/lit8 p3, p1, 0x1

    aget p1, p2, p1

    invoke-direct {p0, p1, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->registerFloat(ILcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 420
    add-int/lit8 v0, p3, 0x1

    aget p1, p2, p3

    invoke-direct {p0, p1, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->registerFloat(ILcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 421
    goto/16 :goto_f1

    .line 379
    :pswitch_66
    if-lez v1, :cond_7b

    .line 381
    move p1, v3

    :goto_69
    if-ge p1, v1, :cond_7b

    .line 382
    add-int/lit8 v4, v0, 0x1

    aget v0, p2, v0

    .line 383
    shl-int v5, v2, p1

    and-int/2addr v5, p3

    if-eqz v5, :cond_77

    .line 384
    invoke-virtual {p4, v0, p5}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 381
    :cond_77
    add-int/lit8 p1, p1, 0x1

    move v0, v4

    goto :goto_69

    .line 388
    :cond_7b
    add-int/lit8 p1, v0, 0x1

    aget p3, p2, v0

    .line 389
    nop

    :goto_80
    if-ge v3, p3, :cond_8d

    .line 390
    add-int/lit8 v0, p1, 0x1

    aget p1, p2, p1

    invoke-direct {p0, p1, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->registerFloat(ILcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 389
    add-int/lit8 v3, v3, 0x1

    move p1, v0

    goto :goto_80

    .line 394
    :cond_8d
    add-int/lit8 p3, p1, 0x1

    aget p1, p2, p1

    invoke-direct {p0, p1, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->registerFloat(ILcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 396
    add-int/lit8 p1, p3, 0x1

    aget p3, p2, p3

    invoke-direct {p0, p3, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->registerFloat(ILcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 398
    add-int/lit8 p3, p1, 0x1

    aget p1, p2, p1

    invoke-direct {p0, p1, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->registerFloat(ILcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 400
    add-int/lit8 v0, p3, 0x1

    aget p1, p2, p3

    .line 401
    goto :goto_f1

    .line 349
    :pswitch_a7
    if-lez v1, :cond_bc

    .line 351
    move p1, v3

    :goto_aa
    if-ge p1, v1, :cond_bc

    .line 352
    add-int/lit8 v4, v0, 0x1

    aget v0, p2, v0

    .line 353
    shl-int v5, v2, p1

    and-int/2addr v5, p3

    if-eqz v5, :cond_b8

    .line 354
    invoke-virtual {p4, v0, p5}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 351
    :cond_b8
    add-int/lit8 p1, p1, 0x1

    move v0, v4

    goto :goto_aa

    .line 358
    :cond_bc
    add-int/lit8 p1, v0, 0x1

    aget p3, p2, v0

    .line 360
    if-lez p3, :cond_d0

    .line 362
    nop

    :goto_c3
    if-ge v3, p3, :cond_d0

    .line 363
    add-int/lit8 v0, p1, 0x1

    aget p1, p2, p1

    invoke-direct {p0, p1, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->registerFloat(ILcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 362
    add-int/lit8 v3, v3, 0x1

    move p1, v0

    goto :goto_c3

    .line 368
    :cond_d0
    add-int/lit8 p3, p1, 0x1

    aget p1, p2, p1

    invoke-direct {p0, p1, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->registerFloat(ILcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 370
    add-int/lit8 p1, p3, 0x1

    aget p3, p2, p3

    invoke-direct {p0, p3, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->registerFloat(ILcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 372
    add-int/lit8 p3, p1, 0x1

    aget p1, p2, p1

    invoke-direct {p0, p1, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->registerFloat(ILcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 374
    add-int/lit8 p1, p3, 0x1

    aget p3, p2, p3

    invoke-direct {p0, p3, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->registerFloat(ILcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 375
    add-int/lit8 v0, p1, 0x1

    aget p1, p2, p1

    .line 376
    nop

    .line 426
    :goto_f1
    return v0

    :pswitch_data_f2
    .packed-switch 0x0
        :pswitch_a7
        :pswitch_66
        :pswitch_2f
    .end packed-switch
.end method

.method blacklist callSetGradient(I[IILcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;)I
    .registers 16

    .line 519
    nop

    .line 520
    shr-int/lit8 p1, p1, 0x10

    .line 522
    add-int/lit8 v0, p3, 0x1

    aget p3, p2, p3

    and-int/lit16 p3, p3, 0xff

    .line 524
    nop

    .line 525
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-lez p3, :cond_1f

    .line 526
    new-array v3, p3, [I

    .line 527
    move v4, v1

    :goto_11
    if-ge v4, p3, :cond_1d

    .line 528
    add-int/lit8 v5, v0, 0x1

    aget v0, p2, v0

    aput v0, v3, v4

    .line 527
    add-int/lit8 v4, v4, 0x1

    move v0, v5

    goto :goto_11

    :cond_1d
    move-object v4, v3

    goto :goto_20

    .line 525
    :cond_1f
    move-object v4, v2

    .line 531
    :goto_20
    add-int/lit8 p3, v0, 0x1

    aget v0, p2, v0

    .line 532
    nop

    .line 533
    if-lez v0, :cond_3f

    if-eqz v4, :cond_3f

    .line 534
    new-array v2, v0, [F

    .line 535
    nop

    :goto_2c
    array-length v0, v4

    if-ge v1, v0, :cond_3d

    .line 536
    add-int/lit8 v0, p3, 0x1

    aget p3, p2, p3

    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p3

    aput p3, v2, v1

    .line 535
    add-int/lit8 v1, v1, 0x1

    move p3, v0

    goto :goto_2c

    :cond_3d
    move-object v5, v2

    goto :goto_40

    .line 540
    :cond_3f
    move-object v5, v2

    :goto_40
    if-nez v4, :cond_43

    .line 541
    return p3

    .line 544
    :cond_43
    nop

    .line 545
    nop

    .line 546
    nop

    .line 548
    packed-switch p1, :pswitch_data_aa

    goto :goto_a9

    .line 565
    :pswitch_4a
    add-int/lit8 p1, p3, 0x1

    aget p3, p2, p3

    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p3

    .line 566
    add-int/lit8 v0, p1, 0x1

    aget p1, p2, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    .line 567
    invoke-interface {p4, v4, v5, p3, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setSweepGradient([I[FFF)V

    move p3, v0

    goto :goto_a9

    .line 558
    :pswitch_5f
    add-int/lit8 p1, p3, 0x1

    aget p3, p2, p3

    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    .line 559
    add-int/lit8 p3, p1, 0x1

    aget p1, p2, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    .line 560
    add-int/lit8 p1, p3, 0x1

    aget p3, p2, p3

    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    .line 561
    add-int/lit8 p3, p1, 0x1

    aget v9, p2, p1

    .line 562
    move-object v3, p4

    invoke-interface/range {v3 .. v9}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setRadialGradient([I[FFFFI)V

    .line 563
    goto :goto_a9

    .line 550
    :pswitch_80
    move-object v3, p4

    add-int/lit8 p1, p3, 0x1

    aget p3, p2, p3

    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    .line 551
    add-int/lit8 p3, p1, 0x1

    aget p1, p2, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    .line 552
    add-int/lit8 p1, p3, 0x1

    aget p3, p2, p3

    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    .line 553
    add-int/lit8 p3, p1, 0x1

    aget p1, p2, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    .line 554
    add-int/lit8 p1, p3, 0x1

    aget v10, p2, p3

    .line 555
    invoke-interface/range {v3 .. v10}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setLinearGradient([I[FFFFFI)V

    .line 556
    move p3, p1

    .line 570
    :goto_a9
    return p3

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_80
        :pswitch_5f
        :pswitch_4a
    .end packed-switch
.end method

.method public blacklist clear(J)V
    .registers 3

    .line 1084
    return-void
.end method

.method public blacklist clearColorFilter()V
    .registers 4

    .line 821
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const/16 v2, 0x15

    aput v2, v0, v1

    .line 822
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 823
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mColorFilterSet:Z

    .line 824
    return-void
.end method

.method public blacklist readBundle(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 6

    .line 591
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 592
    if-lez v0, :cond_22

    const/16 v1, 0x400

    if-gt v0, v1, :cond_22

    .line 595
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    .line 596
    const/4 v1, 0x0

    :goto_f
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1f

    .line 597
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v3

    aput v3, v2, v1

    .line 596
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 599
    :cond_1f
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 600
    return-void

    .line 593
    :cond_22
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buffer corrupt paint len = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist registerVars(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)V
    .registers 12

    .line 1178
    const/4 v0, 0x0

    move v1, v0

    .line 1179
    :goto_2
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    if-ge v1, v2, :cond_8c

    .line 1180
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v6, v1, 0x1

    aget v4, v2, v1

    .line 1181
    const v1, 0xffff

    and-int/2addr v1, v4

    .line 1182
    packed-switch v1, :pswitch_data_8e

    :pswitch_13
    move-object v3, p0

    move-object v7, p1

    move-object v8, p2

    goto/16 :goto_87

    .line 1224
    :pswitch_18
    add-int/lit8 v6, v6, 0x3

    .line 1225
    move-object v3, p0

    move-object v7, p1

    move-object v8, p2

    move v1, v6

    goto/16 :goto_88

    .line 1212
    :pswitch_20
    shr-int/lit8 v1, v4, 0x10

    .line 1215
    move v2, v0

    :goto_23
    if-ge v2, v1, :cond_42

    .line 1216
    add-int/lit8 v6, v6, 0x1

    .line 1217
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v4, v6, 0x1

    aget v3, v3, v6

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    .line 1218
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 1219
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v3

    invoke-virtual {p1, v3, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 1215
    :cond_3e
    add-int/lit8 v2, v2, 0x1

    move v6, v4

    goto :goto_23

    .line 1222
    :cond_42
    move-object v3, p0

    move-object v7, p1

    move-object v8, p2

    move v1, v6

    goto :goto_88

    .line 1194
    :pswitch_47
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v2, v6, 0x1

    aget v1, v1, v6

    invoke-virtual {p1, v1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 1195
    move-object v3, p0

    move-object v7, p1

    move-object v8, p2

    move v1, v2

    goto :goto_88

    .line 1227
    :pswitch_55
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    move-object v3, p0

    move-object v7, p1

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->callRegisterGradient(I[IILcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)I

    move-result p1

    move v1, p1

    goto :goto_88

    .line 1210
    :pswitch_60
    move-object v3, p0

    move-object v7, p1

    move-object v8, p2

    goto :goto_87

    .line 1201
    :pswitch_64
    move-object v3, p0

    move-object v7, p1

    move-object v8, p2

    add-int/lit8 v6, v6, 0x1

    .line 1202
    move v1, v6

    goto :goto_88

    .line 1187
    :pswitch_6b
    move-object v3, p0

    move-object v7, p1

    move-object v8, p2

    iget-object p1, v3, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 p2, v6, 0x1

    aget p1, p1, v6

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    .line 1188
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 1189
    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result p1

    invoke-virtual {v7, p1, v8}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 1229
    :cond_85
    move v1, p2

    goto :goto_88

    :goto_87
    move v1, v6

    :goto_88
    move-object p1, v7

    move-object p2, v8

    goto/16 :goto_2

    .line 1230
    :cond_8c
    return-void

    nop

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_13
        :pswitch_13
        :pswitch_64
        :pswitch_6b
        :pswitch_6b
        :pswitch_60
        :pswitch_60
        :pswitch_64
        :pswitch_60
        :pswitch_55
        :pswitch_6b
        :pswitch_64
        :pswitch_60
        :pswitch_60
        :pswitch_64
        :pswitch_60
        :pswitch_60
        :pswitch_47
        :pswitch_47
        :pswitch_13
        :pswitch_13
        :pswitch_20
        :pswitch_18
    .end packed-switch
.end method

.method public blacklist reset()V
    .registers 4

    .line 1088
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 1089
    iget-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mColorFilterSet:Z

    if-eqz v1, :cond_a

    .line 1090
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->clearColorFilter()V

    .line 1092
    :cond_a
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mLastShaderSet:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_16

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mLastShaderSet:I

    if-eqz v1, :cond_16

    .line 1093
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setShader(I)V

    .line 1095
    :cond_16
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 14

    .line 1414
    const-string v0, "PaintBundle"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 1415
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1416
    const/4 v1, 0x0

    move v2, v1

    .line 1417
    :goto_c
    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    if-ge v2, v3, :cond_242

    .line 1418
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v4, v2, 0x1

    aget v2, v3, v2

    .line 1419
    const v3, 0xffff

    and-int/2addr v3, v2

    .line 1420
    const-string v5, "enabled"

    const-string v6, "id"

    const/4 v7, 0x1

    const-string/jumbo v8, "type"

    packed-switch v3, :pswitch_data_24a

    :pswitch_25
    goto/16 :goto_23f

    .line 1472
    :pswitch_27
    const-string v2, "ClearColorFilter"

    filled-new-array {v8, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1473
    goto/16 :goto_23f

    .line 1462
    :pswitch_36
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v5, v4, 0x1

    aget v3, v3, v4

    .line 1467
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    shr-int/lit8 v2, v2, 0x10

    .line 1469
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->blendModeString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v6, "type"

    const-string v7, "ColorFilterID"

    const-string v8, "id"

    const-string v10, "mode"

    filled-new-array/range {v6 .. v11}, [Ljava/lang/Object;

    move-result-object v2

    .line 1463
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 1462
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1470
    move v2, v5

    goto/16 :goto_240

    .line 1437
    :pswitch_5d
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v3, v4, 0x1

    aget v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "ColorId"

    filled-new-array {v8, v4, v6, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1438
    move v2, v3

    goto/16 :goto_240

    .line 1484
    :pswitch_77
    shr-int/lit8 v2, v2, 0x10

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->blendModeString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "BlendMode"

    const-string v5, "mode"

    filled-new-array {v8, v3, v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1485
    goto/16 :goto_23f

    .line 1487
    :pswitch_8e
    shr-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_93

    goto :goto_94

    :cond_93
    move v7, v1

    :goto_94
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "FilterBitmap"

    filled-new-array {v8, v3, v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1488
    goto/16 :goto_23f

    .line 1425
    :pswitch_a7
    shr-int/lit8 v2, v2, 0x10

    .line 1426
    and-int/lit16 v3, v2, 0x3ff

    int-to-float v3, v3

    .line 1427
    shr-int/lit8 v2, v2, 0xa

    if-lez v2, :cond_b1

    goto :goto_b2

    :cond_b1
    move v7, v1

    .line 1428
    :goto_b2
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v5, v4, 0x1

    aget v2, v2, v4

    .line 1429
    const-string v4, "fontFamily"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "FontFamily"

    filled-new-array {v8, v6, v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1430
    const-string/jumbo v2, "weight"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "FontWeight"

    filled-new-array {v8, v4, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1431
    const-string v2, "italic"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "TypeFace"

    filled-new-array {v8, v4, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1432
    move v2, v5

    goto/16 :goto_240

    .line 1490
    :pswitch_f5
    shr-int/lit8 v2, v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "StrokeJoin"

    const-string/jumbo v5, "strokeJoin"

    filled-new-array {v8, v3, v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1491
    goto/16 :goto_23f

    .line 1493
    :pswitch_10d
    shr-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_112

    goto :goto_113

    :cond_112
    move v7, v1

    :goto_113
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "AntiAlias"

    filled-new-array {v8, v3, v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1494
    goto/16 :goto_23f

    .line 1452
    :pswitch_126
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v5, v4, 0x1

    aget v3, v3, v4

    .line 1457
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->colorInt(I)Ljava/lang/String;

    move-result-object v9

    shr-int/lit8 v2, v2, 0x10

    .line 1459
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->blendModeString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v6, "type"

    const-string v7, "ColorFilter"

    const-string v8, "color"

    const-string v10, "mode"

    filled-new-array/range {v6 .. v11}, [Ljava/lang/Object;

    move-result-object v2

    .line 1453
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 1452
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1460
    move v2, v5

    goto/16 :goto_240

    .line 1478
    :pswitch_14d
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v3, v4, 0x1

    aget v2, v2, v4

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->getVariable(I)Ljava/util/Map;

    move-result-object v2

    const-string v4, "Alpha"

    const-string v5, "alpha"

    filled-new-array {v8, v4, v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1479
    move v2, v3

    goto/16 :goto_240

    .line 1496
    :pswitch_169
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    invoke-static {v2, v3, v4, v0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->serializeGradient(I[IILjava/util/List;)I

    move-result v2

    goto/16 :goto_240

    .line 1481
    :pswitch_171
    shr-int/lit8 v2, v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ImageFilterQuality"

    const-string/jumbo v5, "quality"

    filled-new-array {v8, v3, v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1482
    goto/16 :goto_23f

    .line 1475
    :pswitch_189
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v3, v4, 0x1

    aget v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "Shader"

    filled-new-array {v8, v4, v6, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1476
    move v2, v3

    goto/16 :goto_240

    .line 1449
    :pswitch_1a3
    shr-int/lit8 v2, v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Style"

    const-string/jumbo v5, "style"

    filled-new-array {v8, v3, v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1450
    goto/16 :goto_23f

    .line 1446
    :pswitch_1bb
    shr-int/lit8 v2, v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "StrokeCap"

    const-string v5, "cap"

    filled-new-array {v8, v3, v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1447
    goto :goto_23f

    .line 1443
    :pswitch_1d1
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v3, v4, 0x1

    aget v2, v2, v4

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->getVariable(I)Ljava/util/Map;

    move-result-object v2

    const-string v4, "StrokeMiter"

    const-string v5, "miter"

    filled-new-array {v8, v4, v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1444
    move v2, v3

    goto :goto_240

    .line 1440
    :pswitch_1ec
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v3, v4, 0x1

    aget v2, v2, v4

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->getVariable(I)Ljava/util/Map;

    move-result-object v2

    const-string v4, "StrokeWidth"

    const-string/jumbo v5, "width"

    filled-new-array {v8, v4, v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1441
    move v2, v3

    goto :goto_240

    .line 1434
    :pswitch_208
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v3, v4, 0x1

    aget v2, v2, v4

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->colorInt(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Color"

    const-string v5, "color"

    filled-new-array {v8, v4, v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1435
    move v2, v3

    goto :goto_240

    .line 1422
    :pswitch_223
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v3, v4, 0x1

    aget v2, v2, v4

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->getVariable(I)Ljava/util/Map;

    move-result-object v2

    const-string v4, "TextSize"

    const-string/jumbo v5, "size"

    filled-new-array {v8, v4, v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1423
    move v2, v3

    goto :goto_240

    .line 1498
    :goto_23f
    move v2, v4

    :goto_240
    goto/16 :goto_c

    .line 1499
    :cond_242
    const-string/jumbo v1, "operations"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/util/List;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 1500
    return-void

    nop

    :pswitch_data_24a
    .packed-switch 0x1
        :pswitch_223
        :pswitch_25
        :pswitch_25
        :pswitch_208
        :pswitch_1ec
        :pswitch_1d1
        :pswitch_1bb
        :pswitch_1a3
        :pswitch_189
        :pswitch_171
        :pswitch_169
        :pswitch_14d
        :pswitch_126
        :pswitch_10d
        :pswitch_f5
        :pswitch_a7
        :pswitch_8e
        :pswitch_77
        :pswitch_5d
        :pswitch_36
        :pswitch_27
    .end packed-switch
.end method

.method public blacklist setAlpha(F)V
    .registers 5

    .line 986
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const/16 v2, 0xc

    aput v2, v0, v1

    .line 987
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 988
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    aput p1, v0, v1

    .line 989
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 990
    return-void
.end method

.method public blacklist setAntiAlias(Z)V
    .registers 4

    .line 1053
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    shl-int/lit8 p1, p1, 0x10

    or-int/lit8 p1, p1, 0xe

    aput p1, v0, v1

    .line 1054
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 1055
    return-void
.end method

.method public blacklist setBlendMode(I)V
    .registers 4

    .line 1041
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    shl-int/lit8 p1, p1, 0x10

    or-int/lit8 p1, p1, 0x12

    aput p1, v0, v1

    .line 1042
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 1043
    return-void
.end method

.method public blacklist setColor(FFFF)V
    .registers 5

    .line 935
    invoke-static {p4, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->toARGB(FFFF)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColor(I)V

    .line 936
    return-void
.end method

.method public blacklist setColor(I)V
    .registers 5

    .line 907
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const/4 v2, 0x4

    aput v2, v0, v1

    .line 908
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 909
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aput p1, v0, v1

    .line 910
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 911
    return-void
.end method

.method public blacklist setColor(IIII)V
    .registers 5

    .line 922
    shl-int/lit8 p4, p4, 0x18

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, p4

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p1, p2

    or-int/2addr p1, p3

    .line 923
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColor(I)V

    .line 924
    return-void
.end method

.method public blacklist setColorFilter(II)V
    .registers 5

    .line 801
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    shl-int/lit8 p2, p2, 0x10

    or-int/lit8 p2, p2, 0xd

    aput p2, v0, v1

    .line 802
    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 803
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aput p1, p2, v0

    .line 804
    return-void
.end method

.method public blacklist setColorFilterId(II)V
    .registers 6

    .line 813
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    shl-int/lit8 p2, p2, 0x10

    or-int/lit8 p2, p2, 0x14

    aput p2, v0, v1

    .line 814
    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const/4 v0, 0x1

    add-int/2addr p2, v0

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 815
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aput p1, p2, v1

    .line 816
    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mColorFilterSet:Z

    .line 817
    return-void
.end method

.method public blacklist setColorId(I)V
    .registers 5

    .line 944
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const/16 v2, 0x13

    aput v2, v0, v1

    .line 945
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 946
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aput p1, v0, v1

    .line 947
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 948
    return-void
.end method

.method public blacklist setFilterBitmap(Z)V
    .registers 4

    .line 1030
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    if-eqz p1, :cond_9

    const/high16 p1, 0x10000

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    or-int/lit8 p1, p1, 0x11

    aput p1, v0, v1

    .line 1031
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 1032
    return-void
.end method

.method public blacklist setLinearGradient([II[FFFFFI)V
    .registers 14

    .line 702
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const/16 v2, 0xb

    aput v2, v0, v1

    .line 703
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    shl-int/lit8 p2, p2, 0x10

    array-length v2, p1

    or-int/2addr p2, v2

    aput p2, v0, v1

    .line 704
    const/4 p2, 0x0

    move v0, p2

    :goto_1c
    if-ge v0, v2, :cond_2d

    .line 705
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aget v4, p1, v0

    aput v4, v1, v3

    .line 704
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 708
    :cond_2d
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    if-nez p3, :cond_39

    move v1, p2

    goto :goto_3a

    :cond_39
    array-length v1, p3

    :goto_3a
    aput v1, p1, v0

    .line 709
    nop

    :goto_3d
    if-ge p2, v1, :cond_52

    .line 710
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aget v2, p3, p2

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    aput v2, p1, v0

    .line 709
    add-int/lit8 p2, p2, 0x1

    goto :goto_3d

    .line 712
    :cond_52
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    aput p3, p1, p2

    .line 713
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    aput p3, p1, p2

    .line 714
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    aput p3, p1, p2

    .line 715
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    aput p3, p1, p2

    .line 716
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aput p8, p1, p2

    .line 717
    return-void
.end method

.method public blacklist setRadialGradient([II[FFFFI)V
    .registers 13

    .line 778
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const v2, 0x1000b

    aput v2, v0, v1

    .line 779
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    shl-int/lit8 p2, p2, 0x10

    array-length v2, p1

    or-int/2addr p2, v2

    aput p2, v0, v1

    .line 780
    const/4 p2, 0x0

    move v0, p2

    :goto_1d
    if-ge v0, v2, :cond_2e

    .line 781
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aget v4, p1, v0

    aput v4, v1, v3

    .line 780
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 783
    :cond_2e
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    if-nez p3, :cond_3a

    move v1, p2

    goto :goto_3b

    :cond_3a
    array-length v1, p3

    :goto_3b
    aput v1, p1, v0

    .line 785
    nop

    :goto_3e
    if-ge p2, v1, :cond_53

    .line 786
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aget v2, p3, p2

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    aput v2, p1, v0

    .line 785
    add-int/lit8 p2, p2, 0x1

    goto :goto_3e

    .line 788
    :cond_53
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    aput p3, p1, p2

    .line 789
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    aput p3, p1, p2

    .line 790
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    aput p3, p1, p2

    .line 791
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aput p7, p1, p2

    .line 792
    return-void
.end method

.method public blacklist setShader(I)V
    .registers 5

    .line 977
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mLastShaderSet:I

    .line 978
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const/16 v2, 0x9

    aput v2, v0, v1

    .line 979
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 980
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aput p1, v0, v1

    .line 981
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 982
    return-void
.end method

.method public blacklist setShaderMatrix(F)V
    .registers 5

    .line 994
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const/16 v2, 0x16

    aput v2, v0, v1

    .line 995
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 996
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    aput p1, v0, v1

    .line 997
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 998
    return-void
.end method

.method public blacklist setStrokeCap(I)V
    .registers 4

    .line 957
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    shl-int/lit8 p1, p1, 0x10

    or-int/lit8 p1, p1, 0x7

    aput p1, v0, v1

    .line 958
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 959
    return-void
.end method

.method public blacklist setStrokeJoin(I)V
    .registers 4

    .line 1020
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    shl-int/lit8 p1, p1, 0x10

    or-int/lit8 p1, p1, 0xf

    aput p1, v0, v1

    .line 1021
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 1022
    return-void
.end method

.method public blacklist setStrokeMiter(F)V
    .registers 5

    .line 1008
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const/4 v2, 0x6

    aput v2, v0, v1

    .line 1009
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 1010
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    aput p1, v0, v1

    .line 1011
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 1012
    return-void
.end method

.method public blacklist setStrokeWidth(F)V
    .registers 5

    .line 895
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const/4 v2, 0x5

    aput v2, v0, v1

    .line 896
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 897
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    aput p1, v0, v1

    .line 898
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 899
    return-void
.end method

.method public blacklist setStyle(I)V
    .registers 4

    .line 967
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    shl-int/lit8 p1, p1, 0x10

    or-int/lit8 p1, p1, 0x8

    aput p1, v0, v1

    .line 968
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 969
    return-void
.end method

.method public blacklist setSweepGradient([II[FFF)V
    .registers 11

    .line 740
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const v2, 0x2000b

    aput v2, v0, v1

    .line 741
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    shl-int/lit8 p2, p2, 0x10

    const/4 v2, 0x0

    if-nez p1, :cond_1c

    move v3, v2

    goto :goto_1d

    :cond_1c
    array-length v3, p1

    :goto_1d
    or-int/2addr p2, v3

    aput p2, v0, v1

    .line 742
    move p2, v2

    :goto_21
    if-ge p2, v3, :cond_32

    .line 743
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aget v4, p1, p2

    aput v4, v0, v1

    .line 742
    add-int/lit8 p2, p2, 0x1

    goto :goto_21

    .line 746
    :cond_32
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    if-nez p3, :cond_3e

    move v0, v2

    goto :goto_3f

    :cond_3e
    array-length v0, p3

    :goto_3f
    aput v0, p1, p2

    .line 747
    nop

    :goto_42
    if-ge v2, v0, :cond_57

    .line 748
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aget v1, p3, v2

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    aput v1, p1, p2

    .line 747
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 750
    :cond_57
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    aput p3, p1, p2

    .line 751
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    aput p3, p1, p2

    .line 752
    return-void
.end method

.method public blacklist setTextAxis([I[F)V
    .registers 7

    .line 873
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_56

    .line 877
    array-length v0, p2

    const/16 v1, 0x8

    if-gt v0, v1, :cond_3c

    .line 880
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    array-length v2, p2

    shl-int/lit8 v2, v2, 0x10

    or-int/lit8 v2, v2, 0x17

    aput v2, v0, v1

    .line 881
    const/4 v0, 0x0

    :goto_19
    array-length v1, p1

    if-ge v0, v1, :cond_3b

    .line 882
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aget v3, p1, v0

    aput v3, v1, v2

    .line 883
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aget v3, p2, v0

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    aput v3, v1, v2

    .line 881
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 885
    :cond_3b
    return-void

    .line 878
    :cond_3c
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " too many values "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length p2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 874
    :cond_56
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " tags.length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " not value.length"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setTextSize(F)V
    .registers 5

    .line 832
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const/4 v2, 0x1

    aput v2, v0, v1

    .line 833
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 834
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    aput p1, v0, v1

    .line 835
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 836
    return-void
.end method

.method public blacklist setTextStyle(IIZ)V
    .registers 6

    .line 861
    and-int/lit16 p2, p2, 0x3ff

    if-eqz p3, :cond_7

    const/16 p3, 0x800

    goto :goto_8

    :cond_7
    const/4 p3, 0x0

    :goto_8
    or-int/2addr p2, p3

    .line 862
    iget-object p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    shl-int/lit8 p2, p2, 0x10

    or-int/lit8 p2, p2, 0x10

    aput p2, p3, v0

    .line 863
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aput p1, p2, p3

    .line 864
    return-void
.end method

.method public blacklist setTextStyle(IIZZ)V
    .registers 6

    .line 847
    and-int/lit16 p2, p2, 0x3ff

    .line 849
    const/4 v0, 0x0

    if-eqz p3, :cond_8

    const/16 p3, 0x800

    goto :goto_9

    :cond_8
    move p3, v0

    :goto_9
    or-int/2addr p2, p3

    .line 850
    if-eqz p4, :cond_e

    const/16 v0, 0x400

    :cond_e
    or-int/2addr p2, v0

    .line 851
    iget-object p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, p4, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    shl-int/lit8 p2, p2, 0x10

    or-int/lit8 p2, p2, 0x10

    aput p2, p3, p4

    .line 852
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 p4, p3, 0x1

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aput p1, p2, p3

    .line 853
    return-void
.end method

.method public blacklist setTextureShader(ISSSS)V
    .registers 9

    .line 1068
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const/16 v2, 0x18

    aput v2, v0, v1

    .line 1069
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 1070
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aput p1, v0, v1

    .line 1071
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 1072
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    shl-int/lit8 p3, p3, 0x10

    or-int/2addr p2, p3

    aput p2, p1, v0

    .line 1073
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 1074
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    shl-int/lit8 p3, p5, 0x10

    or-int/2addr p3, p4

    aput p3, p1, p2

    .line 1075
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 1076
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 11

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    const/4 v1, 0x0

    move v2, v1

    .line 214
    :goto_9
    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    if-ge v2, v3, :cond_313

    .line 215
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v4, v2, 0x1

    aget v2, v3, v2

    .line 216
    const v3, 0xffff

    and-int/2addr v3, v2

    .line 217
    const-string v5, "["

    const-string v6, "]"

    const-string v7, ", "

    const/4 v8, 0x1

    packed-switch v3, :pswitch_data_318

    :pswitch_21
    goto/16 :goto_30b

    .line 298
    :pswitch_23
    const-string v2, "    texture( "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v3, v4, 0x1

    aget v2, v2, v4

    .line 300
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v6, v3, 0x1

    aget v3, v4, v3

    .line 301
    and-int/lit8 v4, v3, 0xf

    int-to-short v4, v4

    .line 302
    shr-int/lit8 v3, v3, 0x10

    int-to-short v3, v3

    .line 303
    iget-object v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v9, v6, 0x1

    aget v6, v8, v6

    .line 304
    and-int/lit8 v8, v6, 0xf

    int-to-short v8, v8

    .line 305
    shr-int/lit8 v6, v6, 0x10

    int-to-short v6, v6

    .line 306
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 307
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 308
    const-string v5, "] "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 309
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 310
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 311
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 312
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 313
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 314
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 315
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 316
    move v2, v9

    goto/16 :goto_30c

    .line 288
    :pswitch_72
    const-string v3, "    FontAxis("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    shr-int/lit8 v2, v2, 0x10

    .line 290
    move v3, v1

    :goto_7a
    if-ge v3, v2, :cond_90

    .line 291
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v9, v4, 0x1

    aget v4, v7, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    add-int/lit8 v4, v9, 0x1

    .line 290
    add-int/lit8 v3, v3, 0x1

    goto :goto_7a

    .line 296
    :cond_90
    move v2, v4

    goto/16 :goto_30c

    .line 318
    :pswitch_93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    ShaderMatrix("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v5, v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v5

    goto/16 :goto_30c

    .line 261
    :pswitch_b6
    const-string v2, "    clearColorFilter"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    goto/16 :goto_30b

    .line 254
    :pswitch_bd
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    ColorFilterID(color=["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v6, v4, 0x1

    aget v4, v5, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    shr-int/lit8 v2, v2, 0x10

    .line 258
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->blendModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 254
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    move v2, v6

    goto/16 :goto_30c

    .line 232
    :pswitch_ec
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    ColorId(["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v5, v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    move v2, v5

    goto/16 :goto_30c

    .line 273
    :pswitch_10f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    BlendMode("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    shr-int/lit8 v2, v2, 0x10

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->blendModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    goto/16 :goto_30b

    .line 276
    :pswitch_12d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    FilterBitmap("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    shr-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_13d

    goto :goto_13e

    :cond_13d
    move v8, v1

    :goto_13e
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    goto/16 :goto_30b

    .line 222
    :pswitch_14b
    shr-int/lit8 v2, v2, 0x10

    .line 223
    and-int/lit16 v3, v2, 0x3ff

    .line 224
    shr-int/lit8 v2, v2, 0xa

    if-lez v2, :cond_154

    goto :goto_155

    :cond_154
    move v8, v1

    .line 225
    :goto_155
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v5, v4, 0x1

    aget v2, v2, v4

    .line 226
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    TypeFace("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    move v2, v5

    goto/16 :goto_30c

    .line 279
    :pswitch_184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    StrokeJoin("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    shr-int/lit8 v2, v2, 0x10

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    goto/16 :goto_30b

    .line 282
    :pswitch_19e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    AntiAlias("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    shr-int/lit8 v2, v2, 0x10

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    goto/16 :goto_30b

    .line 247
    :pswitch_1b8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    ColorFilter(color="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v6, v4, 0x1

    aget v4, v5, v4

    .line 249
    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->colorInt(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    shr-int/lit8 v2, v2, 0x10

    .line 251
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->blendModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    move v2, v6

    goto/16 :goto_30c

    .line 267
    :pswitch_1eb
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Alpha("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v5, v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    move v2, v5

    goto/16 :goto_30c

    .line 285
    :pswitch_20e
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->callPrintGradient(I[IILjava/lang/StringBuilder;)I

    move-result v2

    .line 286
    goto/16 :goto_30c

    .line 270
    :pswitch_216
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    ImageFilterQuality("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    shr-int/lit8 v2, v2, 0x10

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    goto/16 :goto_30b

    .line 264
    :pswitch_230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Shader("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v5, v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    move v2, v5

    goto/16 :goto_30c

    .line 244
    :pswitch_24f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    Style("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    shr-int/lit8 v2, v2, 0x10

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    goto/16 :goto_30b

    .line 241
    :pswitch_269
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    StrokeCap("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    shr-int/lit8 v2, v2, 0x10

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    goto/16 :goto_30b

    .line 238
    :pswitch_283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    StrokeMiter("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v5, v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    move v2, v5

    goto :goto_30c

    .line 235
    :pswitch_2a5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    StrokeWidth("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v5, v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    move v2, v5

    goto :goto_30c

    .line 229
    :pswitch_2c7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Color("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v5, v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->colorInt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    move v2, v5

    goto :goto_30c

    .line 219
    :pswitch_2e9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    TextSize("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v5, v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    move v2, v5

    goto :goto_30c

    .line 321
    :goto_30b
    move v2, v4

    :goto_30c
    const-string v3, "),\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    goto/16 :goto_9

    .line 323
    :cond_313
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_318
    .packed-switch 0x1
        :pswitch_2e9
        :pswitch_21
        :pswitch_21
        :pswitch_2c7
        :pswitch_2a5
        :pswitch_283
        :pswitch_269
        :pswitch_24f
        :pswitch_230
        :pswitch_216
        :pswitch_20e
        :pswitch_1eb
        :pswitch_1b8
        :pswitch_19e
        :pswitch_184
        :pswitch_14b
        :pswitch_12d
        :pswitch_10f
        :pswitch_ec
        :pswitch_bd
        :pswitch_b6
        :pswitch_93
        :pswitch_72
        :pswitch_23
    .end packed-switch
.end method

.method blacklist updateFloatsInGradient(I[I[IILcom/android/internal/widget/remotecompose/core/RemoteContext;)I
    .registers 12

    .line 1309
    nop

    .line 1310
    shr-int/lit8 p1, p1, 0x10

    .line 1311
    add-int/lit8 v0, p4, 0x1

    aget p4, p3, p4

    .line 1312
    and-int/lit16 v1, p4, 0xff

    .line 1313
    const v2, 0xffff

    shr-int/lit8 p4, p4, 0x10

    and-int/2addr p4, v2

    .line 1314
    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_102

    .line 1406
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p2, "gradient type unknown"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_101

    .line 1378
    :pswitch_1d
    if-lez v1, :cond_34

    .line 1380
    move p1, v2

    :goto_20
    if-ge p1, v1, :cond_34

    .line 1381
    aget v4, p3, v0

    .line 1382
    shl-int v5, v3, p1

    and-int/2addr v5, p4

    if-eqz v5, :cond_2f

    .line 1383
    invoke-direct {p0, v4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixColor(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v4

    aput v4, p2, v0

    .line 1385
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    .line 1380
    add-int/lit8 p1, p1, 0x1

    goto :goto_20

    .line 1388
    :cond_34
    add-int/lit8 p1, v0, 0x1

    aget p4, p3, v0

    .line 1389
    nop

    .line 1390
    if-lez p4, :cond_4d

    .line 1391
    new-array v0, p4, [F

    .line 1392
    nop

    :goto_3e
    if-ge v2, p4, :cond_4d

    .line 1393
    aget v0, p3, p1

    invoke-direct {p0, v0, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v0

    aput v0, p2, p1

    .line 1394
    add-int/lit8 p1, p1, 0x1

    .line 1392
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 1399
    :cond_4d
    aget p4, p3, p1

    invoke-direct {p0, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result p4

    aput p4, p2, p1

    .line 1400
    add-int/2addr p1, v3

    .line 1401
    aget p3, p3, p1

    invoke-direct {p0, p3, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result p3

    aput p3, p2, p1

    .line 1402
    add-int/lit8 v0, p1, 0x1

    .line 1404
    goto/16 :goto_101

    .line 1348
    :pswitch_62
    if-lez v1, :cond_79

    .line 1350
    move p1, v2

    :goto_65
    if-ge p1, v1, :cond_79

    .line 1351
    aget v4, p3, v0

    .line 1352
    shl-int v5, v3, p1

    and-int/2addr v5, p4

    if-eqz v5, :cond_74

    .line 1353
    invoke-direct {p0, v4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixColor(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v4

    aput v4, p2, v0

    .line 1355
    :cond_74
    add-int/lit8 v0, v0, 0x1

    .line 1350
    add-int/lit8 p1, p1, 0x1

    goto :goto_65

    .line 1358
    :cond_79
    add-int/lit8 p1, v0, 0x1

    aget p4, p3, v0

    .line 1359
    if-lez p4, :cond_8f

    .line 1360
    nop

    :goto_80
    if-ge v2, p4, :cond_8f

    .line 1361
    aget v0, p3, p1

    invoke-direct {p0, v0, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v0

    aput v0, p2, p1

    .line 1362
    add-int/lit8 p1, p1, 0x1

    .line 1360
    add-int/lit8 v2, v2, 0x1

    goto :goto_80

    .line 1367
    :cond_8f
    aget p4, p3, p1

    invoke-direct {p0, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result p4

    aput p4, p2, p1

    .line 1368
    add-int/2addr p1, v3

    .line 1369
    aget p4, p3, p1

    invoke-direct {p0, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result p4

    aput p4, p2, p1

    .line 1370
    add-int/2addr p1, v3

    .line 1372
    aget p3, p3, p1

    invoke-direct {p0, p3, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result p3

    aput p3, p2, p1

    .line 1373
    add-int/2addr p1, v3

    .line 1374
    add-int/lit8 v0, p1, 0x1

    .line 1375
    goto :goto_101

    .line 1316
    :pswitch_ad
    if-lez v1, :cond_c4

    .line 1318
    move p1, v2

    :goto_b0
    if-ge p1, v1, :cond_c4

    .line 1319
    aget v4, p3, v0

    .line 1320
    shl-int v5, v3, p1

    and-int/2addr v5, p4

    if-eqz v5, :cond_bf

    .line 1321
    invoke-direct {p0, v4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixColor(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v4

    aput v4, p2, v0

    .line 1323
    :cond_bf
    add-int/lit8 v0, v0, 0x1

    .line 1318
    add-int/lit8 p1, p1, 0x1

    goto :goto_b0

    .line 1326
    :cond_c4
    add-int/lit8 p1, v0, 0x1

    aget p4, p3, v0

    .line 1327
    if-lez p4, :cond_da

    .line 1328
    nop

    :goto_cb
    if-ge v2, p4, :cond_da

    .line 1329
    aget v0, p3, p1

    invoke-direct {p0, v0, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v0

    aput v0, p2, p1

    .line 1330
    add-int/lit8 p1, p1, 0x1

    .line 1328
    add-int/lit8 v2, v2, 0x1

    goto :goto_cb

    .line 1334
    :cond_da
    aget p4, p3, p1

    invoke-direct {p0, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result p4

    aput p4, p2, p1

    .line 1335
    add-int/2addr p1, v3

    .line 1336
    aget p4, p3, p1

    invoke-direct {p0, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result p4

    aput p4, p2, p1

    .line 1337
    add-int/2addr p1, v3

    .line 1340
    aget p4, p3, p1

    invoke-direct {p0, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result p4

    aput p4, p2, p1

    .line 1341
    add-int/2addr p1, v3

    .line 1342
    aget p3, p3, p1

    invoke-direct {p0, p3, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result p3

    aput p3, p2, p1

    .line 1343
    add-int/2addr p1, v3

    .line 1344
    add-int/lit8 v0, p1, 0x1

    .line 1345
    nop

    .line 1409
    :goto_101
    return v0

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_ad
        :pswitch_62
        :pswitch_1d
    .end packed-switch
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 11

    .line 1238
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 1239
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    array-length v2, v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    goto :goto_1b

    .line 1241
    :cond_11
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    array-length v3, v3

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1243
    :goto_1b
    move v0, v1

    .line 1244
    :goto_1c
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    if-ge v0, v2, :cond_90

    .line 1245
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v7, v0, 0x1

    aget v4, v2, v0

    .line 1246
    const v0, 0xffff

    and-int/2addr v0, v4

    .line 1247
    packed-switch v0, :pswitch_data_92

    :pswitch_2d
    move-object v3, p0

    move-object v8, p1

    goto/16 :goto_8d

    .line 1284
    :pswitch_31
    add-int/lit8 v7, v7, 0x3

    .line 1285
    move-object v3, p0

    move-object v8, p1

    move v0, v7

    goto/16 :goto_8e

    .line 1276
    :pswitch_38
    shr-int/lit8 v0, v4, 0x10

    .line 1277
    move v2, v1

    :goto_3b
    if-ge v2, v0, :cond_50

    .line 1278
    add-int/lit8 v7, v7, 0x1

    .line 1279
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    aget v4, v4, v7

    invoke-direct {p0, v4, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v4

    aput v4, v3, v7

    .line 1280
    add-int/lit8 v7, v7, 0x1

    .line 1277
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 1282
    :cond_50
    move-object v3, p0

    move-object v8, p1

    move v0, v7

    goto :goto_8e

    .line 1257
    :pswitch_54
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    aget v2, v2, v7

    invoke-direct {p0, v2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixColor(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v2

    aput v2, v0, v7

    .line 1258
    add-int/lit8 v7, v7, 0x1

    .line 1259
    move-object v3, p0

    move-object v8, p1

    move v0, v7

    goto :goto_8e

    .line 1288
    :pswitch_66
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    move-object v3, p0

    move-object v8, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->updateFloatsInGradient(I[I[IILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result p1

    move v0, p1

    goto :goto_8e

    .line 1274
    :pswitch_72
    move-object v3, p0

    move-object v8, p1

    goto :goto_8d

    .line 1264
    :pswitch_75
    move-object v3, p0

    move-object v8, p1

    add-int/lit8 v7, v7, 0x1

    .line 1265
    move v0, v7

    goto :goto_8e

    .line 1252
    :pswitch_7b
    move-object v3, p0

    move-object v8, p1

    iget-object p1, v3, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    iget-object v0, v3, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    aget v0, v0, v7

    invoke-direct {p0, v0, v8}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v0

    aput v0, p1, v7

    .line 1253
    add-int/lit8 v7, v7, 0x1

    .line 1254
    move v0, v7

    goto :goto_8e

    .line 1290
    :goto_8d
    move v0, v7

    :goto_8e
    move-object p1, v8

    goto :goto_1c

    .line 1291
    :cond_90
    return-void

    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_7b
        :pswitch_2d
        :pswitch_2d
        :pswitch_75
        :pswitch_7b
        :pswitch_7b
        :pswitch_72
        :pswitch_72
        :pswitch_75
        :pswitch_72
        :pswitch_66
        :pswitch_7b
        :pswitch_75
        :pswitch_72
        :pswitch_72
        :pswitch_75
        :pswitch_72
        :pswitch_72
        :pswitch_54
        :pswitch_54
        :pswitch_72
        :pswitch_2d
        :pswitch_38
        :pswitch_31
    .end packed-switch
.end method

.method public blacklist writeBundle(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 4

    .line 579
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 580
    const/4 v0, 0x0

    :goto_6
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    if-ge v0, v1, :cond_14

    .line 581
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 580
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 583
    :cond_14
    return-void
.end method
