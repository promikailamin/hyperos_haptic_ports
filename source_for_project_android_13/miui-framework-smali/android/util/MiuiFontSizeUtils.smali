.class public Landroid/util/MiuiFontSizeUtils;
.super Ljava/lang/Object;
.source "MiuiFontSizeUtils.java"


# static fields
.field private static final blacklist DEFAULT_DENSITY_320:Landroid/util/SparseIntArray;

.field private static final blacklist DEFAULT_DENSITY_440:Landroid/util/SparseIntArray;

.field private static final blacklist DEFAULT_DENSITY_480:Landroid/util/SparseIntArray;

.field private static final blacklist DEFAULT_FONT_SCALE_320:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEFAULT_FONT_SCALE_440:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEFAULT_FONT_SCALE_480:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DPI_320:I = 0x140

.field private static final blacklist DPI_480:I = 0x1e0

.field private static blacklist LOG_TAG:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/util/MiuiFontSizeUtils;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 12

    .line 22
    const-string v0, "MiuiFontSizeUtils"

    sput-object v0, Landroid/util/MiuiFontSizeUtils;->LOG_TAG:Ljava/lang/String;

    .line 140
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_DENSITY_440:Landroid/util/SparseIntArray;

    .line 142
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Landroid/util/MiuiFontSizeUtils;->DEFAULT_DENSITY_480:Landroid/util/SparseIntArray;

    .line 144
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v2, Landroid/util/MiuiFontSizeUtils;->DEFAULT_DENSITY_320:Landroid/util/SparseIntArray;

    .line 147
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    sput-object v3, Landroid/util/MiuiFontSizeUtils;->DEFAULT_FONT_SCALE_440:Landroid/util/SparseArray;

    .line 149
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    sput-object v4, Landroid/util/MiuiFontSizeUtils;->DEFAULT_FONT_SCALE_480:Landroid/util/SparseArray;

    .line 151
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    sput-object v5, Landroid/util/MiuiFontSizeUtils;->DEFAULT_FONT_SCALE_320:Landroid/util/SparseArray;

    .line 156
    const/16 v6, 0xc

    const/16 v7, 0x1b8

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 157
    const/16 v8, 0xd

    invoke-virtual {v0, v8, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 158
    const/16 v9, 0xe

    invoke-virtual {v0, v9, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 159
    const/16 v7, 0xf

    const/16 v10, 0x21c

    invoke-virtual {v0, v7, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 160
    const/16 v11, 0xb

    invoke-virtual {v0, v11, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 162
    const/16 v0, 0x1e0

    invoke-virtual {v1, v6, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 163
    invoke-virtual {v1, v8, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 164
    invoke-virtual {v1, v9, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 165
    invoke-virtual {v1, v7, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 166
    invoke-virtual {v1, v11, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 168
    const/16 v0, 0x140

    invoke-virtual {v2, v6, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 169
    invoke-virtual {v2, v8, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 170
    invoke-virtual {v2, v9, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 171
    const/16 v0, 0x168

    invoke-virtual {v2, v7, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 172
    invoke-virtual {v2, v11, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 175
    const v0, 0x3f5c28f6    # 0.86f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v3, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 176
    const v1, 0x3f933333    # 1.15f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v3, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 177
    const v2, 0x3fa8f5c3    # 1.32f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v3, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 178
    const v10, 0x3f8ccccd    # 1.1f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v3, v7, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 179
    const v10, 0x3f91eb85    # 1.14f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v3, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 181
    invoke-virtual {v4, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 182
    invoke-virtual {v4, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 183
    invoke-virtual {v4, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 184
    const v3, 0x3f95c28f    # 1.17f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v4, v7, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 185
    const v3, 0x3f99999a    # 1.2f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v4, v11, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 187
    invoke-virtual {v5, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 188
    invoke-virtual {v5, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 189
    invoke-virtual {v5, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 190
    invoke-virtual {v5, v7, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 191
    const v0, 0x3fa147ae    # 1.26f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v5, v11, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 192
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist clearForcedDisplayDensity(II)V
    .registers 3
    .param p0, "displayId"    # I
    .param p1, "userHandle"    # I

    .line 109
    new-instance v0, Landroid/util/MiuiFontSizeUtils$1;

    invoke-direct {v0, p0, p1}, Landroid/util/MiuiFontSizeUtils$1;-><init>(II)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 122
    return-void
.end method

.method public static blacklist getDensity(II)I
    .registers 5
    .param p0, "fontUiMode"    # I
    .param p1, "defaultDensity"    # I

    .line 46
    sparse-switch p1, :sswitch_data_38

    .line 54
    sget-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_DENSITY_440:Landroid/util/SparseIntArray;

    .local v0, "defaultValuesMap":Landroid/util/SparseIntArray;
    goto :goto_c

    .line 48
    .end local v0    # "defaultValuesMap":Landroid/util/SparseIntArray;
    :sswitch_6
    sget-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_DENSITY_480:Landroid/util/SparseIntArray;

    .line 49
    .restart local v0    # "defaultValuesMap":Landroid/util/SparseIntArray;
    goto :goto_c

    .line 51
    .end local v0    # "defaultValuesMap":Landroid/util/SparseIntArray;
    :sswitch_9
    sget-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_DENSITY_320:Landroid/util/SparseIntArray;

    .line 52
    .restart local v0    # "defaultValuesMap":Landroid/util/SparseIntArray;
    nop

    .line 57
    :goto_c
    invoke-virtual {v0, p0, p1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 58
    .local v1, "defaultUiModeDensity":I
    packed-switch p0, :pswitch_data_42

    .line 70
    return p1

    .line 66
    :pswitch_14
    const-string v2, "hugeui_density"

    invoke-static {v2, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v2

    return v2

    .line 64
    :pswitch_1b
    const-string v2, "largeui_density"

    invoke-static {v2, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v2

    return v2

    .line 62
    :pswitch_22
    const-string v2, "mediumui_density"

    invoke-static {v2, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v2

    return v2

    .line 60
    :pswitch_29
    const-string v2, "smallui_density"

    invoke-static {v2, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v2

    return v2

    .line 68
    :pswitch_30
    const-string v2, "godzillaui_density"

    invoke-static {v2, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v2

    return v2

    nop

    :sswitch_data_38
    .sparse-switch
        0x140 -> :sswitch_9
        0x1e0 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_42
    .packed-switch 0xb
        :pswitch_30
        :pswitch_29
        :pswitch_22
        :pswitch_1b
        :pswitch_14
    .end packed-switch
.end method

.method public static blacklist getFontScaleV2(II)F
    .registers 5
    .param p0, "fontUiMode"    # I
    .param p1, "defaultDensity"    # I

    .line 80
    sparse-switch p1, :sswitch_data_58

    .line 88
    sget-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_FONT_SCALE_440:Landroid/util/SparseArray;

    .local v0, "defaultValuesMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    goto :goto_c

    .line 82
    .end local v0    # "defaultValuesMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    :sswitch_6
    sget-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_FONT_SCALE_480:Landroid/util/SparseArray;

    .line 83
    .restart local v0    # "defaultValuesMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    goto :goto_c

    .line 85
    .end local v0    # "defaultValuesMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    :sswitch_9
    sget-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_FONT_SCALE_320:Landroid/util/SparseArray;

    .line 86
    .restart local v0    # "defaultValuesMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    nop

    .line 91
    :goto_c
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 92
    .local v2, "defaultUiModeScale":F
    packed-switch p0, :pswitch_data_62

    .line 104
    return v1

    .line 100
    :pswitch_20
    const-string v1, "hugeui_font_scale_v2"

    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1

    .line 98
    :pswitch_2b
    const-string v1, "largeui_font_scale"

    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1

    .line 96
    :pswitch_36
    const-string v1, "mediumui_font_scale"

    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1

    .line 94
    :pswitch_41
    const-string v1, "smallui_font_scale"

    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1

    .line 102
    :pswitch_4c
    const-string v1, "godzillaui_font_scale_v2"

    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1

    nop

    :sswitch_data_58
    .sparse-switch
        0x140 -> :sswitch_9
        0x1e0 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_62
    .packed-switch 0xb
        :pswitch_4c
        :pswitch_41
        :pswitch_36
        :pswitch_2b
        :pswitch_20
    .end packed-switch
.end method

.method public static blacklist setDensityDpi(II)V
    .registers 5
    .param p0, "newUiModeType"    # I
    .param p1, "userHandle"    # I

    .line 31
    sget v0, Landroid/util/MiuiDisplayMetrics;->DENSITY_DEVICE:I

    .line 32
    .local v0, "defaultDensityDpi":I
    invoke-static {p0, v0}, Landroid/util/MiuiFontSizeUtils;->getDensity(II)I

    move-result v1

    .line 34
    .local v1, "densityDpi":I
    const/4 v2, 0x0

    if-ne v1, v0, :cond_d

    .line 35
    invoke-static {v2, p1}, Landroid/util/MiuiFontSizeUtils;->clearForcedDisplayDensity(II)V

    goto :goto_10

    .line 37
    :cond_d
    invoke-static {v2, v1, p1}, Landroid/util/MiuiFontSizeUtils;->setForcedDisplayDensity(III)V

    .line 39
    :goto_10
    return-void
.end method

.method private static blacklist setForcedDisplayDensity(III)V
    .registers 4
    .param p0, "displayId"    # I
    .param p1, "density"    # I
    .param p2, "userHandle"    # I

    .line 125
    new-instance v0, Landroid/util/MiuiFontSizeUtils$2;

    invoke-direct {v0, p0, p1, p2}, Landroid/util/MiuiFontSizeUtils$2;-><init>(III)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 138
    return-void
.end method
