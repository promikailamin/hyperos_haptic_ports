.class public Landroid/inputmethodservice/Keyboard$Key;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/Keyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# static fields
.field private static final greylist-max-o KEY_STATE_NORMAL:[I

.field private static final greylist-max-o KEY_STATE_NORMAL_OFF:[I

.field private static final greylist-max-o KEY_STATE_NORMAL_ON:[I

.field private static final greylist-max-o KEY_STATE_PRESSED:[I

.field private static final greylist-max-o KEY_STATE_PRESSED_OFF:[I

.field private static final greylist-max-o KEY_STATE_PRESSED_ON:[I


# instance fields
.field public whitelist codes:[I

.field public whitelist edgeFlags:I

.field public whitelist gap:I

.field public whitelist height:I

.field public whitelist icon:Landroid/graphics/drawable/Drawable;

.field public whitelist iconPreview:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o keyboard:Landroid/inputmethodservice/Keyboard;

.field public whitelist label:Ljava/lang/CharSequence;

.field public whitelist modifier:Z

.field public whitelist on:Z

.field public whitelist popupCharacters:Ljava/lang/CharSequence;

.field public whitelist popupResId:I

.field public whitelist pressed:Z

.field public whitelist repeatable:Z

.field public whitelist sticky:Z

.field public whitelist text:Ljava/lang/CharSequence;

.field public whitelist width:I

.field public whitelist x:I

.field public whitelist y:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 297
    const v0, 0x101009f

    const v1, 0x10100a0

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sput-object v2, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_NORMAL_ON:[I

    .line 302
    const v2, 0x10100a7

    filled-new-array {v2, v0, v1}, [I

    move-result-object v1

    sput-object v1, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_PRESSED_ON:[I

    .line 308
    filled-new-array {v0}, [I

    move-result-object v1

    sput-object v1, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_NORMAL_OFF:[I

    .line 312
    filled-new-array {v2, v0}, [I

    move-result-object v0

    sput-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_PRESSED_OFF:[I

    .line 317
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_NORMAL:[I

    .line 320
    filled-new-array {v2}, [I

    move-result-object v0

    sput-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_PRESSED:[I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V
    .registers 10

    .line 343
    invoke-direct {p0, p2}, Landroid/inputmethodservice/Keyboard$Key;-><init>(Landroid/inputmethodservice/Keyboard$Row;)V

    .line 345
    iput p3, p0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    .line 346
    iput p4, p0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    .line 348
    invoke-static {p5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p3

    sget-object p4, Lcom/android/internal/R$styleable;->Keyboard:[I

    invoke-virtual {p1, p3, p4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 351
    iget-object p4, p0, Landroid/inputmethodservice/Keyboard$Key;->keyboard:Landroid/inputmethodservice/Keyboard;

    invoke-static {p4}, Landroid/inputmethodservice/Keyboard;->-$$Nest$fgetmDisplayWidth(Landroid/inputmethodservice/Keyboard;)I

    move-result p4

    iget v0, p2, Landroid/inputmethodservice/Keyboard$Row;->defaultWidth:I

    const/4 v1, 0x0

    invoke-static {p3, v1, p4, v0}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result p4

    iput p4, p0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    .line 354
    iget-object p4, p0, Landroid/inputmethodservice/Keyboard$Key;->keyboard:Landroid/inputmethodservice/Keyboard;

    invoke-static {p4}, Landroid/inputmethodservice/Keyboard;->-$$Nest$fgetmDisplayHeight(Landroid/inputmethodservice/Keyboard;)I

    move-result p4

    iget v0, p2, Landroid/inputmethodservice/Keyboard$Row;->defaultHeight:I

    const/4 v2, 0x1

    invoke-static {p3, v2, p4, v0}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result p4

    iput p4, p0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    .line 357
    iget-object p4, p0, Landroid/inputmethodservice/Keyboard$Key;->keyboard:Landroid/inputmethodservice/Keyboard;

    invoke-static {p4}, Landroid/inputmethodservice/Keyboard;->-$$Nest$fgetmDisplayWidth(Landroid/inputmethodservice/Keyboard;)I

    move-result p4

    iget v0, p2, Landroid/inputmethodservice/Keyboard$Row;->defaultHorizontalGap:I

    const/4 v3, 0x2

    invoke-static {p3, v3, p4, v0}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result p4

    iput p4, p0, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    .line 360
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 361
    invoke-static {p5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p3

    sget-object p4, Lcom/android/internal/R$styleable;->Keyboard_Key:[I

    invoke-virtual {p1, p3, p4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 363
    iget p3, p0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget p4, p0, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    add-int/2addr p3, p4

    iput p3, p0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    .line 364
    new-instance p3, Landroid/util/TypedValue;

    invoke-direct {p3}, Landroid/util/TypedValue;-><init>()V

    .line 365
    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 367
    iget p4, p3, Landroid/util/TypedValue;->type:I

    const/16 p5, 0x10

    const/4 v0, 0x3

    if-eq p4, p5, :cond_79

    iget p4, p3, Landroid/util/TypedValue;->type:I

    const/16 p5, 0x11

    if-ne p4, p5, :cond_68

    goto :goto_79

    .line 370
    :cond_68
    iget p4, p3, Landroid/util/TypedValue;->type:I

    if-ne p4, v0, :cond_81

    .line 371
    iget-object p3, p3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/inputmethodservice/Keyboard$Key;->parseCSV(Ljava/lang/String;)[I

    move-result-object p3

    iput-object p3, p0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    goto :goto_81

    .line 369
    :cond_79
    :goto_79
    iget p3, p3, Landroid/util/TypedValue;->data:I

    filled-new-array {p3}, [I

    move-result-object p3

    iput-object p3, p0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    .line 374
    :cond_81
    :goto_81
    const/4 p3, 0x7

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 375
    iget-object p3, p0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_9d

    .line 376
    iget-object p3, p0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    iget-object p4, p0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p4

    iget-object p5, p0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 377
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p5

    .line 376
    invoke-virtual {p3, v1, v1, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 379
    :cond_9d
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 381
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    .line 383
    const/4 p3, 0x6

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroid/inputmethodservice/Keyboard$Key;->repeatable:Z

    .line 385
    const/4 p3, 0x4

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroid/inputmethodservice/Keyboard$Key;->modifier:Z

    .line 387
    const/4 p3, 0x5

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroid/inputmethodservice/Keyboard$Key;->sticky:Z

    .line 389
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Landroid/inputmethodservice/Keyboard$Key;->edgeFlags:I

    .line 390
    iget p3, p0, Landroid/inputmethodservice/Keyboard$Key;->edgeFlags:I

    iget p2, p2, Landroid/inputmethodservice/Keyboard$Row;->rowEdgeFlags:I

    or-int/2addr p2, p3

    iput p2, p0, Landroid/inputmethodservice/Keyboard$Key;->edgeFlags:I

    .line 392
    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 394
    iget-object p2, p0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_e8

    .line 395
    iget-object p2, p0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    iget-object p4, p0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p4

    invoke-virtual {p2, v1, v1, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 397
    :cond_e8
    const/16 p2, 0x9

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 398
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 400
    iget-object p2, p0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    if-nez p2, :cond_110

    iget-object p2, p0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_110

    .line 401
    iget-object p2, p0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    filled-new-array {p2}, [I

    move-result-object p2

    iput-object p2, p0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    .line 403
    :cond_110
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 404
    return-void
.end method

.method public constructor whitelist <init>(Landroid/inputmethodservice/Keyboard$Row;)V
    .registers 3

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    invoke-static {p1}, Landroid/inputmethodservice/Keyboard$Row;->-$$Nest$fgetparent(Landroid/inputmethodservice/Keyboard$Row;)Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard$Key;->keyboard:Landroid/inputmethodservice/Keyboard;

    .line 327
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Row;->defaultHeight:I

    iput v0, p0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    .line 328
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Row;->defaultWidth:I

    iput v0, p0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    .line 329
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Row;->defaultHorizontalGap:I

    iput v0, p0, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    .line 330
    iget p1, p1, Landroid/inputmethodservice/Keyboard$Row;->rowEdgeFlags:I

    iput p1, p0, Landroid/inputmethodservice/Keyboard$Key;->edgeFlags:I

    .line 331
    return-void
.end method


# virtual methods
.method public whitelist getCurrentDrawableState()[I
    .registers 3

    .line 502
    sget-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_NORMAL:[I

    .line 504
    iget-boolean v1, p0, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    if-eqz v1, :cond_10

    .line 505
    iget-boolean v0, p0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_d

    .line 506
    sget-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_PRESSED_ON:[I

    goto :goto_24

    .line 508
    :cond_d
    sget-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_NORMAL_ON:[I

    goto :goto_24

    .line 511
    :cond_10
    iget-boolean v1, p0, Landroid/inputmethodservice/Keyboard$Key;->sticky:Z

    if-eqz v1, :cond_1e

    .line 512
    iget-boolean v0, p0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_1b

    .line 513
    sget-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_PRESSED_OFF:[I

    goto :goto_24

    .line 515
    :cond_1b
    sget-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_NORMAL_OFF:[I

    goto :goto_24

    .line 518
    :cond_1e
    iget-boolean v1, p0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v1, :cond_24

    .line 519
    sget-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_PRESSED:[I

    .line 523
    :cond_24
    :goto_24
    return-object v0
.end method

.method public whitelist isInside(II)Z
    .registers 10

    .line 470
    iget v0, p0, Landroid/inputmethodservice/Keyboard$Key;->edgeFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-lez v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    .line 471
    :goto_a
    iget v3, p0, Landroid/inputmethodservice/Keyboard$Key;->edgeFlags:I

    and-int/lit8 v3, v3, 0x2

    if-lez v3, :cond_12

    move v3, v1

    goto :goto_13

    :cond_12
    move v3, v2

    .line 472
    :goto_13
    iget v4, p0, Landroid/inputmethodservice/Keyboard$Key;->edgeFlags:I

    and-int/lit8 v4, v4, 0x4

    if-lez v4, :cond_1b

    move v4, v1

    goto :goto_1c

    :cond_1b
    move v4, v2

    .line 473
    :goto_1c
    iget v5, p0, Landroid/inputmethodservice/Keyboard$Key;->edgeFlags:I

    and-int/lit8 v5, v5, 0x8

    if-lez v5, :cond_24

    move v5, v1

    goto :goto_25

    :cond_24
    move v5, v2

    .line 474
    :goto_25
    iget v6, p0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    if-ge p1, v6, :cond_32

    if-eqz v0, :cond_5a

    iget v0, p0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v6, p0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v0, v6

    if-gt p1, v0, :cond_5a

    :cond_32
    iget v0, p0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v6, p0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v0, v6

    if-lt p1, v0, :cond_3f

    if-eqz v3, :cond_5a

    iget v0, p0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    if-lt p1, v0, :cond_5a

    :cond_3f
    iget p1, p0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    if-ge p2, p1, :cond_4c

    if-eqz v4, :cond_5a

    iget p1, p0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v0, p0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr p1, v0

    if-gt p2, p1, :cond_5a

    :cond_4c
    iget p1, p0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v0, p0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr p1, v0

    if-lt p2, p1, :cond_5b

    if-eqz v5, :cond_5a

    iget p1, p0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    if-lt p2, p1, :cond_5a

    goto :goto_5b

    .line 480
    :cond_5a
    return v2

    .line 478
    :cond_5b
    :goto_5b
    return v1
.end method

.method public whitelist onPressed()V
    .registers 2

    .line 412
    iget-boolean v0, p0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    .line 413
    return-void
.end method

.method public whitelist onReleased(Z)V
    .registers 3

    .line 433
    iget-boolean v0, p0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    .line 434
    iget-boolean v0, p0, Landroid/inputmethodservice/Keyboard$Key;->sticky:Z

    if-eqz v0, :cond_12

    if-eqz p1, :cond_12

    .line 435
    iget-boolean p1, p0, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    .line 437
    :cond_12
    return-void
.end method

.method greylist-max-o parseCSV(Ljava/lang/String;)[I
    .registers 7

    .line 440
    nop

    .line 441
    nop

    .line 442
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, ","

    const/4 v2, 0x0

    if-lez v0, :cond_18

    .line 443
    const/4 v0, 0x1

    move v4, v0

    move v3, v2

    .line 444
    :goto_e
    add-int/2addr v3, v0

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_19

    .line 445
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 442
    :cond_18
    move v4, v2

    .line 448
    :cond_19
    new-array v0, v4, [I

    .line 449
    nop

    .line 450
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :goto_21
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 453
    add-int/lit8 v1, v2, 0x1

    :try_start_29
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v0, v2
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_33} :catch_34

    goto :goto_4d

    .line 454
    :catch_34
    move-exception v2

    .line 455
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing keycodes "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Keyboard"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :goto_4d
    nop

    .line 451
    move v2, v1

    goto :goto_21

    .line 458
    :cond_50
    return-object v0
.end method

.method public whitelist squaredDistanceFrom(II)I
    .registers 5

    .line 491
    iget v0, p0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v1, p0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    .line 492
    iget p1, p0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v1, p0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    sub-int/2addr p1, p2

    .line 493
    mul-int/2addr v0, v0

    mul-int/2addr p1, p1

    add-int/2addr v0, p1

    return v0
.end method
