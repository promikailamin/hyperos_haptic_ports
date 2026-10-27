.class public final Landroid/hardware/camera2/params/SharedSessionConfiguration;
.super Ljava/lang/Object;
.source "SharedSessionConfiguration.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;
    }
.end annotation


# static fields
.field private static final blacklist SHARED_OUTPUT_CONFIG_NUM_OF_ENTRIES:I = 0xb

.field private static final blacklist TAG:Ljava/lang/String; = "SharedSessionConfiguration"


# instance fields
.field private blacklist mColorSpace:I

.field private final blacklist mOutputStreamConfigurations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(I[J)V
    .registers 26

    .line 234
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 311
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Landroid/hardware/camera2/params/SharedSessionConfiguration;->mOutputStreamConfigurations:Ljava/util/ArrayList;

    .line 235
    move/from16 v2, p1

    iput v2, v0, Landroid/hardware/camera2/params/SharedSessionConfiguration;->mColorSpace:I

    .line 242
    array-length v2, v1

    .line 243
    const/4 v4, 0x0

    .line 244
    :goto_14
    const-string v5, "SharedSessionConfiguration"

    const/16 v6, 0xb

    if-lt v2, v6, :cond_ac

    .line 245
    aget-wide v6, v1, v4

    long-to-int v9, v6

    .line 246
    add-int/lit8 v6, v4, 0x1

    aget-wide v6, v1, v6

    long-to-int v6, v6

    .line 247
    add-int/lit8 v7, v4, 0x2

    aget-wide v7, v1, v7

    long-to-int v7, v7

    .line 248
    add-int/lit8 v8, v4, 0x3

    aget-wide v10, v1, v8

    long-to-int v11, v10

    .line 249
    add-int/lit8 v8, v4, 0x4

    aget-wide v12, v1, v8

    long-to-int v12, v12

    .line 250
    add-int/lit8 v8, v4, 0x5

    aget-wide v13, v1, v8

    const-wide/16 v15, 0x0

    cmp-long v8, v13, v15

    if-eqz v8, :cond_3e

    const/4 v8, 0x1

    move v13, v8

    goto :goto_3f

    :cond_3e
    const/4 v13, 0x0

    .line 251
    :goto_3f
    add-int/lit8 v8, v4, 0x6

    move v10, v4

    aget-wide v3, v1, v8

    long-to-int v14, v3

    .line 252
    add-int/lit8 v4, v10, 0x7

    aget-wide v3, v1, v4

    long-to-int v3, v3

    .line 253
    add-int/lit8 v4, v10, 0x8

    aget-wide v17, v1, v4

    .line 254
    add-int/lit8 v4, v10, 0x9

    aget-wide v19, v1, v4

    .line 255
    add-int/lit8 v4, v10, 0xa

    move v8, v2

    aget-wide v1, p2, v4

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 256
    add-int/lit8 v2, v8, -0xb

    .line 257
    add-int/lit8 v4, v10, 0xb

    .line 258
    if-ge v2, v1, :cond_65

    .line 259
    const-string v0, "Number of remaining data in shared configuration is less than physical camera id length . Malformed metadata android.info.availableSharedOutputConfigurations."

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    goto :goto_ad

    .line 264
    :cond_65
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    const/4 v8, 0x0

    :goto_6b
    if-ge v8, v1, :cond_86

    .line 267
    add-int v10, v4, v8

    move/from16 v22, v1

    move/from16 v21, v2

    aget-wide v1, p2, v10

    .line 268
    cmp-long v10, v1, v15

    if-nez v10, :cond_7a

    .line 269
    goto :goto_8a

    .line 271
    :cond_7a
    long-to-int v1, v1

    int-to-char v1, v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 266
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, v21

    move/from16 v1, v22

    goto :goto_6b

    :cond_86
    move/from16 v22, v1

    move/from16 v21, v2

    .line 274
    :goto_8a
    new-instance v8, Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;

    new-instance v10, Landroid/util/Size;

    invoke-direct {v10, v6, v7}, Landroid/util/Size;-><init>(II)V

    .line 276
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v15, v3

    move-wide/from16 v16, v17

    move-wide/from16 v18, v19

    move-object/from16 v20, v1

    invoke-direct/range {v8 .. v20}, Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;-><init>(ILandroid/util/Size;IIZIIJJLjava/lang/String;)V

    .line 277
    iget-object v1, v0, Landroid/hardware/camera2/params/SharedSessionConfiguration;->mOutputStreamConfigurations:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    add-int v4, v4, v22

    .line 279
    sub-int v2, v21, v22

    .line 280
    move-object/from16 v1, p2

    goto/16 :goto_14

    .line 244
    :cond_ac
    move v8, v2

    .line 281
    :goto_ad
    if-eqz v2, :cond_b4

    .line 282
    const-string v0, "Unexpected entries left in shared output configuration. Malformed metadata android.info.availableSharedOutputConfigurations."

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_b4
    return-void
.end method


# virtual methods
.method public whitelist getColorSpace()Landroid/graphics/ColorSpace;
    .registers 3

    .line 294
    iget v0, p0, Landroid/hardware/camera2/params/SharedSessionConfiguration;->mColorSpace:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    .line 295
    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    iget v1, p0, Landroid/hardware/camera2/params/SharedSessionConfiguration;->mColorSpace:I

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    return-object v0

    .line 297
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getOutputStreamsInformation()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;",
            ">;"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Landroid/hardware/camera2/params/SharedSessionConfiguration;->mOutputStreamConfigurations:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
