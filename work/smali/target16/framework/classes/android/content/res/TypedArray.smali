.class public Landroid/content/res/TypedArray;
.super Ljava/lang/Object;
.source "TypedArray.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field static final greylist-max-o STYLE_ASSET_COOKIE:I = 0x2

.field static final greylist-max-o STYLE_CHANGING_CONFIGURATIONS:I = 0x4

.field static final greylist-max-o STYLE_DATA:I = 0x1

.field static final greylist-max-o STYLE_DENSITY:I = 0x5

.field static final greylist-max-o STYLE_NUM_ENTRIES:I = 0x7

.field static final greylist-max-o STYLE_RESOURCE_ID:I = 0x3

.field static final blacklist STYLE_SOURCE_RESOURCE_ID:I = 0x6

.field static final greylist-max-o STYLE_TYPE:I


# instance fields
.field private greylist-max-r mAssets:Landroid/content/res/AssetManager;

.field greylist mData:[I

.field greylist-max-o mDataAddress:J

.field greylist mIndices:[I

.field greylist-max-o mIndicesAddress:J

.field greylist mLength:I

.field private greylist-max-r mMetrics:Landroid/util/DisplayMetrics;

.field private greylist-max-r mRecycled:Z

.field private final greylist mResources:Landroid/content/res/Resources;

.field greylist-max-r mTheme:Landroid/content/res/Resources$Theme;

.field greylist mValue:Landroid/util/TypedValue;

.field greylist mXml:Landroid/content/res/XmlBlock$Parser;


# direct methods
.method protected constructor greylist-max-o <init>(Landroid/content/res/Resources;)V
    .registers 3

    .line 1415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 1416
    iput-object p1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    .line 1417
    iget-object p1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    .line 1418
    iget-object p1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iput-object p1, p0, Landroid/content/res/TypedArray;->mAssets:Landroid/content/res/AssetManager;

    .line 1419
    return-void
.end method

.method private greylist getValueAt(ILandroid/util/TypedValue;)Z
    .registers 6

    .line 1379
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 1380
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    .line 1381
    if-nez v1, :cond_a

    .line 1382
    const/4 p1, 0x0

    return p1

    .line 1384
    :cond_a
    iput v1, p2, Landroid/util/TypedValue;->type:I

    .line 1385
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->data:I

    .line 1386
    add-int/lit8 v2, p1, 0x2

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->assetCookie:I

    .line 1387
    add-int/lit8 v2, p1, 0x3

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->resourceId:I

    .line 1388
    add-int/lit8 v2, p1, 0x4

    aget v2, v0, v2

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    move-result v2

    iput v2, p2, Landroid/util/TypedValue;->changingConfigurations:I

    .line 1390
    add-int/lit8 v2, p1, 0x5

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->density:I

    .line 1391
    const/4 v2, 0x3

    if-ne v1, v2, :cond_36

    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_37

    :cond_36
    const/4 v1, 0x0

    :goto_37
    iput-object v1, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 1392
    add-int/lit8 p1, p1, 0x6

    aget p1, v0, p1

    iput p1, p2, Landroid/util/TypedValue;->sourceResourceId:I

    .line 1393
    const/4 p1, 0x1

    return p1
.end method

.method private greylist-max-o loadStringValueAt(I)Ljava/lang/CharSequence;
    .registers 6

    .line 1398
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 1399
    add-int/lit8 v1, p1, 0x2

    aget v1, v0, v1

    .line 1400
    nop

    .line 1401
    if-gez v1, :cond_1a

    .line 1402
    iget-object v1, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    if-eqz v1, :cond_18

    .line 1403
    iget-object v1, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    add-int/lit8 v2, p1, 0x1

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/content/res/XmlBlock$Parser;->getPooledString(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_24

    .line 1402
    :cond_18
    const/4 v0, 0x0

    goto :goto_24

    .line 1406
    :cond_1a
    iget-object v2, p0, Landroid/content/res/TypedArray;->mAssets:Landroid/content/res/AssetManager;

    add-int/lit8 v3, p1, 0x1

    aget v0, v0, v3

    invoke-virtual {v2, v1, v0}, Landroid/content/res/AssetManager;->getPooledStringForCookie(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1408
    :goto_24
    if-eqz v0, :cond_3b

    iget-object v1, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    if-eqz v1, :cond_3b

    iget-object v1, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    iget-object v1, v1, Landroid/content/res/XmlBlock$Parser;->mValidator:Landroid/content/res/Validator;

    if-eqz v1, :cond_3b

    .line 1409
    iget-object v1, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    iget-object v1, v1, Landroid/content/res/XmlBlock$Parser;->mValidator:Landroid/content/res/Validator;

    iget-object v2, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    div-int/lit8 p1, p1, 0x7

    invoke-virtual {v1, v2, p1, v0}, Landroid/content/res/Validator;->validateResStrAttr(Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/CharSequence;)V

    .line 1411
    :cond_3b
    return-object v0
.end method

.method static greylist-max-o obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;
    .registers 4

    .line 54
    iget-object v0, p0, Landroid/content/res/Resources;->mTypedArrayPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/TypedArray;

    .line 55
    if-nez v0, :cond_f

    .line 56
    new-instance v0, Landroid/content/res/TypedArray;

    invoke-direct {v0, p0}, Landroid/content/res/TypedArray;-><init>(Landroid/content/res/Resources;)V

    .line 59
    :cond_f
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 62
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iput-object v1, v0, Landroid/content/res/TypedArray;->mAssets:Landroid/content/res/AssetManager;

    .line 63
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iput-object p0, v0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    .line 64
    invoke-direct {v0, p1}, Landroid/content/res/TypedArray;->resize(I)V

    .line 65
    return-object v0
.end method

.method private greylist-max-o resize(I)V
    .registers 8

    .line 141
    iput p1, p0, Landroid/content/res/TypedArray;->mLength:I

    .line 142
    mul-int/lit8 v0, p1, 0x7

    .line 143
    add-int/lit8 p1, p1, 0x1

    .line 144
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    .line 145
    iget-wide v2, p0, Landroid/content/res/TypedArray;->mDataAddress:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_17

    iget-object v2, p0, Landroid/content/res/TypedArray;->mData:[I

    array-length v2, v2

    if-ge v2, v0, :cond_3b

    .line 146
    :cond_17
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ldalvik/system/VMRuntime;->newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 147
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    invoke-virtual {v1, v0}, Ldalvik/system/VMRuntime;->addressOf(Ljava/lang/Object;)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/content/res/TypedArray;->mDataAddress:J

    .line 148
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0, p1}, Ldalvik/system/VMRuntime;->newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Landroid/content/res/TypedArray;->mIndices:[I

    .line 149
    iget-object p1, p0, Landroid/content/res/TypedArray;->mIndices:[I

    invoke-virtual {v1, p1}, Ldalvik/system/VMRuntime;->addressOf(Ljava/lang/Object;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/TypedArray;->mIndicesAddress:J

    .line 151
    :cond_3b
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 1

    .line 1280
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1281
    return-void
.end method

.method public greylist extractThemeAttrs()[I
    .registers 2

    .line 1298
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->extractThemeAttrs([I)[I

    move-result-object v0

    return-object v0
.end method

.method public greylist extractThemeAttrs([I)[I
    .registers 11

    .line 1307
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_38

    .line 1311
    nop

    .line 1313
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 1314
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 1315
    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    :goto_e
    if-ge v4, v1, :cond_37

    .line 1316
    mul-int/lit8 v5, v4, 0x7

    .line 1317
    add-int/lit8 v6, v5, 0x0

    aget v7, v0, v6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1a

    .line 1319
    goto :goto_34

    .line 1323
    :cond_1a
    aput v2, v0, v6

    .line 1325
    add-int/lit8 v5, v5, 0x1

    aget v5, v0, v5

    .line 1326
    if-nez v5, :cond_23

    .line 1328
    goto :goto_34

    .line 1332
    :cond_23
    if-nez v3, :cond_32

    .line 1333
    if-eqz p1, :cond_30

    array-length v3, p1

    if-ne v3, v1, :cond_30

    .line 1334
    nop

    .line 1335
    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([II)V

    move-object v3, p1

    goto :goto_32

    .line 1337
    :cond_30
    new-array v3, v1, [I

    .line 1341
    :cond_32
    :goto_32
    aput v5, v3, v4

    .line 1315
    :goto_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 1344
    :cond_37
    return-object v3

    .line 1308
    :cond_38
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Cannot make calls to a recycled instance!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getBoolean(IZ)Z
    .registers 6

    .line 385
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_51

    .line 389
    mul-int/lit8 p1, p1, 0x7

    .line 390
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 391
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    .line 392
    if-nez v1, :cond_f

    .line 393
    return p2

    .line 394
    :cond_f
    const/16 v2, 0x10

    if-lt v1, v2, :cond_20

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_20

    .line 396
    const/4 p2, 0x1

    add-int/2addr p1, p2

    aget p1, v0, p1

    if-eqz p1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 p2, 0x0

    :goto_1f
    return p2

    .line 399
    :cond_20
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 400
    invoke-direct {p0, p1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 401
    invoke-static {v0}, Landroid/os/StrictMode;->noteResourceMismatch(Ljava/lang/Object;)V

    .line 402
    invoke-virtual {v0}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/android/internal/util/XmlUtils;->convertValueToBoolean(Ljava/lang/CharSequence;Z)Z

    move-result p1

    return p1

    .line 406
    :cond_34
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getBoolean of bad type: 0x"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 386
    :cond_51
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Cannot make calls to a recycled instance!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getChangingConfigurations()I
    .registers 7

    .line 1357
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_25

    .line 1361
    nop

    .line 1363
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 1364
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 1365
    const/4 v2, 0x0

    move v3, v2

    :goto_d
    if-ge v2, v1, :cond_24

    .line 1366
    mul-int/lit8 v4, v2, 0x7

    .line 1367
    add-int/lit8 v5, v4, 0x0

    aget v5, v0, v5

    .line 1368
    if-nez v5, :cond_18

    .line 1369
    goto :goto_21

    .line 1371
    :cond_18
    add-int/lit8 v4, v4, 0x4

    aget v4, v0, v4

    invoke-static {v4}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    move-result v4

    or-int/2addr v3, v4

    .line 1365
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1374
    :cond_24
    return v3

    .line 1358
    :cond_25
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getColor(II)I
    .registers 7

    .line 510
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_a0

    .line 514
    nop

    .line 515
    mul-int/lit8 v0, p1, 0x7

    .line 517
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 518
    add-int/lit8 v2, v0, 0x0

    aget v2, v1, v2

    .line 519
    if-nez v2, :cond_10

    .line 520
    return p2

    .line 521
    :cond_10
    const/16 v3, 0x10

    if-lt v2, v3, :cond_1d

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_1d

    .line 523
    add-int/lit8 v0, v0, 0x1

    aget p1, v1, v0

    return p1

    .line 524
    :cond_1d
    const/4 v1, 0x3

    if-ne v2, v1, :cond_38

    .line 525
    iget-object p1, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 526
    invoke-direct {p0, v0, p1}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 527
    iget-object p2, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v0, p1, Landroid/util/TypedValue;->resourceId:I

    iget-object v1, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {p2, p1, v0, v1}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 529
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    return p1

    .line 531
    :cond_37
    return p2

    .line 532
    :cond_38
    const/4 p2, 0x2

    const-string v1, ", theme="

    if-ne v2, p2, :cond_6f

    .line 533
    iget-object p2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 534
    invoke-direct {p0, v0, p2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 535
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resolve attribute at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 540
    :cond_6f
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t convert value at index "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " to color: type=0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 541
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 511
    :cond_a0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Cannot make calls to a recycled instance!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getColorStateList(I)Landroid/content/res/ColorStateList;
    .registers 6

    .line 599
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_4f

    .line 603
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 604
    mul-int/lit8 v1, p1, 0x7

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 605
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1e

    .line 610
    iget-object p1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    iget-object v2, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    .line 606
    :cond_1e
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resolve attribute at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", theme="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 612
    :cond_4d
    const/4 p1, 0x0

    return-object p1

    .line 600
    :cond_4f
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Cannot make calls to a recycled instance!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o getComplexColor(I)Landroid/content/res/ComplexColor;
    .registers 6

    .line 563
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_4f

    .line 567
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 568
    mul-int/lit8 v1, p1, 0x7

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 569
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1e

    .line 574
    iget-object p1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    iget-object v2, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/res/Resources;->loadComplexColor(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;

    move-result-object p1

    return-object p1

    .line 570
    :cond_1e
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resolve attribute at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", theme="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 576
    :cond_4d
    const/4 p1, 0x0

    return-object p1

    .line 564
    :cond_4f
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Cannot make calls to a recycled instance!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getDimension(IF)F
    .registers 7

    .line 680
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_86

    .line 684
    nop

    .line 685
    mul-int/lit8 v0, p1, 0x7

    .line 687
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 688
    add-int/lit8 v2, v0, 0x0

    aget v2, v1, v2

    .line 689
    if-nez v2, :cond_10

    .line 690
    return p2

    .line 691
    :cond_10
    const/4 p2, 0x5

    if-ne v2, p2, :cond_1e

    .line 692
    add-int/lit8 v0, v0, 0x1

    aget p1, v1, v0

    iget-object p2, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {p1, p2}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result p1

    return p1

    .line 693
    :cond_1e
    const/4 p2, 0x2

    const-string v1, ", theme="

    if-ne v2, p2, :cond_55

    .line 694
    iget-object p2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 695
    invoke-direct {p0, v0, p2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 696
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resolve attribute at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 701
    :cond_55
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t convert value at index "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " to dimension: type=0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 702
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 681
    :cond_86
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Cannot make calls to a recycled instance!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getDimensionPixelOffset(II)I
    .registers 7

    .line 729
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_86

    .line 733
    nop

    .line 734
    mul-int/lit8 v0, p1, 0x7

    .line 736
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 737
    add-int/lit8 v2, v0, 0x0

    aget v2, v1, v2

    .line 738
    if-nez v2, :cond_10

    .line 739
    return p2

    .line 740
    :cond_10
    const/4 p2, 0x5

    if-ne v2, p2, :cond_1e

    .line 741
    add-int/lit8 v0, v0, 0x1

    aget p1, v1, v0

    iget-object p2, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {p1, p2}, Landroid/util/TypedValue;->complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I

    move-result p1

    return p1

    .line 742
    :cond_1e
    const/4 p2, 0x2

    const-string v1, ", theme="

    if-ne v2, p2, :cond_55

    .line 743
    iget-object p2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 744
    invoke-direct {p0, v0, p2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 745
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resolve attribute at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 750
    :cond_55
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t convert value at index "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " to dimension: type=0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 751
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 730
    :cond_86
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Cannot make calls to a recycled instance!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getDimensionPixelSize(II)I
    .registers 7

    .line 779
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_86

    .line 783
    nop

    .line 784
    mul-int/lit8 v0, p1, 0x7

    .line 786
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 787
    add-int/lit8 v2, v0, 0x0

    aget v2, v1, v2

    .line 788
    if-nez v2, :cond_10

    .line 789
    return p2

    .line 790
    :cond_10
    const/4 p2, 0x5

    if-ne v2, p2, :cond_1e

    .line 791
    add-int/lit8 v0, v0, 0x1

    aget p1, v1, v0

    iget-object p2, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {p1, p2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p1

    return p1

    .line 792
    :cond_1e
    const/4 p2, 0x2

    const-string v1, ", theme="

    if-ne v2, p2, :cond_55

    .line 793
    iget-object p2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 794
    invoke-direct {p0, v0, p2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 795
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resolve attribute at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 800
    :cond_55
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t convert value at index "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " to dimension: type=0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 801
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 780
    :cond_86
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Cannot make calls to a recycled instance!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 997
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 1006
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_59

    .line 1010
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 1011
    mul-int/lit8 v1, p1, 0x7

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 1012
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_28

    .line 1018
    if-lez p2, :cond_1d

    .line 1021
    iget-object p1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    const/4 v2, 0x1

    invoke-virtual {p1, v1, p2, v0, v2}, Landroid/content/res/Resources;->getValueForDensity(IILandroid/util/TypedValue;Z)V

    .line 1023
    :cond_1d
    iget-object p1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    iget-object v2, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 1013
    :cond_28
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to resolve attribute at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", theme="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1025
    :cond_57
    const/4 p1, 0x0

    return-object p1

    .line 1007
    :cond_59
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Cannot make calls to a recycled instance!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getFloat(IF)F
    .registers 5

    .line 461
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_60

    .line 465
    mul-int/lit8 p1, p1, 0x7

    .line 466
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 467
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    .line 468
    if-nez v1, :cond_f

    .line 469
    return p2

    .line 470
    :cond_f
    const/4 p2, 0x4

    if-ne v1, p2, :cond_1b

    .line 471
    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1

    .line 472
    :cond_1b
    const/16 p2, 0x10

    if-lt v1, p2, :cond_29

    const/16 p2, 0x1f

    if-gt v1, p2, :cond_29

    .line 474
    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    int-to-float p1, p1

    return p1

    .line 477
    :cond_29
    iget-object p2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 478
    invoke-direct {p0, p1, p2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result p1

    if-eqz p1, :cond_43

    .line 479
    invoke-virtual {p2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object p1

    .line 480
    if-eqz p1, :cond_43

    .line 481
    invoke-static {p2}, Landroid/os/StrictMode;->noteResourceMismatch(Ljava/lang/Object;)V

    .line 482
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    return p1

    .line 487
    :cond_43
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getFloat of bad type: 0x"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 462
    :cond_60
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Cannot make calls to a recycled instance!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getFont(I)Landroid/graphics/Typeface;
    .registers 6

    .line 1043
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_4d

    .line 1047
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 1048
    mul-int/lit8 v1, p1, 0x7

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 1049
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1c

    .line 1054
    iget-object p1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getFont(Landroid/util/TypedValue;I)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1

    .line 1050
    :cond_1c
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resolve attribute at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", theme="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1056
    :cond_4b
    const/4 p1, 0x0

    return-object p1

    .line 1044
    :cond_4d
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Cannot make calls to a recycled instance!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getFraction(IIIF)F
    .registers 8

    .line 900
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_86

    .line 904
    nop

    .line 905
    mul-int/lit8 v0, p1, 0x7

    .line 907
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 908
    add-int/lit8 v2, v0, 0x0

    aget v2, v1, v2

    .line 909
    if-nez v2, :cond_10

    .line 910
    return p4

    .line 911
    :cond_10
    const/4 p4, 0x6

    if-ne v2, p4, :cond_1e

    .line 912
    add-int/lit8 v0, v0, 0x1

    aget p1, v1, v0

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-static {p1, p2, p3}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result p1

    return p1

    .line 913
    :cond_1e
    const/4 p2, 0x2

    const-string p3, ", theme="

    if-ne v2, p2, :cond_55

    .line 914
    iget-object p2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 915
    invoke-direct {p0, v0, p2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 916
    new-instance p4, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to resolve attribute at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p4

    .line 921
    :cond_55
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t convert value at index "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, " to fraction: type=0x"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 922
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 901
    :cond_86
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Cannot make calls to a recycled instance!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getIndex(I)I
    .registers 3

    .line 192
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_b

    .line 196
    iget-object v0, p0, Landroid/content/res/TypedArray;->mIndices:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1

    .line 193
    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Cannot make calls to a recycled instance!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getIndexCount()I
    .registers 3

    .line 173
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_a

    .line 177
    iget-object v0, p0, Landroid/content/res/TypedArray;->mIndices:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    .line 174
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getInt(II)I
    .registers 6

    .line 424
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_4d

    .line 428
    mul-int/lit8 p1, p1, 0x7

    .line 429
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 430
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    .line 431
    if-nez v1, :cond_f

    .line 432
    return p2

    .line 433
    :cond_f
    const/16 v2, 0x10

    if-lt v1, v2, :cond_1c

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_1c

    .line 435
    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1

    .line 438
    :cond_1c
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 439
    invoke-direct {p0, p1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 440
    invoke-static {v0}, Landroid/os/StrictMode;->noteResourceMismatch(Ljava/lang/Object;)V

    .line 441
    invoke-virtual {v0}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/android/internal/util/XmlUtils;->convertValueToInt(Ljava/lang/CharSequence;I)I

    move-result p1

    return p1

    .line 445
    :cond_30
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getInt of bad type: 0x"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 425
    :cond_4d
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Cannot make calls to a recycled instance!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getInteger(II)I
    .registers 7

    .line 631
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_85

    .line 635
    nop

    .line 636
    mul-int/lit8 v0, p1, 0x7

    .line 638
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 639
    add-int/lit8 v2, v0, 0x0

    aget v2, v1, v2

    .line 640
    if-nez v2, :cond_10

    .line 641
    return p2

    .line 642
    :cond_10
    const/16 p2, 0x10

    if-lt v2, p2, :cond_1d

    const/16 p2, 0x1f

    if-gt v2, p2, :cond_1d

    .line 644
    add-int/lit8 v0, v0, 0x1

    aget p1, v1, v0

    return p1

    .line 645
    :cond_1d
    const/4 p2, 0x2

    const-string v1, ", theme="

    if-ne v2, p2, :cond_54

    .line 646
    iget-object p2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 647
    invoke-direct {p0, v0, p2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 648
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resolve attribute at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 653
    :cond_54
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t convert value at index "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " to integer: type=0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 654
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 632
    :cond_85
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Cannot make calls to a recycled instance!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getLayoutDimension(II)I
    .registers 6

    .line 864
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_28

    .line 868
    mul-int/lit8 p1, p1, 0x7

    .line 869
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 870
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    .line 871
    const/16 v2, 0x10

    if-lt v1, v2, :cond_19

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_19

    .line 873
    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1

    .line 874
    :cond_19
    const/4 v2, 0x5

    if-ne v1, v2, :cond_27

    .line 875
    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    iget-object p2, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {p1, p2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p1

    return p1

    .line 878
    :cond_27
    return p2

    .line 865
    :cond_28
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Cannot make calls to a recycled instance!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getLayoutDimension(ILjava/lang/String;)I
    .registers 7

    .line 823
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_8c

    .line 827
    nop

    .line 828
    mul-int/lit8 v0, p1, 0x7

    .line 830
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 831
    add-int/lit8 v2, v0, 0x0

    aget v2, v1, v2

    .line 832
    const/16 v3, 0x10

    if-lt v2, v3, :cond_1a

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_1a

    .line 834
    add-int/lit8 v0, v0, 0x1

    aget p1, v1, v0

    return p1

    .line 835
    :cond_1a
    const/4 v3, 0x5

    if-ne v2, v3, :cond_28

    .line 836
    add-int/lit8 v0, v0, 0x1

    aget p1, v1, v0

    iget-object p2, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {p1, p2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p1

    return p1

    .line 837
    :cond_28
    const/4 v1, 0x2

    if-ne v2, v1, :cond_5f

    .line 838
    iget-object p2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 839
    invoke-direct {p0, v0, p2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 840
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to resolve attribute at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", theme="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 845
    :cond_5f
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": You must supply a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " attribute., theme="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 824
    :cond_8c
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Cannot make calls to a recycled instance!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist getNonConfigurationString(II)Ljava/lang/String;
    .registers 6

    .line 338
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_59

    .line 342
    mul-int/lit8 p1, p1, 0x7

    .line 343
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 344
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    .line 345
    add-int/lit8 v2, p1, 0x4

    aget v0, v0, v2

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    move-result v0

    .line 347
    not-int p2, p2

    and-int/2addr p2, v0

    const/4 v0, 0x0

    if-eqz p2, :cond_1a

    .line 348
    return-object v0

    .line 350
    :cond_1a
    if-nez v1, :cond_1d

    .line 351
    return-object v0

    .line 352
    :cond_1d
    const/4 p2, 0x3

    if-ne v1, p2, :cond_29

    .line 353
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 356
    :cond_29
    iget-object p2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 357
    invoke-direct {p0, p1, p2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 358
    invoke-virtual {p2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object p1

    .line 359
    if-eqz p1, :cond_3b

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3b
    return-object v0

    .line 363
    :cond_3c
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getNonConfigurationString of bad type: 0x"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 364
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 339
    :cond_59
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Cannot make calls to a recycled instance!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getNonResourceString(I)Ljava/lang/String;
    .registers 5

    .line 302
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_3b

    .line 306
    mul-int/lit8 p1, p1, 0x7

    .line 307
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 308
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    .line 309
    const/4 v2, 0x3

    if-ne v1, v2, :cond_39

    .line 310
    add-int/lit8 v1, p1, 0x2

    aget v1, v0, v1

    .line 311
    if-gez v1, :cond_39

    .line 312
    iget-object v1, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    add-int/lit8 v2, p1, 0x1

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/content/res/XmlBlock$Parser;->getPooledString(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    if-eqz v0, :cond_38

    iget-object v1, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    if-eqz v1, :cond_38

    iget-object v1, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    iget-object v1, v1, Landroid/content/res/XmlBlock$Parser;->mValidator:Landroid/content/res/Validator;

    if-eqz v1, :cond_38

    .line 314
    iget-object v1, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    iget-object v1, v1, Landroid/content/res/XmlBlock$Parser;->mValidator:Landroid/content/res/Validator;

    iget-object v2, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    invoke-virtual {v1, v2, p1, v0}, Landroid/content/res/Validator;->validateResStrAttr(Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/CharSequence;)V

    .line 316
    :cond_38
    return-object v0

    .line 319
    :cond_39
    const/4 p1, 0x0

    return-object p1

    .line 303
    :cond_3b
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Cannot make calls to a recycled instance!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getPositionDescription()Ljava/lang/String;
    .registers 3

    .line 1244
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_12

    .line 1248
    iget-object v0, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    invoke-virtual {v0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_f
    const-string v0, "<internal>"

    :goto_11
    return-object v0

    .line 1245
    :cond_12
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getResourceId(II)I
    .registers 5

    .line 942
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_16

    .line 946
    mul-int/lit8 p1, p1, 0x7

    .line 947
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 948
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    if-eqz v1, :cond_15

    .line 949
    add-int/lit8 p1, p1, 0x3

    aget p1, v0, p1

    .line 950
    if-eqz p1, :cond_15

    .line 951
    return p1

    .line 954
    :cond_15
    return p2

    .line 943
    :cond_16
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Cannot make calls to a recycled instance!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getResources()Landroid/content/res/Resources;
    .registers 3

    .line 205
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_7

    .line 209
    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    return-object v0

    .line 206
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSourceResourceId(II)I
    .registers 4

    .line 1157
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_10

    .line 1161
    mul-int/lit8 p1, p1, 0x7

    .line 1162
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 p1, p1, 0x6

    aget p1, v0, p1

    .line 1163
    if-eqz p1, :cond_f

    .line 1164
    return p1

    .line 1166
    :cond_f
    return p2

    .line 1158
    :cond_10
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Cannot make calls to a recycled instance!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getString(I)Ljava/lang/String;
    .registers 5

    .line 263
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_4c

    .line 267
    mul-int/lit8 p1, p1, 0x7

    .line 268
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 269
    add-int/lit8 v1, p1, 0x0

    aget v0, v0, v1

    .line 270
    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 271
    return-object v1

    .line 272
    :cond_10
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1c

    .line 273
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 276
    :cond_1c
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 277
    invoke-direct {p0, p1, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 278
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object p1

    .line 279
    if-eqz p1, :cond_2e

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2e
    return-object v1

    .line 283
    :cond_2f
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getString of bad type: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 264
    :cond_4c
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Cannot make calls to a recycled instance!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getText(I)Ljava/lang/CharSequence;
    .registers 5

    .line 226
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_42

    .line 230
    mul-int/lit8 p1, p1, 0x7

    .line 231
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 232
    add-int/lit8 v1, p1, 0x0

    aget v0, v0, v1

    .line 233
    if-nez v0, :cond_10

    .line 234
    const/4 p1, 0x0

    return-object p1

    .line 235
    :cond_10
    const/4 v1, 0x3

    if-ne v0, v1, :cond_18

    .line 236
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 239
    :cond_18
    iget-object v1, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 240
    invoke-direct {p0, p1, v1}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 241
    invoke-virtual {v1}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 245
    :cond_25
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getText of bad type: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 227
    :cond_42
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Cannot make calls to a recycled instance!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getTextArray(I)[Ljava/lang/CharSequence;
    .registers 3

    .line 1075
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_19

    .line 1079
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 1080
    mul-int/lit8 p1, p1, 0x7

    invoke-direct {p0, p1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 1081
    iget-object p1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 1083
    :cond_17
    const/4 p1, 0x0

    return-object p1

    .line 1076
    :cond_19
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Cannot make calls to a recycled instance!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o getThemeAttributeId(II)I
    .registers 6

    .line 970
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_15

    .line 974
    mul-int/lit8 p1, p1, 0x7

    .line 975
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 976
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_14

    .line 977
    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1

    .line 979
    :cond_14
    return p2

    .line 971
    :cond_15
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Cannot make calls to a recycled instance!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getType(I)I
    .registers 3

    .line 1113
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_d

    .line 1117
    mul-int/lit8 p1, p1, 0x7

    .line 1118
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 p1, p1, 0x0

    aget p1, v0, p1

    return p1

    .line 1114
    :cond_d
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Cannot make calls to a recycled instance!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getValue(ILandroid/util/TypedValue;)Z
    .registers 4

    .line 1097
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_b

    .line 1101
    mul-int/lit8 p1, p1, 0x7

    invoke-direct {p0, p1, p2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result p1

    return p1

    .line 1098
    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Cannot make calls to a recycled instance!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist hasValue(I)Z
    .registers 4

    .line 1181
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_10

    .line 1185
    mul-int/lit8 p1, p1, 0x7

    .line 1186
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 1187
    const/4 v1, 0x0

    add-int/2addr p1, v1

    aget p1, v0, p1

    .line 1188
    if-eqz p1, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1

    .line 1182
    :cond_10
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Cannot make calls to a recycled instance!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist hasValueOrEmpty(I)Z
    .registers 5

    .line 1202
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_17

    .line 1206
    mul-int/lit8 p1, p1, 0x7

    .line 1207
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 1208
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    .line 1209
    const/4 v2, 0x1

    if-nez v1, :cond_16

    add-int/2addr p1, v2

    aget p1, v0, p1

    if-ne p1, v2, :cond_15

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :cond_16
    :goto_16
    return v2

    .line 1203
    :cond_17
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Cannot make calls to a recycled instance!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist length()I
    .registers 3

    .line 159
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_7

    .line 163
    iget v0, p0, Landroid/content/res/TypedArray;->mLength:I

    return v0

    .line 160
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist peekValue(I)Landroid/util/TypedValue;
    .registers 3

    .line 1226
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_11

    .line 1230
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 1231
    mul-int/lit8 p1, p1, 0x7

    invoke-direct {p0, p1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 1232
    return-object v0

    .line 1234
    :cond_f
    const/4 p1, 0x0

    return-object p1

    .line 1227
    :cond_11
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Cannot make calls to a recycled instance!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist recycle()V
    .registers 4

    .line 1258
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_16

    .line 1262
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 1265
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 1266
    iput-object v0, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    .line 1267
    iput-object v0, p0, Landroid/content/res/TypedArray;->mAssets:Landroid/content/res/AssetManager;

    .line 1269
    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v0, v0, Landroid/content/res/Resources;->mTypedArrayPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 1270
    return-void

    .line 1259
    :cond_16
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " recycled twice!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 1423
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
