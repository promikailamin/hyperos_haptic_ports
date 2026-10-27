.class public Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;
.super Lcom/android/internal/widget/remotecompose/core/RemoteContext;
.source "AndroidRemoteContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;
    }
.end annotation


# static fields
.field private static final blacklist CHECK_DATA_SIZE:Z = true


# instance fields
.field private blacklist mA11yAnimationEnabled:Z

.field blacklist mVarNameHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 56
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/SystemClock;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/SystemClock;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;-><init>(Ljava/time/Clock;)V

    .line 57
    return-void
.end method

.method public constructor blacklist <init>(Ljava/time/Clock;)V
    .registers 2

    .line 65
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;-><init>(Ljava/time/Clock;)V

    .line 52
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mA11yAnimationEnabled:Z

    .line 115
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    .line 66
    return-void
.end method

.method private blacklist decodePreferringAlpha8([B)Landroid/graphics/Bitmap;
    .registers 5

    .line 344
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 345
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 346
    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public blacklist addClickArea(IIFFFFI)V
    .registers 16

    .line 542
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    .line 543
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p2, p7}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object p2

    move-object v7, p2

    check-cast v7, Ljava/lang/String;

    .line 544
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->addClickArea(ILjava/lang/String;FFFFLjava/lang/String;)V

    .line 545
    return-void
.end method

.method public blacklist addCollection(ILcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;)V
    .registers 4

    .line 216
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->addCollection(ILcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;)V

    .line 217
    return-void
.end method

.method public blacklist addTouchListener(Lcom/android/internal/widget/remotecompose/core/TouchListener;)V
    .registers 3

    .line 526
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->addTouchListener(Lcom/android/internal/widget/remotecompose/core/TouchListener;)V

    .line 527
    return-void
.end method

.method public blacklist clearDataOverride(I)V
    .registers 3

    .line 394
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->clearDataOverride(I)V

    .line 395
    return-void
.end method

.method public blacklist clearFloatOverride(I)V
    .registers 3

    .line 412
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->clearFloatOverride(I)V

    .line 413
    return-void
.end method

.method public blacklist clearIntegerOverride(I)V
    .registers 3

    .line 403
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->clearIntegerOverride(I)V

    .line 404
    return-void
.end method

.method public blacklist clearNamedDataOverride(Ljava/lang/String;)V
    .registers 4

    .line 193
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 194
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;

    iget v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;->mId:I

    .line 195
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->clearDataOverride(I)V

    .line 197
    :cond_15
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    return-void
.end method

.method public blacklist clearNamedFloatOverride(Ljava/lang/String;)V
    .registers 4

    .line 166
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 167
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;

    iget v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;->mId:I

    .line 168
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->clearFloatOverride(I)V

    .line 170
    :cond_15
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    return-void
.end method

.method public blacklist clearNamedIntegerOverride(Ljava/lang/String;)V
    .registers 4

    .line 149
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 150
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;

    iget v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;->mId:I

    .line 151
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->clearIntegerOverride(I)V

    .line 153
    :cond_15
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    return-void
.end method

.method public blacklist clearNamedStringOverride(Ljava/lang/String;)V
    .registers 4

    .line 132
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 133
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;

    iget v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;->mId:I

    .line 134
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->clearDataOverride(I)V

    .line 136
    :cond_15
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    return-void
.end method

.method public blacklist getColor(I)I
    .registers 3

    .line 500
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getColor(I)I

    move-result p1

    return p1
.end method

.method public blacklist getDataMap(I)Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;
    .registers 3

    .line 226
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getDataMap(I)Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getFloat(I)F
    .registers 3

    .line 475
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFloat(I)F

    move-result p1

    return p1
.end method

.method public blacklist getInteger(I)I
    .registers 3

    .line 490
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getInteger(I)I

    move-result p1

    return p1
.end method

.method public blacklist getListeners(I)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/VariableSupport;",
            ">;"
        }
    .end annotation

    .line 510
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getListeners(I)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getLong(I)J
    .registers 4

    .line 495
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getObject(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getObject(I)Ljava/lang/Object;
    .registers 3

    .line 485
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getObject(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getPathData(I)[F
    .registers 3

    .line 100
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getPathData(I)[F

    move-result-object p1

    return-object p1
.end method

.method public blacklist getShader(I)Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;
    .registers 3

    .line 521
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;

    return-object p1
.end method

.method public blacklist getText(I)Ljava/lang/String;
    .registers 3

    .line 417
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public blacklist hapticEffect(I)V
    .registers 3

    .line 554
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->haptic(I)V

    .line 555
    return-void
.end method

.method public blacklist isAnimationEnabled()Z
    .registers 2

    .line 568
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mA11yAnimationEnabled:Z

    if-eqz v0, :cond_9

    .line 569
    invoke-super {p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->isAnimationEnabled()Z

    move-result v0

    return v0

    .line 571
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V
    .registers 4

    .line 505
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->listenToVar(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 506
    return-void
.end method

.method public blacklist loadAnimatedFloat(ILcom/android/internal/widget/remotecompose/core/operations/FloatExpression;)V
    .registers 4

    .line 465
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(ILjava/lang/Object;)V

    .line 466
    return-void
.end method

.method public blacklist loadBitmap(ISSII[B)V
    .registers 16

    .line 255
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->containsId(I)Z

    move-result v0

    if-nez v0, :cond_143

    .line 256
    nop

    .line 257
    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_144

    goto/16 :goto_13e

    .line 337
    :pswitch_f
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p5, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_13e

    .line 325
    :pswitch_17
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p6}, Ljava/lang/String;-><init>([B)V

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 326
    goto/16 :goto_13e

    .line 329
    :pswitch_22
    :try_start_22
    new-instance p2, Ljava/net/URL;

    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p6}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p2, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_34
    .catch Ljava/net/MalformedURLException; {:try_start_22 .. :try_end_34} :catch_3e
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_34} :catch_36

    .line 334
    goto/16 :goto_13e

    .line 332
    :catch_36
    move-exception v0

    move-object p1, v0

    .line 333
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 330
    :catch_3e
    move-exception v0

    move-object p1, v0

    .line 331
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 259
    :pswitch_46
    const/4 p2, 0x0

    packed-switch p3, :pswitch_data_150

    :pswitch_4a
    goto/16 :goto_13d

    .line 280
    :pswitch_4c
    invoke-direct {p0, p6}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->decodePreferringAlpha8([B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p2

    sget-object p3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p2, p3}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_13d

    .line 284
    nop

    .line 286
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    .line 287
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    sget-object p4, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 285
    invoke-static {p2, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 289
    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 290
    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4}, Landroid/graphics/Paint;-><init>()V

    .line 291
    new-instance p5, Landroid/graphics/PorterDuffXfermode;

    sget-object p6, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p5, p6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 294
    const/4 p5, 0x0

    invoke-virtual {p3, v0, p5, p5, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 295
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 297
    nop

    .line 298
    move-object v0, p2

    goto/16 :goto_13d

    .line 301
    :pswitch_8a
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p5, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 302
    array-length p3, p6

    div-int/lit8 p3, p3, 0x4

    new-array v1, p3, [I

    .line 303
    nop

    :goto_96
    if-ge p2, p3, :cond_b6

    .line 304
    mul-int/lit8 v2, p2, 0x4

    .line 305
    aget-byte v3, p6, v2

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p6, v4

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, p6, v4

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x3

    aget-byte v2, p6, v2

    or-int/2addr v2, v3

    aput v2, v1, p2

    .line 303
    add-int/lit8 p2, p2, 0x1

    goto :goto_96

    .line 311
    :cond_b6
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v6, p4

    move v3, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 312
    goto/16 :goto_13d

    .line 314
    :pswitch_c1
    move v3, p4

    move v7, p5

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 315
    array-length p3, p6

    div-int/lit8 p3, p3, 0x4

    new-array v2, p3, [I

    .line 316
    nop

    :goto_cf
    if-ge p2, p3, :cond_dc

    .line 318
    const p4, 0x1010101

    aget-byte p5, p6, p2

    mul-int/2addr p5, p4

    aput p5, v2, p2

    .line 316
    add-int/lit8 p2, p2, 0x1

    goto :goto_cf

    .line 320
    :cond_dc
    const/4 v5, 0x0

    const/4 v6, 0x0

    move v4, v3

    const/4 v3, 0x0

    move v8, v7

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    move-object v0, v1

    goto :goto_13d

    .line 262
    :pswitch_e7
    move v3, p4

    move v7, p5

    new-instance p3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 263
    const/4 p4, 0x1

    iput-boolean p4, p3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 264
    array-length p4, p6

    invoke-static {p6, p2, p4, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 265
    iget p4, p3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt p4, v3, :cond_103

    iget p4, p3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt p4, v7, :cond_103

    .line 277
    array-length p3, p6

    invoke-static {p6, p2, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 278
    goto :goto_13d

    .line 266
    :cond_103
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "dimension don\'t match "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p4, p3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string/jumbo p4, "x"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " vs "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 323
    :cond_13d
    :goto_13d
    nop

    .line 339
    :goto_13e
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(ILjava/lang/Object;)V

    .line 341
    :cond_143
    return-void

    :pswitch_data_144
    .packed-switch 0x0
        :pswitch_46
        :pswitch_22
        :pswitch_17
        :pswitch_f
    .end packed-switch

    :pswitch_data_150
    .packed-switch 0x0
        :pswitch_e7
        :pswitch_4a
        :pswitch_c1
        :pswitch_8a
        :pswitch_4c
    .end packed-switch
.end method

.method public blacklist loadColor(II)V
    .registers 4

    .line 460
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateColor(II)V

    .line 461
    return-void
.end method

.method public blacklist loadFloat(IF)V
    .registers 4

    .line 422
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateFloat(IF)V

    .line 423
    return-void
.end method

.method public blacklist loadInteger(II)V
    .registers 4

    .line 432
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateInteger(II)V

    .line 433
    return-void
.end method

.method public blacklist loadPathData(II[F)V
    .registers 5

    .line 94
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p3}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->putPathData(I[F)V

    .line 95
    iget-object p3, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p3, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->putPathWinding(II)V

    .line 96
    return-void
.end method

.method public blacklist loadShader(ILcom/android/internal/widget/remotecompose/core/operations/ShaderData;)V
    .registers 4

    .line 470
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(ILjava/lang/Object;)V

    .line 471
    return-void
.end method

.method public blacklist loadText(ILjava/lang/String;)V
    .registers 4

    .line 351
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->containsId(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 352
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(ILjava/lang/Object;)V

    goto :goto_13

    .line 354
    :cond_e
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateData(ILjava/lang/Object;)V

    .line 356
    :goto_13
    return-void
.end method

.method public blacklist loadVariableName(Ljava/lang/String;II)V
    .registers 6

    .line 119
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    return-void
.end method

.method public blacklist overrideData(ILjava/lang/Object;)V
    .registers 4

    .line 385
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->overrideData(ILjava/lang/Object;)V

    .line 386
    return-void
.end method

.method public blacklist overrideFloat(IF)V
    .registers 4

    .line 427
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->overrideFloat(IF)V

    .line 428
    return-void
.end method

.method public blacklist overrideInt(II)V
    .registers 4

    .line 375
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->overrideInteger(II)V

    .line 376
    return-void
.end method

.method public blacklist overrideInteger(II)V
    .registers 4

    .line 443
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->overrideInteger(II)V

    .line 444
    return-void
.end method

.method public blacklist overrideText(II)V
    .registers 3

    .line 454
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->getText(I)Ljava/lang/String;

    move-result-object p2

    .line 455
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->overrideText(ILjava/lang/String;)V

    .line 456
    return-void
.end method

.method public blacklist overrideText(ILjava/lang/String;)V
    .registers 4

    .line 365
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->overrideData(ILjava/lang/Object;)V

    .line 366
    return-void
.end method

.method public blacklist putDataMap(ILcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;)V
    .registers 4

    .line 221
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->putDataMap(ILcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;)V

    .line 222
    return-void
.end method

.method public blacklist putObject(ILjava/lang/Object;)V
    .registers 4

    .line 480
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateObject(ILjava/lang/Object;)V

    .line 481
    return-void
.end method

.method public blacklist runAction(ILjava/lang/String;)V
    .registers 4

    .line 231
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->performClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;ILjava/lang/String;)V

    .line 232
    return-void
.end method

.method public blacklist runNamedAction(ILjava/lang/Object;)V
    .registers 4

    .line 236
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->getText(I)Ljava/lang/String;

    move-result-object p1

    .line 237
    if-eqz p1, :cond_b

    .line 238
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->runNamedAction(Ljava/lang/String;Ljava/lang/Object;)V

    .line 240
    :cond_b
    return-void
.end method

.method public blacklist setAccessibilityAnimationEnabled(Z)V
    .registers 2

    .line 563
    iput-boolean p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mA11yAnimationEnabled:Z

    .line 564
    return-void
.end method

.method public blacklist setNamedColorOverride(Ljava/lang/String;I)V
    .registers 4

    .line 208
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 209
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;

    iget p1, p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;->mId:I

    .line 210
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->overrideColor(II)V

    .line 212
    :cond_17
    return-void
.end method

.method public blacklist setNamedDataOverride(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 185
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 186
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;

    iget p1, p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;->mId:I

    .line 187
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->overrideData(ILjava/lang/Object;)V

    .line 189
    :cond_15
    return-void
.end method

.method public blacklist setNamedFloatOverride(Ljava/lang/String;F)V
    .registers 4

    .line 158
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 159
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;

    iget p1, p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;->mId:I

    .line 160
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->overrideFloat(IF)V

    .line 162
    :cond_15
    return-void
.end method

.method public blacklist setNamedIntegerOverride(Ljava/lang/String;I)V
    .registers 4

    .line 141
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 142
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;

    iget p1, p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;->mId:I

    .line 143
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->overrideInt(II)V

    .line 145
    :cond_15
    return-void
.end method

.method public blacklist setNamedLong(Ljava/lang/String;J)V
    .registers 5

    .line 175
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;

    .line 176
    if-eqz p1, :cond_17

    .line 177
    iget p1, p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;->mId:I

    .line 178
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getObject(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;

    .line 179
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;->setValue(J)V

    .line 181
    :cond_17
    return-void
.end method

.method public blacklist setNamedStringOverride(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 124
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 125
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;

    iget p1, p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;->mId:I

    .line 126
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->overrideText(ILjava/lang/String;)V

    .line 128
    :cond_15
    return-void
.end method

.method public blacklist updateOps()I
    .registers 4

    .line 515
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    iget-wide v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->currentTime:J

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getOpsToUpdate(Lcom/android/internal/widget/remotecompose/core/RemoteContext;J)I

    move-result v0

    return v0
.end method

.method public blacklist useCanvas(Landroid/graphics/Canvas;)V
    .registers 3

    .line 77
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    if-nez v0, :cond_c

    .line 78
    new-instance v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;-><init>(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Landroid/graphics/Canvas;)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    goto :goto_18

    .line 81
    :cond_c
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->reset()V

    .line 82
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->setCanvas(Landroid/graphics/Canvas;)V

    .line 84
    :goto_18
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mWidth:F

    .line 85
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mHeight:F

    .line 86
    return-void
.end method
