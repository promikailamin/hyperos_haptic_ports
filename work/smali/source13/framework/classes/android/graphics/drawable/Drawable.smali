.class public abstract Landroid/graphics/drawable/Drawable;
.super Ljava/lang/Object;
.source "Drawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/Drawable$ConstantState;,
        Landroid/graphics/drawable/Drawable$Callback;
    }
.end annotation


# static fields
.field static final blacklist DEFAULT_BLEND_MODE:Landroid/graphics/BlendMode;

.field static final greylist-max-o DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

.field private static final greylist-max-o ZERO_BOUNDS_RECT:Landroid/graphics/Rect;


# instance fields
.field private greylist-max-o mBounds:Landroid/graphics/Rect;

.field private greylist mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mChangingConfigurations:I

.field private greylist-max-o mLayoutDirection:I

.field private greylist-max-o mLevel:I

.field private blacklist mLoadedFromResources:Z

.field private blacklist mSetBlendModeInvoked:Z

.field private blacklist mSetTintModeInvoked:Z

.field private blacklist mSmoothCornerState:I

.field protected greylist mSrcDensityOverride:I

.field private greylist-max-o mStateSet:[I

.field private greylist-max-o mVisible:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 207
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/graphics/drawable/Drawable;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    .line 209
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroid/graphics/drawable/Drawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 210
    sget-object v0, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    sput-object v0, Landroid/graphics/drawable/Drawable;->DEFAULT_BLEND_MODE:Landroid/graphics/BlendMode;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    sget-object v0, Landroid/util/StateSet;->WILD_CARD:[I

    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mStateSet:[I

    .line 213
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/Drawable;->mLevel:I

    .line 214
    iput v0, p0, Landroid/graphics/drawable/Drawable;->mChangingConfigurations:I

    .line 215
    sget-object v1, Landroid/graphics/drawable/Drawable;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    iput-object v1, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    .line 216
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/drawable/Drawable;->mCallback:Ljava/lang/ref/WeakReference;

    .line 218
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    .line 235
    iput v0, p0, Landroid/graphics/drawable/Drawable;->mSrcDensityOverride:I

    .line 245
    iput-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mSetBlendModeInvoked:Z

    .line 254
    iput-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mSetTintModeInvoked:Z

    .line 257
    iput v0, p0, Landroid/graphics/drawable/Drawable;->mSmoothCornerState:I

    return-void
.end method

.method public static whitelist createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p0, "pathName"    # Ljava/lang/String;

    .line 1443
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1444
    return-object v0

    .line 1447
    :cond_4
    const-wide/16 v1, 0x2000

    invoke-static {v1, v2, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1448
    :try_start_9
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_28
    .catchall {:try_start_9 .. :try_end_e} :catchall_23

    .line 1449
    .local v3, "stream":Ljava/io/FileInputStream;
    :try_start_e
    invoke-static {v0, v0, v3}, Landroid/graphics/drawable/Drawable;->getBitmapDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;)Landroid/graphics/drawable/Drawable;

    move-result-object v4
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_19

    .line 1450
    :try_start_12
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_28
    .catchall {:try_start_12 .. :try_end_15} :catchall_23

    .line 1453
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1449
    return-object v4

    .line 1448
    :catchall_19
    move-exception v4

    :try_start_1a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1e

    goto :goto_22

    :catchall_1e
    move-exception v5

    :try_start_1f
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "pathName":Ljava/lang/String;
    :goto_22
    throw v4
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_23} :catch_28
    .catchall {:try_start_1f .. :try_end_23} :catchall_23

    .line 1453
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .restart local p0    # "pathName":Ljava/lang/String;
    :catchall_23
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1454
    throw v0

    .line 1450
    :catch_28
    move-exception v3

    .line 1453
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1454
    nop

    .line 1456
    return-object v0
.end method

.method public static whitelist createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "srcName"    # Ljava/lang/String;

    .line 1265
    if-eqz p3, :cond_4

    move-object v0, p3

    goto :goto_6

    :cond_4
    const-string v0, "Unknown drawable"

    :goto_6
    const-wide/16 v1, 0x2000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1267
    const/4 v0, 0x0

    :try_start_c
    invoke-static {p0, p1, p2, p3, v0}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_14

    .line 1269
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1267
    return-object v0

    .line 1269
    :catchall_14
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1270
    throw v0
.end method

.method public static whitelist createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;
    .registers 15
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "srcName"    # Ljava/lang/String;
    .param p4, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 1282
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 1283
    return-object v0

    .line 1286
    :cond_4
    if-nez p4, :cond_b

    .line 1287
    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->getBitmapDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 1296
    :cond_b
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1305
    .local v1, "pad":Landroid/graphics/Rect;
    const/4 v2, 0x0

    invoke-static {p0, v2}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v2

    iput v2, p4, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    .line 1306
    invoke-static {p0, p1, p2, v1, p4}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1307
    .local v2, "bm":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_3f

    .line 1308
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    .line 1309
    .local v0, "np":[B
    if-eqz v0, :cond_29

    invoke-static {v0}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 1310
    :cond_29
    const/4 v0, 0x0

    .line 1311
    const/4 v1, 0x0

    .line 1314
    :cond_2b
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    move-object v9, v3

    .line 1315
    .local v9, "opticalInsets":Landroid/graphics/Rect;
    invoke-virtual {v2, v9}, Landroid/graphics/Bitmap;->getOpticalInsets(Landroid/graphics/Rect;)V

    .line 1316
    move-object v3, p0

    move-object v4, v2

    move-object v5, v0

    move-object v6, v1

    move-object v7, v9

    move-object v8, p3

    invoke-static/range {v3 .. v8}, Landroid/graphics/drawable/Drawable;->drawableFromBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    return-object v3

    .line 1318
    .end local v0    # "np":[B
    .end local v9    # "opticalInsets":Landroid/graphics/Rect;
    :cond_3f
    return-object v0
.end method

.method public static whitelist createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "srcName"    # Ljava/lang/String;

    .line 1251
    if-eqz p1, :cond_4

    move-object v0, p1

    goto :goto_6

    :cond_4
    const-string v0, "Unknown drawable"

    :goto_6
    const-wide/16 v1, 0x2000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1253
    const/4 v0, 0x0

    :try_start_c
    invoke-static {v0, v0, p0, p1}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_14

    .line 1255
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1253
    return-object v0

    .line 1255
    :catchall_14
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1256
    throw v0
.end method

.method public static whitelist createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1360
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1371
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Landroid/graphics/drawable/Drawable;->createFromXmlForDensity(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o createFromXmlForDensity(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 10
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "density"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1383
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 1387
    .local v0, "attrs":Landroid/util/AttributeSet;
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x2

    if-eq v1, v3, :cond_10

    const/4 v1, 0x1

    if-eq v2, v1, :cond_10

    goto :goto_4

    .line 1392
    :cond_10
    if-ne v2, v3, :cond_36

    .line 1396
    invoke-static {p0, p1, v0, p2, p3}, Landroid/graphics/drawable/Drawable;->createFromXmlInnerForDensity(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1398
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_19

    .line 1402
    return-object v1

    .line 1399
    :cond_19
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown initial tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1393
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_36
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "No start tag found"

    invoke-direct {v1, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1413
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1425
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Landroid/graphics/drawable/Drawable;->createFromXmlInnerForDensity(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static greylist-max-o createFromXmlInnerForDensity(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 11
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "density"    # I
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1435
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDrawableInflater()Landroid/graphics/drawable/DrawableInflater;

    move-result-object v0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/DrawableInflater;->inflateFromXmlForDensity(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o drawableFromBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 14
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "np"    # [B
    .param p3, "pad"    # Landroid/graphics/Rect;
    .param p4, "layoutBounds"    # Landroid/graphics/Rect;
    .param p5, "srcName"    # Ljava/lang/String;

    .line 1604
    if-eqz p2, :cond_f

    .line 1605
    new-instance v7, Landroid/graphics/drawable/NinePatchDrawable;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)V

    return-object v7

    .line 1608
    :cond_f
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private static greylist-max-o getBitmapDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "is"    # Ljava/io/InputStream;

    .line 1324
    const/4 v0, 0x0

    .line 1325
    .local v0, "source":Landroid/graphics/ImageDecoder$Source;
    if-eqz p1, :cond_1b

    .line 1326
    const/4 v1, 0x0

    .line 1327
    .local v1, "density":I
    :try_start_4
    iget v2, p1, Landroid/util/TypedValue;->density:I

    if-nez v2, :cond_b

    .line 1328
    const/16 v1, 0xa0

    goto :goto_15

    .line 1329
    :cond_b
    iget v2, p1, Landroid/util/TypedValue;->density:I

    const v3, 0xffff

    if-eq v2, v3, :cond_15

    .line 1330
    iget v2, p1, Landroid/util/TypedValue;->density:I

    move v1, v2

    .line 1332
    :cond_15
    :goto_15
    invoke-static {p0, p2, v1}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/res/Resources;Ljava/io/InputStream;I)Landroid/graphics/ImageDecoder$Source;

    move-result-object v2

    move-object v0, v2

    .line 1333
    .end local v1    # "density":I
    goto :goto_20

    .line 1334
    :cond_1b
    invoke-static {p0, p2}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/res/Resources;Ljava/io/InputStream;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v1

    move-object v0, v1

    .line 1337
    :goto_20
    new-instance v1, Landroid/graphics/drawable/Drawable$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/graphics/drawable/Drawable$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_29} :catch_2a

    return-object v1

    .line 1343
    .end local v0    # "source":Landroid/graphics/ImageDecoder$Source;
    :catch_2a
    move-exception v0

    .line 1347
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to decode stream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Drawable"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    .end local v0    # "e":Ljava/io/IOException;
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic blacklist lambda$getBitmapDrawable$0(Landroid/graphics/ImageDecoder$DecodeException;)Z
    .registers 3
    .param p0, "e"    # Landroid/graphics/ImageDecoder$DecodeException;

    .line 1340
    invoke-virtual {p0}, Landroid/graphics/ImageDecoder$DecodeException;->getError()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method static synthetic blacklist lambda$getBitmapDrawable$1(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .registers 4
    .param p0, "decoder"    # Landroid/graphics/ImageDecoder;
    .param p1, "info"    # Landroid/graphics/ImageDecoder$ImageInfo;
    .param p2, "src"    # Landroid/graphics/ImageDecoder$Source;

    .line 1338
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    .line 1339
    new-instance v0, Landroid/graphics/drawable/Drawable$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/graphics/drawable/Drawable$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/graphics/ImageDecoder;->setOnPartialImageListener(Landroid/graphics/ImageDecoder$OnPartialImageListener;)V

    .line 1342
    return-void
.end method

.method protected static greylist-max-o obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .registers 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "attrs"    # [I

    .line 1652
    if-nez p1, :cond_7

    .line 1653
    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0

    .line 1655
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-r parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;
    .registers 3
    .param p0, "value"    # I
    .param p1, "defaultMode"    # Landroid/graphics/BlendMode;

    .line 1756
    sparse-switch p0, :sswitch_data_16

    .line 1765
    return-object p1

    .line 1764
    :sswitch_4
    sget-object v0, Landroid/graphics/BlendMode;->PLUS:Landroid/graphics/BlendMode;

    return-object v0

    .line 1763
    :sswitch_7
    sget-object v0, Landroid/graphics/BlendMode;->SCREEN:Landroid/graphics/BlendMode;

    return-object v0

    .line 1762
    :sswitch_a
    sget-object v0, Landroid/graphics/BlendMode;->MODULATE:Landroid/graphics/BlendMode;

    return-object v0

    .line 1759
    :sswitch_d
    sget-object v0, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    return-object v0

    .line 1758
    :sswitch_10
    sget-object v0, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    return-object v0

    .line 1757
    :sswitch_13
    sget-object v0, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    return-object v0

    :sswitch_data_16
    .sparse-switch
        0x3 -> :sswitch_13
        0x5 -> :sswitch_10
        0x9 -> :sswitch_d
        0xe -> :sswitch_a
        0xf -> :sswitch_7
        0x10 -> :sswitch_4
    .end sparse-switch
.end method

.method public static greylist parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .registers 3
    .param p0, "value"    # I
    .param p1, "defaultMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 1737
    sparse-switch p0, :sswitch_data_16

    .line 1744
    return-object p1

    .line 1743
    :sswitch_4
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 1742
    :sswitch_7
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 1741
    :sswitch_a
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 1740
    :sswitch_d
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 1739
    :sswitch_10
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 1738
    :sswitch_13
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :sswitch_data_16
    .sparse-switch
        0x3 -> :sswitch_13
        0x5 -> :sswitch_10
        0x9 -> :sswitch_d
        0xe -> :sswitch_a
        0xf -> :sswitch_7
        0x10 -> :sswitch_4
    .end sparse-switch
.end method

.method static greylist-max-o resolveDensity(Landroid/content/res/Resources;I)I
    .registers 4
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parentDensity"    # I

    .line 1711
    if-nez p0, :cond_4

    move v0, p1

    goto :goto_a

    :cond_4
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1712
    .local v0, "densityDpi":I
    :goto_a
    if-nez v0, :cond_f

    const/16 v1, 0xa0

    goto :goto_10

    :cond_f
    move v1, v0

    :goto_10
    return v1
.end method

.method public static whitelist resolveOpacity(II)I
    .registers 3
    .param p0, "op1"    # I
    .param p1, "op2"    # I

    .line 1058
    if-ne p0, p1, :cond_3

    .line 1059
    return p0

    .line 1061
    :cond_3
    if-eqz p0, :cond_18

    if-nez p1, :cond_8

    goto :goto_18

    .line 1064
    :cond_8
    const/4 v0, -0x3

    if-eq p0, v0, :cond_17

    if-ne p1, v0, :cond_e

    goto :goto_17

    .line 1067
    :cond_e
    const/4 v0, -0x2

    if-eq p0, v0, :cond_16

    if-ne p1, v0, :cond_14

    goto :goto_16

    .line 1070
    :cond_14
    const/4 v0, -0x1

    return v0

    .line 1068
    :cond_16
    :goto_16
    return v0

    .line 1065
    :cond_17
    :goto_17
    return v0

    .line 1062
    :cond_18
    :goto_18
    const/4 v0, 0x0

    return v0
.end method

.method static greylist-max-o rethrowAsRuntimeException(Ljava/lang/Exception;)V
    .registers 3
    .param p0, "cause"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1724
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 1725
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Ljava/lang/RuntimeException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 1726
    throw v0
.end method

.method static greylist-max-o scaleFromDensity(FII)F
    .registers 5
    .param p0, "pixels"    # F
    .param p1, "sourceDensity"    # I
    .param p2, "targetDensity"    # I

    .line 1668
    int-to-float v0, p2

    mul-float/2addr v0, p0

    int-to-float v1, p1

    div-float/2addr v0, v1

    return v0
.end method

.method static greylist-max-o scaleFromDensity(IIIZ)I
    .registers 7
    .param p0, "pixels"    # I
    .param p1, "sourceDensity"    # I
    .param p2, "targetDensity"    # I
    .param p3, "isSize"    # Z

    .line 1691
    if-eqz p0, :cond_1b

    if-ne p1, p2, :cond_5

    goto :goto_1b

    .line 1695
    :cond_5
    mul-int v0, p0, p2

    int-to-float v0, v0

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 1696
    .local v0, "result":F
    if-nez p3, :cond_e

    .line 1697
    float-to-int v1, v0

    return v1

    .line 1700
    :cond_e
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1701
    .local v1, "rounded":I
    if-eqz v1, :cond_15

    .line 1702
    return v1

    .line 1703
    :cond_15
    if-lez p0, :cond_19

    .line 1704
    const/4 v2, 0x1

    return v2

    .line 1706
    :cond_19
    const/4 v2, -0x1

    return v2

    .line 1692
    .end local v0    # "result":F
    .end local v1    # "rounded":I
    :cond_1b
    :goto_1b
    return p0
.end method


# virtual methods
.method public whitelist applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 2
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 995
    return-void
.end method

.method public whitelist canApplyTheme()Z
    .registers 2

    .line 998
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist clearColorFilter()V
    .registers 2

    .line 779
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 780
    return-void
.end method

.method public greylist-max-o clearMutated()V
    .registers 1

    .line 1244
    return-void
.end method

.method public final whitelist copyBounds()Landroid/graphics/Rect;
    .registers 3

    .line 333
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public final whitelist copyBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 321
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 322
    return-void
.end method

.method public abstract whitelist draw(Landroid/graphics/Canvas;)V
.end method

.method public whitelist getAlpha()I
    .registers 2

    .line 610
    const/16 v0, 0xff

    return v0
.end method

.method public final whitelist getBounds()Landroid/graphics/Rect;
    .registers 3

    .line 352
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    sget-object v1, Landroid/graphics/drawable/Drawable;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    if-ne v0, v1, :cond_d

    .line 353
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    .line 356
    :cond_d
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist getCallback()Landroid/graphics/drawable/Drawable$Callback;
    .registers 2

    .line 499
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$Callback;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public whitelist getChangingConfigurations()I
    .registers 2

    .line 400
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mChangingConfigurations:I

    return v0
.end method

.method public whitelist getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    .line 772
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    .line 1598
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCurrent()Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 907
    return-object p0
.end method

.method public whitelist getDirtyBounds()Landroid/graphics/Rect;
    .registers 2

    .line 370
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getHotspotBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .line 809
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 810
    return-void
.end method

.method public whitelist getIntrinsicHeight()I
    .registers 2

    .line 1145
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getIntrinsicWidth()I
    .registers 2

    .line 1132
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getLayoutDirection()I
    .registers 2

    .line 559
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mLayoutDirection:I

    return v0
.end method

.method public final whitelist getLevel()I
    .registers 2

    .line 940
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mLevel:I

    return v0
.end method

.method public whitelist getMinimumHeight()I
    .registers 3

    .line 1172
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 1173
    .local v0, "intrinsicHeight":I
    if-lez v0, :cond_8

    move v1, v0

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public whitelist getMinimumWidth()I
    .registers 3

    .line 1158
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 1159
    .local v0, "intrinsicWidth":I
    if-lez v0, :cond_8

    move v1, v0

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public abstract whitelist getOpacity()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist getOpticalInsets()Landroid/graphics/Insets;
    .registers 2

    .line 1195
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object v0
.end method

.method public whitelist getOutline(Landroid/graphics/Outline;)V
    .registers 3
    .param p1, "outline"    # Landroid/graphics/Outline;

    .line 1210
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setRect(Landroid/graphics/Rect;)V

    .line 1211
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 1212
    return-void
.end method

.method public whitelist getPadding(Landroid/graphics/Rect;)Z
    .registers 3
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 1185
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 1186
    return v0
.end method

.method public whitelist getSmoothCornerState()I
    .registers 2

    .line 270
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mSmoothCornerState:I

    return v0
.end method

.method public whitelist getState()[I
    .registers 2

    .line 890
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mStateSet:[I

    return-object v0
.end method

.method public whitelist getTransparentRegion()Landroid/graphics/Region;
    .registers 2

    .line 1087
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist hasFocusStateSpecified()Z
    .registers 2

    .line 849
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1466
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 1467
    return-void
.end method

.method public whitelist inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 8
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1484
    sget-object v0, Lcom/android/internal/R$styleable;->Drawable:[I

    invoke-static {p1, p4, p3, v0}, Landroid/graphics/drawable/Drawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1485
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-boolean v1, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    .line 1486
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1487
    return-void
.end method

.method greylist inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V
    .registers 6
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/content/res/TypedArray;
    .param p4, "visibleAttr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1499
    iget-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    invoke-virtual {p3, p4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    .line 1500
    return-void
.end method

.method public whitelist invalidateSelf()V
    .registers 2

    .line 512
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 513
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_9

    .line 514
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 516
    :cond_9
    return-void
.end method

.method public whitelist isAutoMirrored()Z
    .registers 2

    .line 986
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isFilterBitmap()Z
    .registers 2

    .line 430
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isLoadedFromResources()Z
    .registers 2

    .line 204
    iget-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mLoadedFromResources:Z

    return v0
.end method

.method public whitelist isProjected()Z
    .registers 2

    .line 820
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isStateful()Z
    .registers 2

    .line 833
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist isVisible()Z
    .registers 2

    .line 967
    iget-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    return v0
.end method

.method public whitelist jumpToCurrentState()V
    .registers 1

    .line 898
    return-void
.end method

.method public whitelist mutate()Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 1229
    return-object p0
.end method

.method protected whitelist onBoundsChange(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 1120
    return-void
.end method

.method public whitelist onLayoutDirectionChanged(I)Z
    .registers 3
    .param p1, "layoutDirection"    # I

    .line 593
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist onLevelChange(I)Z
    .registers 3
    .param p1, "level"    # I

    .line 1111
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist onStateChange([I)Z
    .registers 3
    .param p1, "state"    # [I

    .line 1100
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist scheduleSelf(Ljava/lang/Runnable;J)V
    .registers 5
    .param p1, "what"    # Ljava/lang/Runnable;
    .param p2, "when"    # J

    .line 529
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 530
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_9

    .line 531
    invoke-interface {v0, p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 533
    :cond_9
    return-void
.end method

.method public abstract whitelist setAlpha(I)V
.end method

.method public whitelist setAutoMirrored(Z)V
    .registers 2
    .param p1, "mirrored"    # Z

    .line 977
    return-void
.end method

.method public whitelist setBounds(IIII)V
    .registers 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 287
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    .line 289
    .local v0, "oldBounds":Landroid/graphics/Rect;
    sget-object v1, Landroid/graphics/drawable/Drawable;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    if-ne v0, v1, :cond_e

    .line 290
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    move-object v0, v1

    .line 293
    :cond_e
    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-ne v1, p1, :cond_1e

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-ne v1, p2, :cond_1e

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-ne v1, p3, :cond_1e

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-eq v1, p4, :cond_31

    .line 295
    :cond_1e
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_27

    .line 297
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 299
    :cond_27
    iget-object v1, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 300
    iget-object v1, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 302
    :cond_31
    return-void
.end method

.method public whitelist setBounds(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 309
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 310
    return-void
.end method

.method public final whitelist setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
    .registers 3
    .param p1, "cb"    # Landroid/graphics/drawable/Drawable$Callback;

    .line 487
    if-eqz p1, :cond_8

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Ljava/lang/ref/WeakReference;

    .line 488
    return-void
.end method

.method public whitelist setChangingConfigurations(I)V
    .registers 2
    .param p1, "configs"    # I

    .line 383
    iput p1, p0, Landroid/graphics/drawable/Drawable;->mChangingConfigurations:I

    .line 384
    return-void
.end method

.method public whitelist setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .registers 5
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 662
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/PorterDuffColorFilter;

    if-eqz v0, :cond_1b

    .line 663
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    check-cast v0, Landroid/graphics/PorterDuffColorFilter;

    .line 664
    .local v0, "existing":Landroid/graphics/PorterDuffColorFilter;
    invoke-virtual {v0}, Landroid/graphics/PorterDuffColorFilter;->getColor()I

    move-result v1

    if-ne v1, p1, :cond_1b

    invoke-virtual {v0}, Landroid/graphics/PorterDuffColorFilter;->getMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    if-ne v1, p2, :cond_1b

    .line 665
    return-void

    .line 668
    .end local v0    # "existing":Landroid/graphics/PorterDuffColorFilter;
    :cond_1b
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 669
    return-void
.end method

.method public abstract whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
.end method

.method public whitelist setDither(Z)V
    .registers 2
    .param p1, "dither"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 411
    return-void
.end method

.method public whitelist setFilterBitmap(Z)V
    .registers 2
    .param p1, "filter"    # Z

    .line 423
    return-void
.end method

.method public whitelist setHotspot(FF)V
    .registers 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 788
    return-void
.end method

.method public whitelist setHotspotBounds(IIII)V
    .registers 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 800
    return-void
.end method

.method public whitelist setIsBackgroundColorDecline(Z)V
    .registers 3
    .param p1, "should"    # Z

    .line 190
    invoke-static {}, Landroid/powerconsumption/MiuiDrawableStub;->getInstance()Landroid/powerconsumption/MiuiDrawableStub;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/powerconsumption/MiuiDrawableStub;->setShouldDeclineWhiteColor(Z)V

    .line 191
    return-void
.end method

.method public final whitelist setLayoutDirection(I)Z
    .registers 3
    .param p1, "layoutDirection"    # I

    .line 576
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mLayoutDirection:I

    if-eq v0, p1, :cond_b

    .line 577
    iput p1, p0, Landroid/graphics/drawable/Drawable;->mLayoutDirection:I

    .line 578
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->onLayoutDirectionChanged(I)Z

    move-result v0

    return v0

    .line 580
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist setLevel(I)Z
    .registers 3
    .param p1, "level"    # I

    .line 927
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mLevel:I

    if-eq v0, p1, :cond_b

    .line 928
    iput p1, p0, Landroid/graphics/drawable/Drawable;->mLevel:I

    .line 929
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    move-result v0

    return v0

    .line 931
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setLoadedFromResources(Z)V
    .registers 2
    .param p1, "isRes"    # Z

    .line 198
    iput-boolean p1, p0, Landroid/graphics/drawable/Drawable;->mLoadedFromResources:Z

    .line 199
    return-void
.end method

.method public whitelist setSmoothCornerEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 260
    if-eqz p1, :cond_c

    .line 261
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mSmoothCornerState:I

    and-int/lit8 v1, v0, -0x9

    or-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/drawable/Drawable;->mSmoothCornerState:I

    goto :goto_15

    .line 264
    :cond_c
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mSmoothCornerState:I

    and-int/lit8 v1, v0, -0x5

    or-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/drawable/Drawable;->mSmoothCornerState:I

    .line 267
    :goto_15
    return-void
.end method

.method final greylist-max-o setSrcDensityOverride(I)V
    .registers 2
    .param p1, "density"    # I

    .line 1509
    iput p1, p0, Landroid/graphics/drawable/Drawable;->mSrcDensityOverride:I

    .line 1510
    return-void
.end method

.method public whitelist setState([I)Z
    .registers 3
    .param p1, "stateSet"    # [I

    .line 875
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mStateSet:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 876
    iput-object p1, p0, Landroid/graphics/drawable/Drawable;->mStateSet:[I

    .line 877
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    return v0

    .line 879
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setTint(I)V
    .registers 3
    .param p1, "tintColor"    # I

    .line 693
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 694
    return-void
.end method

.method public whitelist setTintBlendMode(Landroid/graphics/BlendMode;)V
    .registers 4
    .param p1, "blendMode"    # Landroid/graphics/BlendMode;

    .line 758
    iget-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mSetBlendModeInvoked:Z

    if-nez v0, :cond_17

    .line 759
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mSetBlendModeInvoked:Z

    .line 760
    invoke-static {p1}, Landroid/graphics/BlendMode;->blendModeToPorterDuffMode(Landroid/graphics/BlendMode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 761
    .local v0, "mode":Landroid/graphics/PorterDuff$Mode;
    if-eqz v0, :cond_f

    move-object v1, v0

    goto :goto_11

    :cond_f
    sget-object v1, Landroid/graphics/drawable/Drawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    :goto_11
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 762
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/graphics/drawable/Drawable;->mSetBlendModeInvoked:Z

    .line 764
    .end local v0    # "mode":Landroid/graphics/PorterDuff$Mode;
    :cond_17
    return-void
.end method

.method public whitelist setTintList(Landroid/content/res/ColorStateList;)V
    .registers 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 714
    return-void
.end method

.method public whitelist setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 4
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 734
    iget-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mSetTintModeInvoked:Z

    if-nez v0, :cond_1d

    .line 735
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mSetTintModeInvoked:Z

    .line 736
    if-eqz p1, :cond_10

    iget v0, p1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 737
    .local v0, "mode":Landroid/graphics/BlendMode;
    :goto_11
    if-eqz v0, :cond_15

    move-object v1, v0

    goto :goto_17

    :cond_15
    sget-object v1, Landroid/graphics/drawable/Drawable;->DEFAULT_BLEND_MODE:Landroid/graphics/BlendMode;

    :goto_17
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 738
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/graphics/drawable/Drawable;->mSetTintModeInvoked:Z

    .line 740
    .end local v0    # "mode":Landroid/graphics/BlendMode;
    :cond_1d
    return-void
.end method

.method public whitelist setVisible(ZZ)Z
    .registers 4
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .line 958
    iget-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    if-eq v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 959
    .local v0, "changed":Z
    :goto_7
    if-eqz v0, :cond_e

    .line 960
    iput-boolean p1, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    .line 961
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 963
    :cond_e
    return v0
.end method

.method public greylist-max-o setXfermode(Landroid/graphics/Xfermode;)V
    .registers 2
    .param p1, "mode"    # Landroid/graphics/Xfermode;

    .line 624
    return-void
.end method

.method public whitelist unscheduleSelf(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "what"    # Ljava/lang/Runnable;

    .line 545
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 546
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_9

    .line 547
    invoke-interface {v0, p0, p1}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 549
    :cond_9
    return-void
.end method

.method blacklist updateBlendModeFilter(Landroid/graphics/BlendModeColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/BlendMode;)Landroid/graphics/BlendModeColorFilter;
    .registers 6
    .param p1, "blendFilter"    # Landroid/graphics/BlendModeColorFilter;
    .param p2, "tint"    # Landroid/content/res/ColorStateList;
    .param p3, "blendMode"    # Landroid/graphics/BlendMode;

    .line 1633
    if-eqz p2, :cond_24

    if-nez p3, :cond_5

    goto :goto_24

    .line 1637
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 1638
    .local v0, "color":I
    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Landroid/graphics/BlendModeColorFilter;->getColor()I

    move-result v1

    if-ne v1, v0, :cond_1e

    .line 1639
    invoke-virtual {p1}, Landroid/graphics/BlendModeColorFilter;->getMode()Landroid/graphics/BlendMode;

    move-result-object v1

    if-eq v1, p3, :cond_1d

    goto :goto_1e

    .line 1642
    :cond_1d
    return-object p1

    .line 1640
    :cond_1e
    :goto_1e
    new-instance v1, Landroid/graphics/BlendModeColorFilter;

    invoke-direct {v1, v0, p3}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    return-object v1

    .line 1634
    .end local v0    # "color":I
    :cond_24
    :goto_24
    const/4 v0, 0x0

    return-object v0
.end method

.method greylist updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .registers 6
    .param p1, "tintFilter"    # Landroid/graphics/PorterDuffColorFilter;
    .param p2, "tint"    # Landroid/content/res/ColorStateList;
    .param p3, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 1618
    if-eqz p2, :cond_24

    if-nez p3, :cond_5

    goto :goto_24

    .line 1622
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 1623
    .local v0, "color":I
    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Landroid/graphics/PorterDuffColorFilter;->getColor()I

    move-result v1

    if-ne v1, v0, :cond_1e

    .line 1624
    invoke-virtual {p1}, Landroid/graphics/PorterDuffColorFilter;->getMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    if-eq v1, p3, :cond_1d

    goto :goto_1e

    .line 1628
    :cond_1d
    return-object p1

    .line 1625
    :cond_1e
    :goto_1e
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, v0, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v1

    .line 1619
    .end local v0    # "color":I
    :cond_24
    :goto_24
    const/4 v0, 0x0

    return-object v0
.end method
