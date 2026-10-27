.class public abstract Landroid/graphics/drawable/Drawable;
.super Ljava/lang/Object;
.source "Drawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/Drawable$Callback;,
        Landroid/graphics/drawable/Drawable$ConstantState;
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

.field private blacklist mSetBlendModeInvoked:Z

.field private blacklist mSetTintModeInvoked:Z

.field protected greylist mSrcDensityOverride:I

.field private greylist-max-o mStateSet:[I

.field private greylist-max-o mVisible:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 185
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/graphics/drawable/Drawable;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    .line 187
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroid/graphics/drawable/Drawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 188
    sget-object v0, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    sput-object v0, Landroid/graphics/drawable/Drawable;->DEFAULT_BLEND_MODE:Landroid/graphics/BlendMode;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    sget-object v0, Landroid/util/StateSet;->WILD_CARD:[I

    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mStateSet:[I

    .line 191
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/Drawable;->mLevel:I

    .line 192
    iput v0, p0, Landroid/graphics/drawable/Drawable;->mChangingConfigurations:I

    .line 193
    sget-object v1, Landroid/graphics/drawable/Drawable;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    iput-object v1, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    .line 194
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/drawable/Drawable;->mCallback:Ljava/lang/ref/WeakReference;

    .line 196
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    .line 213
    iput v0, p0, Landroid/graphics/drawable/Drawable;->mSrcDensityOverride:I

    .line 223
    iput-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mSetBlendModeInvoked:Z

    .line 232
    iput-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mSetTintModeInvoked:Z

    return-void
.end method

.method public static whitelist createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 1403
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1404
    return-object v0

    .line 1407
    :cond_4
    const-wide/16 v1, 0x2000

    invoke-static {v1, v2, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1408
    :try_start_9
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_28
    .catchall {:try_start_9 .. :try_end_e} :catchall_23

    .line 1409
    :try_start_e
    invoke-static {v0, v0, v3}, Landroid/graphics/drawable/Drawable;->getBitmapDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_19

    .line 1410
    :try_start_12
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_28
    .catchall {:try_start_12 .. :try_end_15} :catchall_23

    .line 1413
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1409
    return-object p0

    .line 1408
    :catchall_19
    move-exception p0

    :try_start_1a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1e

    goto :goto_22

    :catchall_1e
    move-exception v3

    :try_start_1f
    invoke-virtual {p0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_22
    throw p0
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_23} :catch_28
    .catchall {:try_start_1f .. :try_end_23} :catchall_23

    .line 1413
    :catchall_23
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1414
    throw p0

    .line 1410
    :catch_28
    move-exception p0

    .line 1413
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1414
    nop

    .line 1416
    return-object v0
.end method

.method public static whitelist createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 7

    .line 1225
    if-eqz p3, :cond_4

    move-object v0, p3

    goto :goto_6

    :cond_4
    const-string v0, "Unknown drawable"

    :goto_6
    const-wide/16 v1, 0x2000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1227
    const/4 v0, 0x0

    :try_start_c
    invoke-static {p0, p1, p2, p3, v0}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_14

    .line 1229
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1227
    return-object p0

    .line 1229
    :catchall_14
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1230
    throw p0
.end method

.method public static whitelist createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;
    .registers 14

    .line 1242
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 1243
    return-object v0

    .line 1246
    :cond_4
    if-nez p4, :cond_b

    .line 1247
    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->getBitmapDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 1256
    :cond_b
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1265
    const/4 v2, 0x0

    invoke-static {p0, v2}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v2

    iput v2, p4, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    .line 1266
    invoke-static {p0, p1, p2, v1, p4}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1267
    if-eqz v4, :cond_3f

    .line 1268
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object p1

    .line 1269
    if-eqz p1, :cond_2d

    invoke-static {p1}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result p2

    if-nez p2, :cond_2a

    goto :goto_2d

    :cond_2a
    move-object v5, p1

    move-object v6, v1

    goto :goto_30

    .line 1270
    :cond_2d
    :goto_2d
    nop

    .line 1271
    move-object v5, v0

    move-object v6, v5

    .line 1274
    :goto_30
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 1275
    invoke-virtual {v4, v7}, Landroid/graphics/Bitmap;->getOpticalInsets(Landroid/graphics/Rect;)V

    .line 1276
    move-object v3, p0

    move-object v8, p3

    invoke-static/range {v3 .. v8}, Landroid/graphics/drawable/Drawable;->drawableFromBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 1278
    :cond_3f
    return-object v0
.end method

.method public static whitelist createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 1211
    if-eqz p1, :cond_4

    move-object v0, p1

    goto :goto_6

    :cond_4
    const-string v0, "Unknown drawable"

    :goto_6
    const-wide/16 v1, 0x2000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1213
    const/4 v0, 0x0

    :try_start_c
    invoke-static {v0, v0, p0, p1}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_14

    .line 1215
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1213
    return-object p0

    .line 1215
    :catchall_14
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1216
    throw p0
.end method

.method public static whitelist createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1320
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1331
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Landroid/graphics/drawable/Drawable;->createFromXmlForDensity(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o createFromXmlForDensity(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1343
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 1347
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_f

    const/4 v3, 0x1

    if-eq v1, v3, :cond_f

    goto :goto_4

    .line 1352
    :cond_f
    if-ne v1, v2, :cond_35

    .line 1356
    invoke-static {p0, p1, v0, p2, p3}, Landroid/graphics/drawable/Drawable;->createFromXmlInnerForDensity(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 1358
    if-eqz p0, :cond_18

    .line 1362
    return-object p0

    .line 1359
    :cond_18
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown initial tag: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1353
    :cond_35
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1373
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1385
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Landroid/graphics/drawable/Drawable;->createFromXmlInnerForDensity(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static greylist-max-o createFromXmlInnerForDensity(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1395
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDrawableInflater()Landroid/graphics/drawable/DrawableInflater;

    move-result-object v0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/DrawableInflater;->inflateFromXmlForDensity(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static greylist-max-o drawableFromBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 13

    .line 1564
    if-eqz p2, :cond_e

    .line 1565
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)V

    return-object v0

    .line 1568
    :cond_e
    move-object v1, p0

    move-object v2, p1

    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p0
.end method

.method private static greylist-max-o getBitmapDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;)Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 1284
    nop

    .line 1285
    if-eqz p1, :cond_1b

    .line 1286
    nop

    .line 1287
    :try_start_4
    iget v0, p1, Landroid/util/TypedValue;->density:I

    if-nez v0, :cond_b

    .line 1288
    const/16 p1, 0xa0

    goto :goto_16

    .line 1289
    :cond_b
    iget v0, p1, Landroid/util/TypedValue;->density:I

    const v1, 0xffff

    if-eq v0, v1, :cond_15

    .line 1290
    iget p1, p1, Landroid/util/TypedValue;->density:I

    goto :goto_16

    .line 1289
    :cond_15
    const/4 p1, 0x0

    .line 1292
    :goto_16
    invoke-static {p0, p2, p1}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/res/Resources;Ljava/io/InputStream;I)Landroid/graphics/ImageDecoder$Source;

    move-result-object p0

    .line 1293
    goto :goto_1f

    .line 1294
    :cond_1b
    invoke-static {p0, p2}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/res/Resources;Ljava/io/InputStream;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p0

    .line 1297
    :goto_1f
    new-instance p1, Landroid/graphics/drawable/Drawable$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Landroid/graphics/drawable/Drawable$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, p1}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_28} :catch_29

    return-object p0

    .line 1303
    :catch_29
    move-exception p0

    .line 1307
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to decode stream: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Drawable"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic blacklist lambda$getBitmapDrawable$0(Landroid/graphics/ImageDecoder$DecodeException;)Z
    .registers 2

    .line 1300
    invoke-virtual {p0}, Landroid/graphics/ImageDecoder$DecodeException;->getError()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method static synthetic blacklist lambda$getBitmapDrawable$1(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .registers 3

    .line 1298
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    .line 1299
    new-instance p1, Landroid/graphics/drawable/Drawable$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Landroid/graphics/drawable/Drawable$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, p1}, Landroid/graphics/ImageDecoder;->setOnPartialImageListener(Landroid/graphics/ImageDecoder$OnPartialImageListener;)V

    .line 1302
    return-void
.end method

.method protected static greylist-max-o obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .registers 4

    .line 1612
    if-nez p1, :cond_7

    .line 1613
    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0

    .line 1615
    :cond_7
    const/4 p0, 0x0

    invoke-virtual {p1, p2, p3, p0, p0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-r parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;
    .registers 2

    .line 1716
    sparse-switch p0, :sswitch_data_16

    .line 1725
    return-object p1

    .line 1724
    :sswitch_4
    sget-object p0, Landroid/graphics/BlendMode;->PLUS:Landroid/graphics/BlendMode;

    return-object p0

    .line 1723
    :sswitch_7
    sget-object p0, Landroid/graphics/BlendMode;->SCREEN:Landroid/graphics/BlendMode;

    return-object p0

    .line 1722
    :sswitch_a
    sget-object p0, Landroid/graphics/BlendMode;->MODULATE:Landroid/graphics/BlendMode;

    return-object p0

    .line 1719
    :sswitch_d
    sget-object p0, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    return-object p0

    .line 1718
    :sswitch_10
    sget-object p0, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    return-object p0

    .line 1717
    :sswitch_13
    sget-object p0, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    return-object p0

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
    .registers 2

    .line 1697
    sparse-switch p0, :sswitch_data_16

    .line 1704
    return-object p1

    .line 1703
    :sswitch_4
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 1702
    :sswitch_7
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 1701
    :sswitch_a
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 1700
    :sswitch_d
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 1699
    :sswitch_10
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 1698
    :sswitch_13
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object p0

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
    .registers 2

    .line 1671
    if-nez p0, :cond_3

    goto :goto_9

    :cond_3
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1672
    :goto_9
    if-nez p1, :cond_d

    const/16 p1, 0xa0

    :cond_d
    return p1
.end method

.method public static whitelist resolveOpacity(II)I
    .registers 3

    .line 1018
    if-ne p0, p1, :cond_3

    .line 1019
    return p0

    .line 1021
    :cond_3
    if-eqz p0, :cond_18

    if-nez p1, :cond_8

    goto :goto_18

    .line 1024
    :cond_8
    const/4 v0, -0x3

    if-eq p0, v0, :cond_17

    if-ne p1, v0, :cond_e

    goto :goto_17

    .line 1027
    :cond_e
    const/4 v0, -0x2

    if-eq p0, v0, :cond_16

    if-ne p1, v0, :cond_14

    goto :goto_16

    .line 1030
    :cond_14
    const/4 p0, -0x1

    return p0

    .line 1028
    :cond_16
    :goto_16
    return v0

    .line 1025
    :cond_17
    :goto_17
    return v0

    .line 1022
    :cond_18
    :goto_18
    const/4 p0, 0x0

    return p0
.end method

.method static greylist-max-o rethrowAsRuntimeException(Ljava/lang/Exception;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1684
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 1685
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/StackTraceElement;

    invoke-virtual {v0, p0}, Ljava/lang/RuntimeException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 1686
    throw v0
.end method

.method static greylist-max-o scaleFromDensity(FII)F
    .registers 3

    .line 1628
    int-to-float p2, p2

    mul-float/2addr p0, p2

    int-to-float p1, p1

    div-float/2addr p0, p1

    return p0
.end method

.method static greylist-max-o scaleFromDensity(IIIZ)I
    .registers 4

    .line 1651
    if-eqz p0, :cond_1a

    if-ne p1, p2, :cond_5

    goto :goto_1a

    .line 1655
    :cond_5
    mul-int/2addr p2, p0

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 1656
    if-nez p3, :cond_d

    .line 1657
    float-to-int p0, p2

    return p0

    .line 1660
    :cond_d
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 1661
    if-eqz p1, :cond_14

    .line 1662
    return p1

    .line 1663
    :cond_14
    if-lez p0, :cond_18

    .line 1664
    const/4 p0, 0x1

    return p0

    .line 1666
    :cond_18
    const/4 p0, -0x1

    return p0

    .line 1652
    :cond_1a
    :goto_1a
    return p0
.end method


# virtual methods
.method public whitelist applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 2

    .line 955
    return-void
.end method

.method public whitelist canApplyTheme()Z
    .registers 2

    .line 958
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist clearColorFilter()V
    .registers 2

    .line 739
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 740
    return-void
.end method

.method public greylist-max-o clearMutated()V
    .registers 1

    .line 1204
    return-void
.end method

.method public final whitelist copyBounds()Landroid/graphics/Rect;
    .registers 3

    .line 293
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public final whitelist copyBounds(Landroid/graphics/Rect;)V
    .registers 3

    .line 281
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 282
    return-void
.end method

.method public abstract whitelist draw(Landroid/graphics/Canvas;)V
.end method

.method public whitelist getAlpha()I
    .registers 2

    .line 570
    const/16 v0, 0xff

    return v0
.end method

.method public final whitelist getBounds()Landroid/graphics/Rect;
    .registers 3

    .line 312
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    sget-object v1, Landroid/graphics/drawable/Drawable;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    if-ne v0, v1, :cond_d

    .line 313
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    .line 316
    :cond_d
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist getCallback()Landroid/graphics/drawable/Drawable$Callback;
    .registers 2

    .line 459
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$Callback;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0
.end method

.method public whitelist getChangingConfigurations()I
    .registers 2

    .line 360
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mChangingConfigurations:I

    return v0
.end method

.method public whitelist getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    .line 732
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    .line 1558
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCurrent()Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 867
    return-object p0
.end method

.method public whitelist getDirtyBounds()Landroid/graphics/Rect;
    .registers 2

    .line 330
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getHotspotBounds(Landroid/graphics/Rect;)V
    .registers 3

    .line 769
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 770
    return-void
.end method

.method public whitelist getIntrinsicHeight()I
    .registers 2

    .line 1105
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getIntrinsicWidth()I
    .registers 2

    .line 1092
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getLayoutDirection()I
    .registers 2

    .line 519
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mLayoutDirection:I

    return v0
.end method

.method public final whitelist getLevel()I
    .registers 2

    .line 900
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mLevel:I

    return v0
.end method

.method public whitelist getMinimumHeight()I
    .registers 2

    .line 1132
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 1133
    if-lez v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist getMinimumWidth()I
    .registers 2

    .line 1118
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 1119
    if-lez v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public abstract whitelist getOpacity()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist getOpticalInsets()Landroid/graphics/Insets;
    .registers 2

    .line 1155
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object v0
.end method

.method public whitelist getOutline(Landroid/graphics/Outline;)V
    .registers 3

    .line 1170
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setRect(Landroid/graphics/Rect;)V

    .line 1171
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 1172
    return-void
.end method

.method public whitelist getPadding(Landroid/graphics/Rect;)Z
    .registers 3

    .line 1145
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 1146
    return v0
.end method

.method public whitelist getState()[I
    .registers 2

    .line 850
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mStateSet:[I

    return-object v0
.end method

.method public whitelist getTransparentRegion()Landroid/graphics/Region;
    .registers 2

    .line 1047
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist hasFocusStateSpecified()Z
    .registers 2

    .line 809
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1426
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 1427
    return-void
.end method

.method public whitelist inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1444
    sget-object p2, Lcom/android/internal/R$styleable;->Drawable:[I

    invoke-static {p1, p4, p3, p2}, Landroid/graphics/drawable/Drawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1445
    const/4 p2, 0x0

    iget-boolean p3, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    .line 1446
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1447
    return-void
.end method

.method greylist inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1459
    iget-boolean p1, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    invoke-virtual {p3, p4, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    .line 1460
    return-void
.end method

.method public whitelist invalidateSelf()V
    .registers 2

    .line 472
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 473
    if-eqz v0, :cond_9

    .line 474
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 476
    :cond_9
    return-void
.end method

.method public whitelist isAutoMirrored()Z
    .registers 2

    .line 946
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isFilterBitmap()Z
    .registers 2

    .line 390
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isProjected()Z
    .registers 2

    .line 780
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isStateful()Z
    .registers 2

    .line 793
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist isVisible()Z
    .registers 2

    .line 927
    iget-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    return v0
.end method

.method public whitelist jumpToCurrentState()V
    .registers 1

    .line 858
    return-void
.end method

.method public whitelist mutate()Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 1189
    return-object p0
.end method

.method protected whitelist onBoundsChange(Landroid/graphics/Rect;)V
    .registers 2

    .line 1080
    return-void
.end method

.method public whitelist onLayoutDirectionChanged(I)Z
    .registers 2

    .line 553
    const/4 p1, 0x0

    return p1
.end method

.method protected whitelist onLevelChange(I)Z
    .registers 2

    .line 1071
    const/4 p1, 0x0

    return p1
.end method

.method protected whitelist onStateChange([I)Z
    .registers 2

    .line 1060
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist scheduleSelf(Ljava/lang/Runnable;J)V
    .registers 5

    .line 489
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 490
    if-eqz v0, :cond_9

    .line 491
    invoke-interface {v0, p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 493
    :cond_9
    return-void
.end method

.method public abstract whitelist setAlpha(I)V
.end method

.method public whitelist setAutoMirrored(Z)V
    .registers 2

    .line 937
    return-void
.end method

.method public whitelist setBounds(IIII)V
    .registers 7

    .line 247
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    .line 249
    sget-object v1, Landroid/graphics/drawable/Drawable;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    if-ne v0, v1, :cond_d

    .line 250
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    .line 253
    :cond_d
    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-ne v1, p1, :cond_1d

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-ne v1, p2, :cond_1d

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-ne v1, p3, :cond_1d

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-eq v1, p4, :cond_30

    .line 255
    :cond_1d
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 257
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 259
    :cond_26
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 260
    iget-object p1, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 262
    :cond_30
    return-void
.end method

.method public whitelist setBounds(Landroid/graphics/Rect;)V
    .registers 5

    .line 269
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 270
    return-void
.end method

.method public final whitelist setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
    .registers 3

    .line 447
    if-eqz p1, :cond_8

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Ljava/lang/ref/WeakReference;

    .line 448
    return-void
.end method

.method public whitelist setChangingConfigurations(I)V
    .registers 2

    .line 343
    iput p1, p0, Landroid/graphics/drawable/Drawable;->mChangingConfigurations:I

    .line 344
    return-void
.end method

.method public whitelist setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 622
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/PorterDuffColorFilter;

    if-eqz v0, :cond_1b

    .line 623
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    check-cast v0, Landroid/graphics/PorterDuffColorFilter;

    .line 624
    invoke-virtual {v0}, Landroid/graphics/PorterDuffColorFilter;->getColor()I

    move-result v1

    if-ne v1, p1, :cond_1b

    invoke-virtual {v0}, Landroid/graphics/PorterDuffColorFilter;->getMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    if-ne v0, p2, :cond_1b

    .line 625
    return-void

    .line 628
    :cond_1b
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 629
    return-void
.end method

.method public abstract whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
.end method

.method public whitelist setDither(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 371
    return-void
.end method

.method public whitelist setFilterBitmap(Z)V
    .registers 2

    .line 383
    return-void
.end method

.method public whitelist setHotspot(FF)V
    .registers 3

    .line 748
    return-void
.end method

.method public whitelist setHotspotBounds(IIII)V
    .registers 5

    .line 760
    return-void
.end method

.method public final whitelist setLayoutDirection(I)Z
    .registers 3

    .line 536
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mLayoutDirection:I

    if-eq v0, p1, :cond_b

    .line 537
    iput p1, p0, Landroid/graphics/drawable/Drawable;->mLayoutDirection:I

    .line 538
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->onLayoutDirectionChanged(I)Z

    move-result p1

    return p1

    .line 540
    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public final whitelist setLevel(I)Z
    .registers 3

    .line 887
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mLevel:I

    if-eq v0, p1, :cond_b

    .line 888
    iput p1, p0, Landroid/graphics/drawable/Drawable;->mLevel:I

    .line 889
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    move-result p1

    return p1

    .line 891
    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method final greylist-max-o setSrcDensityOverride(I)V
    .registers 2

    .line 1469
    iput p1, p0, Landroid/graphics/drawable/Drawable;->mSrcDensityOverride:I

    .line 1470
    return-void
.end method

.method public whitelist setState([I)Z
    .registers 3

    .line 835
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mStateSet:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 836
    iput-object p1, p0, Landroid/graphics/drawable/Drawable;->mStateSet:[I

    .line 837
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result p1

    return p1

    .line 839
    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist setTint(I)V
    .registers 2

    .line 653
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 654
    return-void
.end method

.method public whitelist setTintBlendMode(Landroid/graphics/BlendMode;)V
    .registers 3

    .line 718
    iget-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mSetBlendModeInvoked:Z

    if-nez v0, :cond_16

    .line 719
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mSetBlendModeInvoked:Z

    .line 720
    invoke-static {p1}, Landroid/graphics/BlendMode;->blendModeToPorterDuffMode(Landroid/graphics/BlendMode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    .line 721
    if-eqz p1, :cond_e

    goto :goto_10

    :cond_e
    sget-object p1, Landroid/graphics/drawable/Drawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    :goto_10
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 722
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/graphics/drawable/Drawable;->mSetBlendModeInvoked:Z

    .line 724
    :cond_16
    return-void
.end method

.method public whitelist setTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 674
    return-void
.end method

.method public whitelist setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 694
    iget-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mSetTintModeInvoked:Z

    if-nez v0, :cond_1c

    .line 695
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mSetTintModeInvoked:Z

    .line 696
    if-eqz p1, :cond_10

    iget p1, p1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {p1}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object p1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    .line 697
    :goto_11
    if-eqz p1, :cond_14

    goto :goto_16

    :cond_14
    sget-object p1, Landroid/graphics/drawable/Drawable;->DEFAULT_BLEND_MODE:Landroid/graphics/BlendMode;

    :goto_16
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 698
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/graphics/drawable/Drawable;->mSetTintModeInvoked:Z

    .line 700
    :cond_1c
    return-void
.end method

.method public whitelist setVisible(ZZ)Z
    .registers 3

    .line 918
    iget-boolean p2, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    if-eq p2, p1, :cond_6

    const/4 p2, 0x1

    goto :goto_7

    :cond_6
    const/4 p2, 0x0

    .line 919
    :goto_7
    if-eqz p2, :cond_e

    .line 920
    iput-boolean p1, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    .line 921
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 923
    :cond_e
    return p2
.end method

.method public greylist-max-o setXfermode(Landroid/graphics/Xfermode;)V
    .registers 2

    .line 584
    return-void
.end method

.method public whitelist unscheduleSelf(Ljava/lang/Runnable;)V
    .registers 3

    .line 505
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 506
    if-eqz v0, :cond_9

    .line 507
    invoke-interface {v0, p0, p1}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 509
    :cond_9
    return-void
.end method

.method blacklist updateBlendModeFilter(Landroid/graphics/BlendModeColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/BlendMode;)Landroid/graphics/BlendModeColorFilter;
    .registers 6

    .line 1593
    if-eqz p2, :cond_24

    if-nez p3, :cond_5

    goto :goto_24

    .line 1597
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p2

    .line 1598
    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Landroid/graphics/BlendModeColorFilter;->getColor()I

    move-result v0

    if-ne v0, p2, :cond_1e

    .line 1599
    invoke-virtual {p1}, Landroid/graphics/BlendModeColorFilter;->getMode()Landroid/graphics/BlendMode;

    move-result-object v0

    if-eq v0, p3, :cond_1d

    goto :goto_1e

    .line 1602
    :cond_1d
    return-object p1

    .line 1600
    :cond_1e
    :goto_1e
    new-instance p1, Landroid/graphics/BlendModeColorFilter;

    invoke-direct {p1, p2, p3}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    return-object p1

    .line 1594
    :cond_24
    :goto_24
    const/4 p1, 0x0

    return-object p1
.end method

.method greylist updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .registers 6

    .line 1578
    if-eqz p2, :cond_24

    if-nez p3, :cond_5

    goto :goto_24

    .line 1582
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p2

    .line 1583
    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Landroid/graphics/PorterDuffColorFilter;->getColor()I

    move-result v0

    if-ne v0, p2, :cond_1e

    .line 1584
    invoke-virtual {p1}, Landroid/graphics/PorterDuffColorFilter;->getMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    if-eq v0, p3, :cond_1d

    goto :goto_1e

    .line 1588
    :cond_1d
    return-object p1

    .line 1585
    :cond_1e
    :goto_1e
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p1, p2, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p1

    .line 1579
    :cond_24
    :goto_24
    const/4 p1, 0x0

    return-object p1
.end method
