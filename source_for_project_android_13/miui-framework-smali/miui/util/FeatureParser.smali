.class public Lmiui/util/FeatureParser;
.super Ljava/lang/Object;
.source "FeatureParser.java"


# static fields
.field private static final blacklist ASSET_DIR:Ljava/lang/String; = "device_features/"

.field private static final blacklist CCM_OVERRIDE_FILE:Ljava/lang/String; = "/product/etc/ccm.xml"

.field private static final blacklist IS_K19T:Z

.field private static final blacklist IS_POCO:Z

.field private static final blacklist MI_EXT_PRODUCT_DIR:Ljava/lang/String; = "/mi_ext/product/etc/device_features"

.field private static final blacklist PRODUCT_DIR:Ljava/lang/String; = "/product/etc/device_features"

.field private static final blacklist REMOVABLE_SYSTEM_FILE:Ljava/lang/String; = "/product/etc/removable_apk_info.xml"

.field private static final blacklist REMOVABLE_SYSTEM_MI_EXT_FILE:Ljava/lang/String; = "/mi_ext/product/etc/miext_removable_apk_info.xml"

.field private static final blacklist TAG:Ljava/lang/String; = "FeatureParser"

.field private static final blacklist TAG_BOOL:Ljava/lang/String; = "bool"

.field private static final blacklist TAG_FLOAT:Ljava/lang/String; = "float"

.field private static final blacklist TAG_INTEGER:Ljava/lang/String; = "integer"

.field private static final blacklist TAG_INTEGER_ARRAY:Ljava/lang/String; = "integer-array"

.field private static final blacklist TAG_ITEM:Ljava/lang/String; = "item"

.field private static final blacklist TAG_STRING:Ljava/lang/String; = "string"

.field private static final blacklist TAG_STRING_ARRAY:Ljava/lang/String; = "string-array"

.field public static final whitelist TYPE_BOOL:I = 0x1

.field public static final whitelist TYPE_FLOAT:I = 0x6

.field public static final whitelist TYPE_INTEGER:I = 0x2

.field public static final whitelist TYPE_INTEGER_ARRAY:I = 0x5

.field public static final whitelist TYPE_STRING:I = 0x3

.field public static final whitelist TYPE_STRING_ARRAY:I = 0x4

.field private static blacklist sBooleanMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sFloatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sIntArrMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static blacklist sIntMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sStrArrMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static blacklist sStrMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 56
    const-string v0, "ro.boot.product.hardware.sku"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "selene_t"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/util/FeatureParser;->IS_K19T:Z

    .line 57
    const-string v0, "ro.product.brand"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "POCO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/util/FeatureParser;->IS_POCO:Z

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/FeatureParser;->sIntMap:Ljava/util/HashMap;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/FeatureParser;->sBooleanMap:Ljava/util/HashMap;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/FeatureParser;->sStrMap:Ljava/util/HashMap;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/FeatureParser;->sIntArrMap:Ljava/util/HashMap;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/FeatureParser;->sStrArrMap:Ljava/util/HashMap;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/FeatureParser;->sFloatMap:Ljava/util/HashMap;

    .line 66
    invoke-static {}, Lmiui/util/FeatureParser;->read()V

    .line 67
    invoke-static {}, Lmiui/util/FeatureParser;->overrideRead()V

    .line 68
    const-string v0, "/product/etc/removable_apk_info.xml"

    invoke-static {v0}, Lmiui/util/FeatureParser;->removableSystemApkRead(Ljava/lang/String;)V

    .line 69
    const-string v0, "/mi_ext/product/etc/miext_removable_apk_info.xml"

    invoke-static {v0}, Lmiui/util/FeatureParser;->removableSystemApkRead(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getBoolean(Ljava/lang/String;Z)Z
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .line 74
    sget-object v0, Lmiui/util/FeatureParser;->sBooleanMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 75
    .local v0, "value":Ljava/lang/Boolean;
    if-eqz v0, :cond_f

    .line 76
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 78
    :cond_f
    return p1
.end method

.method public static whitelist getDeviceFeaturesDir()Ljava/lang/String;
    .registers 1

    .line 86
    const-string v0, "/product/etc/device_features"

    return-object v0
.end method

.method public static whitelist getFloat(Ljava/lang/String;F)Ljava/lang/Float;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "defaultValue"    # F

    .line 119
    sget-object v0, Lmiui/util/FeatureParser;->sFloatMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 120
    .local v0, "value":Ljava/lang/Float;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_10

    :cond_f
    move v1, p1

    :goto_10
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist getIntArray(Ljava/lang/String;)[I
    .registers 6
    .param p0, "name"    # Ljava/lang/String;

    .line 98
    sget-object v0, Lmiui/util/FeatureParser;->sIntArrMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 99
    .local v0, "intList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_23

    .line 100
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 101
    .local v1, "length":I
    new-array v2, v1, [I

    .line 102
    .local v2, "intArr":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v1, :cond_22

    .line 103
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v2, v3

    .line 102
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 105
    .end local v3    # "i":I
    :cond_22
    return-object v2

    .line 107
    .end local v1    # "length":I
    .end local v2    # "intArr":[I
    :cond_23
    const/4 v1, 0x0

    return-object v1
.end method

.method public static whitelist getInteger(Ljava/lang/String;I)I
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .line 90
    sget-object v0, Lmiui/util/FeatureParser;->sIntMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 91
    .local v0, "value":Ljava/lang/Integer;
    if-eqz v0, :cond_f

    .line 92
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 94
    :cond_f
    return p1
.end method

.method public static whitelist getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 82
    sget-object v0, Lmiui/util/FeatureParser;->sStrMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static whitelist getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 111
    sget-object v0, Lmiui/util/FeatureParser;->sStrArrMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 112
    .local v0, "strList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_14

    .line 113
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    .line 115
    :cond_14
    const/4 v1, 0x0

    return-object v1
.end method

.method public static whitelist hasFeature(Ljava/lang/String;I)Z
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "type"    # I

    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, "result":Z
    packed-switch p1, :pswitch_data_30

    goto :goto_2f

    .line 142
    :pswitch_5
    sget-object v1, Lmiui/util/FeatureParser;->sFloatMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 143
    goto :goto_2f

    .line 136
    :pswitch_c
    sget-object v1, Lmiui/util/FeatureParser;->sIntArrMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 137
    goto :goto_2f

    .line 139
    :pswitch_13
    sget-object v1, Lmiui/util/FeatureParser;->sStrArrMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 140
    goto :goto_2f

    .line 133
    :pswitch_1a
    sget-object v1, Lmiui/util/FeatureParser;->sStrMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 134
    goto :goto_2f

    .line 130
    :pswitch_21
    sget-object v1, Lmiui/util/FeatureParser;->sIntMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 131
    goto :goto_2f

    .line 127
    :pswitch_28
    sget-object v1, Lmiui/util/FeatureParser;->sBooleanMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 128
    nop

    .line 147
    :goto_2f
    return v0

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_28
        :pswitch_21
        :pswitch_1a
        :pswitch_13
        :pswitch_c
        :pswitch_5
    .end packed-switch
.end method

.method private static blacklist overrideRead()V
    .registers 12

    .line 267
    const/4 v0, 0x0

    .line 270
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/product/etc/ccm.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 271
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_107

    .line 272
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v2

    .line 277
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 278
    .local v2, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 279
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v4, "UTF-8"

    invoke-interface {v3, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 281
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_25} :catch_126
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_25} :catch_11f
    .catchall {:try_start_1 .. :try_end_25} :catchall_116

    .line 282
    .local v4, "type":I
    const/4 v5, 0x0

    .line 283
    .local v5, "tagName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 284
    .local v6, "keyName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 285
    .local v7, "intList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .line 286
    .local v8, "strList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_29
    const/4 v9, 0x1

    if-eq v9, v4, :cond_100

    .line 287
    const-string v9, "string-array"

    const-string v10, "integer-array"

    packed-switch v4, :pswitch_data_12e

    goto/16 :goto_f9

    .line 314
    :pswitch_35
    :try_start_35
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 315
    .local v11, "end_tag_name":Ljava/lang/String;
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_47

    .line 316
    sget-object v9, Lmiui/util/FeatureParser;->sIntArrMap:Ljava/util/HashMap;

    invoke-virtual {v9, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const/4 v7, 0x0

    goto/16 :goto_f9

    .line 318
    :cond_47
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f9

    .line 319
    sget-object v9, Lmiui/util/FeatureParser;->sStrArrMap:Ljava/util/HashMap;

    invoke-virtual {v9, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const/4 v8, 0x0

    goto/16 :goto_f9

    .line 289
    .end local v11    # "end_tag_name":Ljava/lang/String;
    :pswitch_55
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    .line 290
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v11

    if-lez v11, :cond_66

    .line 291
    const/4 v11, 0x0

    invoke-interface {v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    .line 293
    :cond_66
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_74

    .line 294
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v9

    goto/16 :goto_f9

    .line 295
    :cond_74
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_82

    .line 296
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v9

    goto/16 :goto_f9

    .line 297
    :cond_82
    const-string v9, "bool"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_98

    .line 298
    sget-object v9, Lmiui/util/FeatureParser;->sBooleanMap:Ljava/util/HashMap;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f9

    .line 299
    :cond_98
    const-string v9, "integer"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ae

    .line 300
    sget-object v9, Lmiui/util/FeatureParser;->sIntMap:Ljava/util/HashMap;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f9

    .line 301
    :cond_ae
    const-string v9, "string"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c0

    .line 302
    sget-object v9, Lmiui/util/FeatureParser;->sStrMap:Ljava/util/HashMap;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f9

    .line 303
    :cond_c0
    const-string v9, "float"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_da

    .line 304
    sget-object v9, Lmiui/util/FeatureParser;->sFloatMap:Ljava/util/HashMap;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v9, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f9

    .line 305
    :cond_da
    const-string v9, "item"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f9

    .line 306
    if-eqz v7, :cond_f0

    .line 307
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f9

    .line 308
    :cond_f0
    if-eqz v8, :cond_f9

    .line 309
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    :cond_f9
    :goto_f9
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9
    :try_end_fd
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_fd} :catch_126
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_35 .. :try_end_fd} :catch_11f
    .catchall {:try_start_35 .. :try_end_fd} :catchall_116

    move v4, v9

    goto/16 :goto_29

    .line 332
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "type":I
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "keyName":Ljava/lang/String;
    .end local v7    # "intList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "strList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_100
    nop

    .line 334
    :try_start_101
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_104
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_104} :catch_105

    .line 337
    :goto_104
    goto :goto_12d

    .line 335
    :catch_105
    move-exception v1

    goto :goto_104

    .line 274
    .restart local v1    # "file":Ljava/io/File;
    :cond_107
    :try_start_107
    const-string v2, "FeatureParser"

    const-string v3, "CCM feature override file does not exist "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10e
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_10e} :catch_126
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_107 .. :try_end_10e} :catch_11f
    .catchall {:try_start_107 .. :try_end_10e} :catchall_116

    .line 332
    if-eqz v0, :cond_115

    .line 334
    :try_start_110
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_113
    .catch Ljava/io/IOException; {:try_start_110 .. :try_end_113} :catch_114

    .line 337
    goto :goto_115

    .line 335
    :catch_114
    move-exception v2

    .line 275
    :cond_115
    :goto_115
    return-void

    .line 332
    .end local v1    # "file":Ljava/io/File;
    :catchall_116
    move-exception v1

    if-eqz v0, :cond_11e

    .line 334
    :try_start_119
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_11c
    .catch Ljava/io/IOException; {:try_start_119 .. :try_end_11c} :catch_11d

    .line 337
    goto :goto_11e

    .line 335
    :catch_11d
    move-exception v2

    .line 339
    :cond_11e
    :goto_11e
    throw v1

    .line 330
    :catch_11f
    move-exception v1

    .line 332
    if-eqz v0, :cond_12d

    .line 334
    :try_start_122
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_104

    .line 329
    :catch_126
    move-exception v1

    .line 332
    if-eqz v0, :cond_12d

    .line 334
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_12c
    .catch Ljava/io/IOException; {:try_start_122 .. :try_end_12c} :catch_105

    goto :goto_104

    .line 341
    :cond_12d
    :goto_12d
    return-void

    :pswitch_data_12e
    .packed-switch 0x2
        :pswitch_55
        :pswitch_35
    .end packed-switch
.end method

.method private static blacklist read()V
    .registers 12

    .line 152
    const-string v0, "device_features/"

    const-string v1, "FeatureParser"

    const/4 v2, 0x0

    .line 153
    .local v2, "inputStream":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 155
    .local v3, "fileName":Ljava/lang/String;
    :try_start_6
    const-string v4, "cancro"

    sget-object v5, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 156
    sget-object v4, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "MI 3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 157
    const-string v4, "cancro_MI3.xml"

    move-object v3, v4

    goto :goto_50

    .line 158
    :cond_1e
    sget-object v4, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "MI 4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 159
    const-string v4, "cancro_MI4.xml"

    move-object v3, v4

    goto :goto_50

    .line 160
    :cond_2c
    const-string v4, "eos"

    sget-object v5, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 161
    const-string v4, "selene.xml"

    move-object v3, v4

    goto :goto_50

    .line 163
    :cond_3a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_4f} :catch_204
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_4f} :catch_1fd
    .catchall {:try_start_6 .. :try_end_4f} :catchall_1f4

    move-object v3, v4

    .line 165
    :cond_50
    :goto_50
    if-nez v3, :cond_5a

    .line 242
    if-eqz v2, :cond_59

    .line 244
    :try_start_54
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58

    .line 247
    goto :goto_59

    .line 245
    :catch_58
    move-exception v0

    .line 166
    :cond_59
    :goto_59
    return-void

    .line 169
    :cond_5a
    :try_start_5a
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_77} :catch_79
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5a .. :try_end_77} :catch_1fd
    .catchall {:try_start_5a .. :try_end_77} :catchall_1f4

    move-object v2, v0

    .line 173
    goto :goto_a8

    .line 170
    :catch_79
    move-exception v4

    .line 171
    .local v4, "e":Ljava/io/IOException;
    :try_start_7a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can\'t find "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in assets/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ",it may be in "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 172
    invoke-static {}, Lmiui/util/FeatureParser;->getDeviceFeaturesDir()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .end local v4    # "e":Ljava/io/IOException;
    :goto_a8
    if-nez v2, :cond_100

    .line 175
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmiui/util/FeatureParser;->getDeviceFeaturesDir()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .local v0, "file":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v5, "/mi_ext/product/etc/device_features"

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .local v4, "fileInMiExt":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_c7

    .line 178
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v1

    .end local v2    # "inputStream":Ljava/io/InputStream;
    .local v1, "inputStream":Ljava/io/InputStream;
    goto :goto_100

    .line 179
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :cond_c7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_d4

    .line 180
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v1

    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    goto :goto_100

    .line 182
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :cond_d4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "both assets/device_features/ and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 183
    invoke-static {}, Lmiui/util/FeatureParser;->getDeviceFeaturesDir()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " don\'t exist "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 182
    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f8
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_f8} :catch_204
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7a .. :try_end_f8} :catch_1fd
    .catchall {:try_start_7a .. :try_end_f8} :catchall_1f4

    .line 242
    if-eqz v2, :cond_ff

    .line 244
    :try_start_fa
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_fd
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_fd} :catch_fe

    .line 247
    goto :goto_ff

    .line 245
    :catch_fe
    move-exception v1

    .line 184
    :cond_ff
    :goto_ff
    return-void

    .line 187
    .end local v0    # "file":Ljava/io/File;
    .end local v4    # "fileInMiExt":Ljava/io/File;
    :cond_100
    :goto_100
    :try_start_100
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 188
    .local v0, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 189
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v4, "UTF-8"

    invoke-interface {v1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 191
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4
    :try_end_111
    .catch Ljava/io/IOException; {:try_start_100 .. :try_end_111} :catch_204
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_100 .. :try_end_111} :catch_1fd
    .catchall {:try_start_100 .. :try_end_111} :catchall_1f4

    .line 192
    .local v4, "type":I
    const/4 v5, 0x0

    .line 193
    .local v5, "tagName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 194
    .local v6, "keyName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 195
    .local v7, "intList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .line 196
    .local v8, "strList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_115
    const/4 v9, 0x1

    if-eq v9, v4, :cond_1ec

    .line 197
    const-string v9, "string-array"

    const-string v10, "integer-array"

    packed-switch v4, :pswitch_data_210

    goto/16 :goto_1e5

    .line 224
    :pswitch_121
    :try_start_121
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 225
    .local v11, "end_tag_name":Ljava/lang/String;
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_133

    .line 226
    sget-object v9, Lmiui/util/FeatureParser;->sIntArrMap:Ljava/util/HashMap;

    invoke-virtual {v9, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const/4 v7, 0x0

    goto/16 :goto_1e5

    .line 228
    :cond_133
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e5

    .line 229
    sget-object v9, Lmiui/util/FeatureParser;->sStrArrMap:Ljava/util/HashMap;

    invoke-virtual {v9, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const/4 v8, 0x0

    goto/16 :goto_1e5

    .line 199
    .end local v11    # "end_tag_name":Ljava/lang/String;
    :pswitch_141
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    .line 200
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v11

    if-lez v11, :cond_152

    .line 201
    const/4 v11, 0x0

    invoke-interface {v1, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    .line 203
    :cond_152
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_160

    .line 204
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v9

    goto/16 :goto_1e5

    .line 205
    :cond_160
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16e

    .line 206
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v9

    goto/16 :goto_1e5

    .line 207
    :cond_16e
    const-string v9, "bool"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_184

    .line 208
    sget-object v9, Lmiui/util/FeatureParser;->sBooleanMap:Ljava/util/HashMap;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e5

    .line 209
    :cond_184
    const-string v9, "integer"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19a

    .line 210
    sget-object v9, Lmiui/util/FeatureParser;->sIntMap:Ljava/util/HashMap;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e5

    .line 211
    :cond_19a
    const-string v9, "string"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1ac

    .line 212
    sget-object v9, Lmiui/util/FeatureParser;->sStrMap:Ljava/util/HashMap;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e5

    .line 213
    :cond_1ac
    const-string v9, "float"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c6

    .line 214
    sget-object v9, Lmiui/util/FeatureParser;->sFloatMap:Ljava/util/HashMap;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v9, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e5

    .line 215
    :cond_1c6
    const-string v9, "item"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e5

    .line 216
    if-eqz v7, :cond_1dc

    .line 217
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e5

    .line 218
    :cond_1dc
    if-eqz v8, :cond_1e5

    .line 219
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_1e5
    :goto_1e5
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9
    :try_end_1e9
    .catch Ljava/io/IOException; {:try_start_121 .. :try_end_1e9} :catch_204
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_121 .. :try_end_1e9} :catch_1fd
    .catchall {:try_start_121 .. :try_end_1e9} :catchall_1f4

    move v4, v9

    goto/16 :goto_115

    .line 242
    .end local v0    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "type":I
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "keyName":Ljava/lang/String;
    .end local v7    # "intList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "strList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1ec
    if-eqz v2, :cond_20b

    .line 244
    :try_start_1ee
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1f1
    .catch Ljava/io/IOException; {:try_start_1ee .. :try_end_1f1} :catch_1f2

    .line 247
    :goto_1f1
    goto :goto_20b

    .line 245
    :catch_1f2
    move-exception v0

    goto :goto_1f1

    .line 242
    :catchall_1f4
    move-exception v0

    if-eqz v2, :cond_1fc

    .line 244
    :try_start_1f7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1fa
    .catch Ljava/io/IOException; {:try_start_1f7 .. :try_end_1fa} :catch_1fb

    .line 247
    goto :goto_1fc

    .line 245
    :catch_1fb
    move-exception v1

    .line 249
    :cond_1fc
    :goto_1fc
    throw v0

    .line 240
    :catch_1fd
    move-exception v0

    .line 242
    if-eqz v2, :cond_20b

    .line 244
    :try_start_200
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_1f1

    .line 239
    :catch_204
    move-exception v0

    .line 242
    if-eqz v2, :cond_20b

    .line 244
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_20a
    .catch Ljava/io/IOException; {:try_start_200 .. :try_end_20a} :catch_1f2

    goto :goto_1f1

    .line 251
    :cond_20b
    :goto_20b
    invoke-static {v3}, Lmiui/util/FeatureParser;->resetSARValue(Ljava/lang/String;)V

    .line 252
    return-void

    nop

    :pswitch_data_210
    .packed-switch 0x2
        :pswitch_141
        :pswitch_121
    .end packed-switch
.end method

.method private static blacklist removableSystemApkRead(Ljava/lang/String;)V
    .registers 13
    .param p0, "path"    # Ljava/lang/String;

    .line 347
    const/4 v0, 0x0

    .line 350
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 351
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_105

    .line 352
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v2

    .line 357
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 358
    .local v2, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 359
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v4, "UTF-8"

    invoke-interface {v3, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 361
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_23} :catch_124
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_23} :catch_11d
    .catchall {:try_start_1 .. :try_end_23} :catchall_114

    .line 362
    .local v4, "type":I
    const/4 v5, 0x0

    .line 363
    .local v5, "tagName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 364
    .local v6, "keyName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 365
    .local v7, "intList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .line 366
    .local v8, "strList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_27
    const/4 v9, 0x1

    if-eq v9, v4, :cond_fe

    .line 367
    const-string v9, "string-array"

    const-string v10, "integer-array"

    packed-switch v4, :pswitch_data_12c

    goto/16 :goto_f7

    .line 394
    :pswitch_33
    :try_start_33
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 395
    .local v11, "end_tag_name":Ljava/lang/String;
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_45

    .line 396
    sget-object v9, Lmiui/util/FeatureParser;->sIntArrMap:Ljava/util/HashMap;

    invoke-virtual {v9, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    const/4 v7, 0x0

    goto/16 :goto_f7

    .line 398
    :cond_45
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f7

    .line 399
    sget-object v9, Lmiui/util/FeatureParser;->sStrArrMap:Ljava/util/HashMap;

    invoke-virtual {v9, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    const/4 v8, 0x0

    goto/16 :goto_f7

    .line 369
    .end local v11    # "end_tag_name":Ljava/lang/String;
    :pswitch_53
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    .line 370
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v11

    if-lez v11, :cond_64

    .line 371
    const/4 v11, 0x0

    invoke-interface {v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    .line 373
    :cond_64
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_72

    .line 374
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v9

    goto/16 :goto_f7

    .line 375
    :cond_72
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_80

    .line 376
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v9

    goto/16 :goto_f7

    .line 377
    :cond_80
    const-string v9, "bool"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_96

    .line 378
    sget-object v9, Lmiui/util/FeatureParser;->sBooleanMap:Ljava/util/HashMap;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f7

    .line 379
    :cond_96
    const-string v9, "integer"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ac

    .line 380
    sget-object v9, Lmiui/util/FeatureParser;->sIntMap:Ljava/util/HashMap;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f7

    .line 381
    :cond_ac
    const-string v9, "string"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_be

    .line 382
    sget-object v9, Lmiui/util/FeatureParser;->sStrMap:Ljava/util/HashMap;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f7

    .line 383
    :cond_be
    const-string v9, "float"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d8

    .line 384
    sget-object v9, Lmiui/util/FeatureParser;->sFloatMap:Ljava/util/HashMap;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v9, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f7

    .line 385
    :cond_d8
    const-string v9, "item"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f7

    .line 386
    if-eqz v7, :cond_ee

    .line 387
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f7

    .line 388
    :cond_ee
    if-eqz v8, :cond_f7

    .line 389
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    :cond_f7
    :goto_f7
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9
    :try_end_fb
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_fb} :catch_124
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_33 .. :try_end_fb} :catch_11d
    .catchall {:try_start_33 .. :try_end_fb} :catchall_114

    move v4, v9

    goto/16 :goto_27

    .line 412
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "type":I
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "keyName":Ljava/lang/String;
    .end local v7    # "intList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "strList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_fe
    nop

    .line 414
    :try_start_ff
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_102
    .catch Ljava/io/IOException; {:try_start_ff .. :try_end_102} :catch_103

    .line 417
    :goto_102
    goto :goto_12b

    .line 415
    :catch_103
    move-exception v1

    goto :goto_102

    .line 354
    .restart local v1    # "file":Ljava/io/File;
    :cond_105
    :try_start_105
    const-string v2, "FeatureParser"

    const-string v3, "removable system apk list from xml file does not exist "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10c
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_10c} :catch_124
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_105 .. :try_end_10c} :catch_11d
    .catchall {:try_start_105 .. :try_end_10c} :catchall_114

    .line 412
    if-eqz v0, :cond_113

    .line 414
    :try_start_10e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_111
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_111} :catch_112

    .line 417
    goto :goto_113

    .line 415
    :catch_112
    move-exception v2

    .line 355
    :cond_113
    :goto_113
    return-void

    .line 412
    .end local v1    # "file":Ljava/io/File;
    :catchall_114
    move-exception v1

    if-eqz v0, :cond_11c

    .line 414
    :try_start_117
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_11a
    .catch Ljava/io/IOException; {:try_start_117 .. :try_end_11a} :catch_11b

    .line 417
    goto :goto_11c

    .line 415
    :catch_11b
    move-exception v2

    .line 419
    :cond_11c
    :goto_11c
    throw v1

    .line 410
    :catch_11d
    move-exception v1

    .line 412
    if-eqz v0, :cond_12b

    .line 414
    :try_start_120
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_102

    .line 409
    :catch_124
    move-exception v1

    .line 412
    if-eqz v0, :cond_12b

    .line 414
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_12a
    .catch Ljava/io/IOException; {:try_start_120 .. :try_end_12a} :catch_103

    goto :goto_102

    .line 421
    :cond_12b
    :goto_12b
    return-void

    :pswitch_data_12c
    .packed-switch 0x2
        :pswitch_53
        :pswitch_33
    .end packed-switch
.end method

.method private static blacklist resetSARValue(Ljava/lang/String;)V
    .registers 5
    .param p0, "fileName"    # Ljava/lang/String;

    .line 255
    const-string v0, "selene.xml"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "device_body_sar"

    const-string v2, "device_head_sar"

    if-eqz v0, :cond_28

    sget-boolean v0, Lmiui/util/FeatureParser;->IS_K19T:Z

    if-eqz v0, :cond_28

    .line 256
    sget-object v0, Lmiui/util/FeatureParser;->sFloatMap:Ljava/util/HashMap;

    const v3, 0x3f7ba5e3    # 0.983f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lmiui/util/FeatureParser;->sFloatMap:Ljava/util/HashMap;

    const v3, 0x3f34fdf4    # 0.707f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_28
    const-string v0, "miel.xml"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    sget-boolean v0, Lmiui/util/FeatureParser;->IS_POCO:Z

    if-eqz v0, :cond_4c

    .line 261
    sget-object v0, Lmiui/util/FeatureParser;->sFloatMap:Ljava/util/HashMap;

    const v3, 0x3f5ae148    # 0.855f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lmiui/util/FeatureParser;->sFloatMap:Ljava/util/HashMap;

    const v2, 0x3f5a5e35    # 0.853f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :cond_4c
    return-void
.end method
