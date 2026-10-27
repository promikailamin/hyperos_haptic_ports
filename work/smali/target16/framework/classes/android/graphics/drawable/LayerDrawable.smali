.class public Landroid/graphics/drawable/LayerDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LayerDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/LayerDrawable$LayerState;,
        Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    }
.end annotation


# static fields
.field public static final whitelist INSET_UNDEFINED:I = -0x80000000

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "LayerDrawable"

.field public static final whitelist PADDING_MODE_NEST:I = 0x0

.field public static final whitelist PADDING_MODE_STACK:I = 0x1


# instance fields
.field private greylist-max-o mChildRequestedInvalidation:Z

.field private greylist-max-o mHotspotBounds:Landroid/graphics/Rect;

.field greylist mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

.field private greylist-max-o mMutated:Z

.field private greylist-max-o mPaddingB:[I

.field private greylist-max-o mPaddingL:[I

.field private greylist-max-o mPaddingR:[I

.field private greylist-max-o mPaddingT:[I

.field private greylist-max-o mSuspendChildInvalidation:Z

.field private final greylist-max-o mTmpContainer:Landroid/graphics/Rect;

.field private final greylist-max-o mTmpOutRect:Landroid/graphics/Rect;

.field private final greylist-max-o mTmpRect:Landroid/graphics/Rect;


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 3

    .line 159
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    .line 160
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V
    .registers 4

    .line 166
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 107
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mTmpOutRect:Landroid/graphics/Rect;

    .line 109
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mTmpContainer:Landroid/graphics/Rect;

    .line 167
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;->createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/LayerDrawable$LayerState;

    move-result-object p1

    iput-object p1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 168
    iget-object p1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget p1, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    if-lez p1, :cond_2a

    .line 169
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->ensurePadding()V

    .line 170
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->refreshPadding()V

    .line 172
    :cond_2a
    return-void
.end method

.method public constructor whitelist <init>([Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/LayerDrawable$LayerState;)V

    .line 124
    return-void
.end method

.method constructor greylist-max-o <init>([Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/LayerDrawable$LayerState;)V
    .registers 8

    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    .line 136
    if-eqz p1, :cond_3f

    .line 140
    array-length p2, p1

    .line 141
    new-array v0, p2, [Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 142
    const/4 v1, 0x0

    :goto_a
    if-ge v1, p2, :cond_30

    .line 143
    new-instance v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v3, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    invoke-direct {v2, v3}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;-><init>(I)V

    aput-object v2, v0, v1

    .line 144
    aget-object v2, p1, v1

    .line 145
    aget-object v3, v0, v1

    iput-object v2, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 146
    if-eqz v2, :cond_2d

    .line 147
    invoke-virtual {v2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 148
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v2, v4

    iput v2, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 142
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 151
    :cond_30
    iget-object p1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iput p2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 152
    iget-object p1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iput-object v0, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 154
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->ensurePadding()V

    .line 155
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->refreshPadding()V

    .line 156
    return-void

    .line 137
    :cond_3f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "layers must be non-null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist-max-o computeNestedPadding(Landroid/graphics/Rect;)V
    .registers 7

    .line 1236
    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1237
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 1238
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1239
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 1242
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1243
    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v2, v2, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1244
    nop

    :goto_12
    if-ge v0, v2, :cond_40

    .line 1245
    aget-object v3, v1, v0

    invoke-direct {p0, v0, v3}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    .line 1247
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    aget v4, v4, v0

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 1248
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    aget v4, v4, v0

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 1249
    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    aget v4, v4, v0

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 1250
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    aget v4, v4, v0

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 1244
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 1252
    :cond_40
    return-void
.end method

.method private greylist-max-o computeStackedPadding(Landroid/graphics/Rect;)V
    .registers 7

    .line 1255
    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1256
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 1257
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1258
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 1261
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1262
    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v2, v2, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1263
    nop

    :goto_12
    if-ge v0, v2, :cond_4c

    .line 1264
    aget-object v3, v1, v0

    invoke-direct {p0, v0, v3}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    .line 1266
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    aget v4, v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 1267
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    aget v4, v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 1268
    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    aget v4, v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 1269
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    aget v4, v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 1263
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 1271
    :cond_4c
    return-void
.end method

.method private greylist-max-o createLayer(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .registers 4

    .line 490
    new-instance v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;-><init>(I)V

    .line 491
    iput-object p1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 492
    return-object v0
.end method

.method private greylist-max-o getFirstNonNullDrawable()Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 1418
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1419
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1420
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_15

    .line 1421
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1422
    if-eqz v3, :cond_12

    .line 1423
    return-object v3

    .line 1420
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1426
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o inflateLayers(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 253
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 256
    :cond_8
    :goto_8
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-eq v3, v2, :cond_8f

    .line 257
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-ge v4, v1, :cond_17

    const/4 v5, 0x3

    if-eq v3, v5, :cond_8f

    .line 258
    :cond_17
    const/4 v5, 0x2

    if-eq v3, v5, :cond_1b

    .line 259
    goto :goto_8

    .line 262
    :cond_1b
    if-gt v4, v1, :cond_8

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "item"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 263
    goto :goto_8

    .line 266
    :cond_2b
    new-instance v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    invoke-direct {v3, v4}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;-><init>(I)V

    .line 267
    sget-object v4, Lcom/android/internal/R$styleable;->LayerDrawableItem:[I

    invoke-static {p1, p4, p3, v4}, Landroid/graphics/drawable/LayerDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 268
    invoke-direct {p0, v3, v4}, Landroid/graphics/drawable/LayerDrawable;->updateLayerFromTypedArray(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;Landroid/content/res/TypedArray;)V

    .line 269
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 275
    iget-object v4, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_8a

    iget-object v4, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    const/4 v6, 0x4

    if-eqz v4, :cond_4d

    iget-object v4, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    aget v4, v4, v6

    if-nez v4, :cond_8a

    .line 277
    :cond_4d
    :goto_4d
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    if-ne v4, v6, :cond_54

    goto :goto_4d

    .line 279
    :cond_54
    if-ne v4, v5, :cond_6d

    .line 286
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 287
    iget-object v4, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 288
    iget v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    iget-object v5, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 289
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v5

    or-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    goto :goto_8a

    .line 280
    :cond_6d
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 292
    :cond_8a
    :goto_8a
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/LayerDrawable;->addLayer(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;)I

    .line 293
    goto/16 :goto_8

    .line 294
    :cond_8f
    return-void
.end method

.method private greylist-max-o refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z
    .registers 5

    .line 1732
    iget-object v0, p2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_45

    .line 1733
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 1734
    iget-object p2, p2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1735
    iget p2, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    aget v1, v1, p1

    if-ne p2, v1, :cond_2b

    iget p2, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    aget v1, v1, p1

    if-ne p2, v1, :cond_2b

    iget p2, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    aget v1, v1, p1

    if-ne p2, v1, :cond_2b

    iget p2, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    aget v1, v1, p1

    if-eq p2, v1, :cond_45

    .line 1737
    :cond_2b
    iget-object p2, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    iget v1, v0, Landroid/graphics/Rect;->left:I

    aput v1, p2, p1

    .line 1738
    iget-object p2, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    aput v1, p2, p1

    .line 1739
    iget-object p2, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    aput v1, p2, p1

    .line 1740
    iget-object p2, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    aput v0, p2, p1

    .line 1741
    const/4 p1, 0x1

    return p1

    .line 1744
    :cond_45
    const/4 p1, 0x0

    return p1
.end method

.method private static greylist-max-o resolveGravity(IIIII)I
    .registers 6

    .line 1621
    invoke-static {p0}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1622
    if-gez p1, :cond_b

    .line 1623
    or-int/lit8 p0, p0, 0x7

    goto :goto_f

    .line 1625
    :cond_b
    const v0, 0x800003

    or-int/2addr p0, v0

    .line 1629
    :cond_f
    :goto_f
    invoke-static {p0}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1630
    if-gez p2, :cond_1a

    .line 1631
    or-int/lit8 p0, p0, 0x70

    goto :goto_1c

    .line 1633
    :cond_1a
    or-int/lit8 p0, p0, 0x30

    .line 1640
    :cond_1c
    :goto_1c
    if-gez p1, :cond_22

    if-gez p3, :cond_22

    .line 1641
    or-int/lit8 p0, p0, 0x7

    .line 1644
    :cond_22
    if-gez p2, :cond_28

    if-gez p4, :cond_28

    .line 1645
    or-int/lit8 p0, p0, 0x70

    .line 1648
    :cond_28
    return p0
.end method

.method private greylist-max-o resumeChildInvalidation()V
    .registers 3

    .line 981
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable;->mSuspendChildInvalidation:Z

    .line 983
    iget-boolean v1, p0, Landroid/graphics/drawable/LayerDrawable;->mChildRequestedInvalidation:Z

    if-eqz v1, :cond_c

    .line 984
    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable;->mChildRequestedInvalidation:Z

    .line 985
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->invalidateSelf()V

    .line 987
    :cond_c
    return-void
.end method

.method private greylist-max-o setLayerInsetInternal(IIIIIII)V
    .registers 9

    .line 925
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object p1, v0, p1

    .line 926
    iput p2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    .line 927
    iput p3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    .line 928
    iput p4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    .line 929
    iput p5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    .line 930
    iput p6, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    .line 931
    iput p7, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    .line 932
    return-void
.end method

.method private greylist-max-o suspendChildInvalidation()V
    .registers 2

    .line 971
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable;->mSuspendChildInvalidation:Z

    .line 972
    return-void
.end method

.method private greylist-max-o updateLayerBounds(Landroid/graphics/Rect;)V
    .registers 2

    .line 1542
    :try_start_0
    invoke-direct {p0}, Landroid/graphics/drawable/LayerDrawable;->suspendChildInvalidation()V

    .line 1543
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->updateLayerBoundsInternal(Landroid/graphics/Rect;)V
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_b

    .line 1545
    invoke-direct {p0}, Landroid/graphics/drawable/LayerDrawable;->resumeChildInvalidation()V

    .line 1546
    nop

    .line 1547
    return-void

    .line 1545
    :catchall_b
    move-exception p1

    invoke-direct {p0}, Landroid/graphics/drawable/LayerDrawable;->resumeChildInvalidation()V

    .line 1546
    throw p1
.end method

.method private greylist-max-o updateLayerBoundsInternal(Landroid/graphics/Rect;)V
    .registers 23

    .line 1550
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1551
    nop

    .line 1552
    nop

    .line 1553
    nop

    .line 1555
    iget-object v6, v0, Landroid/graphics/drawable/LayerDrawable;->mTmpOutRect:Landroid/graphics/Rect;

    .line 1556
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getLayoutDirection()I

    move-result v7

    .line 1557
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v7, v3, :cond_13

    move v8, v3

    goto :goto_14

    :cond_13
    move v8, v2

    .line 1558
    :goto_14
    iget-object v4, v0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-static {v4}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-$$Nest$fgetmPaddingMode(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    move-result v4

    if-nez v4, :cond_1e

    move v9, v3

    goto :goto_1f

    :cond_1e
    move v9, v2

    .line 1559
    :goto_1f
    iget-object v3, v0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v10, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1561
    iget-object v3, v0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v11, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    move v12, v2

    move v13, v12

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    :goto_2d
    if-ge v12, v11, :cond_c6

    .line 1562
    aget-object v2, v10, v12

    .line 1563
    iget-object v3, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1564
    if-nez v3, :cond_39

    .line 1565
    move/from16 v20, v7

    goto/16 :goto_be

    .line 1568
    :cond_39
    iget v4, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    .line 1569
    iget v5, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    .line 1573
    if-eqz v8, :cond_44

    move-object/from16 v17, v3

    iget v3, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    goto :goto_48

    :cond_44
    move-object/from16 v17, v3

    iget v3, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    .line 1574
    :goto_48
    if-eqz v8, :cond_4f

    move/from16 v18, v4

    iget v4, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    goto :goto_53

    :cond_4f
    move/from16 v18, v4

    iget v4, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    .line 1575
    :goto_53
    move/from16 v19, v5

    const/high16 v5, -0x80000000

    if-ne v3, v5, :cond_5b

    iget v3, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    .line 1576
    :cond_5b
    if-ne v4, v5, :cond_5f

    iget v4, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    .line 1580
    :cond_5f
    iget-object v5, v0, Landroid/graphics/drawable/LayerDrawable;->mTmpContainer:Landroid/graphics/Rect;

    .line 1581
    move/from16 v20, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int v3, v3, v20

    add-int/2addr v3, v13

    move/from16 v20, v4

    iget v4, v1, Landroid/graphics/Rect;->top:I

    add-int v4, v4, v18

    add-int/2addr v4, v14

    move-object/from16 v18, v6

    iget v6, v1, Landroid/graphics/Rect;->right:I

    sub-int v6, v6, v20

    sub-int/2addr v6, v15

    move/from16 v20, v7

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v7, v19

    sub-int v7, v7, v16

    invoke-virtual {v5, v3, v4, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1586
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 1587
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 1588
    iget v6, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    .line 1589
    iget v7, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    .line 1590
    iget v2, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    invoke-static {v2, v6, v7, v3, v4}, Landroid/graphics/drawable/LayerDrawable;->resolveGravity(IIIII)I

    move-result v2

    .line 1593
    if-gez v6, :cond_96

    goto :goto_97

    :cond_96
    move v3, v6

    .line 1594
    :goto_97
    if-gez v7, :cond_9a

    goto :goto_9b

    :cond_9a
    move v4, v7

    .line 1595
    :goto_9b
    move-object/from16 v1, v17

    move-object/from16 v6, v18

    move/from16 v7, v20

    invoke-static/range {v2 .. v7}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 1596
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1598
    if-eqz v9, :cond_be

    .line 1599
    iget-object v1, v0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    aget v1, v1, v12

    add-int/2addr v13, v1

    .line 1600
    iget-object v1, v0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    aget v1, v1, v12

    add-int/2addr v15, v1

    .line 1601
    iget-object v1, v0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    aget v1, v1, v12

    add-int/2addr v14, v1

    .line 1602
    iget-object v1, v0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    aget v1, v1, v12

    add-int v16, v16, v1

    .line 1561
    :cond_be
    :goto_be
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    move/from16 v7, v20

    goto/16 :goto_2d

    .line 1605
    :cond_c6
    return-void
.end method

.method private greylist-max-o updateLayerFromTypedArray(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;Landroid/content/res/TypedArray;)V
    .registers 8

    .line 344
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 347
    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 350
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    .line 352
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 353
    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_7d

    .line 354
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 355
    packed-switch v3, :pswitch_data_a2

    :pswitch_1f
    goto :goto_7a

    .line 372
    :pswitch_20
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    .line 373
    goto :goto_7a

    .line 369
    :pswitch_29
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    .line 370
    goto :goto_7a

    .line 366
    :pswitch_32
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    .line 367
    goto :goto_7a

    .line 363
    :pswitch_3b
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    .line 364
    goto :goto_7a

    .line 360
    :pswitch_44
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    .line 361
    goto :goto_7a

    .line 357
    :pswitch_4d
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    .line 358
    goto :goto_7a

    .line 375
    :pswitch_56
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    .line 376
    goto :goto_7a

    .line 378
    :pswitch_5f
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    .line 379
    goto :goto_7a

    .line 384
    :pswitch_68
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    goto :goto_7a

    .line 381
    :pswitch_71
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    .line 382
    nop

    .line 353
    :goto_7a
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 389
    :cond_7d
    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 390
    if-eqz p2, :cond_a0

    .line 391
    iget-object v1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_8e

    .line 396
    iget-object v1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 400
    :cond_8e
    iput-object p2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 401
    iget-object p2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 402
    iget p2, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    iget-object p1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 403
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result p1

    or-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 405
    :cond_a0
    return-void

    nop

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_71
        :pswitch_68
        :pswitch_5f
        :pswitch_56
        :pswitch_1f
        :pswitch_4d
        :pswitch_44
        :pswitch_3b
        :pswitch_32
        :pswitch_29
        :pswitch_20
    .end packed-switch
.end method

.method private greylist-max-o updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .registers 7

    .line 300
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 303
    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    .line 306
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-$$Nest$fputmThemeAttrs(Landroid/graphics/drawable/LayerDrawable$LayerState;[I)V

    .line 308
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 309
    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_7b

    .line 310
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 311
    packed-switch v3, :pswitch_data_7c

    goto :goto_78

    .line 337
    :pswitch_21
    invoke-static {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-$$Nest$fgetmPaddingMode(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    invoke-static {v0, v3}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-$$Nest$fputmPaddingMode(Landroid/graphics/drawable/LayerDrawable$LayerState;I)V

    goto :goto_78

    .line 334
    :pswitch_2d
    invoke-static {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-$$Nest$fgetmAutoMirrored(Landroid/graphics/drawable/LayerDrawable$LayerState;)Z

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-static {v0, v3}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-$$Nest$fputmAutoMirrored(Landroid/graphics/drawable/LayerDrawable$LayerState;Z)V

    .line 335
    goto :goto_78

    .line 331
    :pswitch_39
    iget v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    .line 332
    goto :goto_78

    .line 328
    :pswitch_42
    iget v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    .line 329
    goto :goto_78

    .line 313
    :pswitch_4b
    iget v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    .line 314
    goto :goto_78

    .line 319
    :pswitch_54
    iget v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    .line 320
    goto :goto_78

    .line 325
    :pswitch_5d
    iget v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    .line 326
    goto :goto_78

    .line 316
    :pswitch_66
    iget v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    .line 317
    goto :goto_78

    .line 322
    :pswitch_6f
    iget v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    .line 323
    nop

    .line 309
    :goto_78
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 341
    :cond_7b
    return-void

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_6f
        :pswitch_66
        :pswitch_5d
        :pswitch_54
        :pswitch_4b
        :pswitch_42
        :pswitch_39
        :pswitch_2d
        :pswitch_21
    .end packed-switch
.end method


# virtual methods
.method public whitelist addLayer(Landroid/graphics/drawable/Drawable;)I
    .registers 3

    .line 503
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->createLayer(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    move-result-object p1

    .line 504
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->addLayer(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;)I

    move-result v0

    .line 505
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->ensurePadding()V

    .line 506
    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    .line 507
    return v0
.end method

.method greylist-max-r addLayer(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;)I
    .registers 7

    .line 441
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 442
    iget-object v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    iget-object v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    array-length v1, v1

    goto :goto_c

    :cond_b
    move v1, v2

    .line 443
    :goto_c
    iget v3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 444
    if-lt v3, v1, :cond_1d

    .line 445
    add-int/lit8 v1, v1, 0xa

    new-array v1, v1, [Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 446
    if-lez v3, :cond_1b

    .line 447
    iget-object v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    invoke-static {v4, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 450
    :cond_1b
    iput-object v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 453
    :cond_1d
    iget-object v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aput-object p1, v1, v3

    .line 454
    iget p1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 455
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->invalidateCache()V

    .line 456
    return v3
.end method

.method greylist-max-o addLayer(Landroid/graphics/drawable/Drawable;[IIIIII)Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .registers 9

    .line 472
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->createLayer(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    move-result-object v0

    .line 473
    iput p3, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    .line 474
    iput-object p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    .line 475
    iget-object p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->isAutoMirrored()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 476
    iput p4, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    .line 477
    iput p5, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    .line 478
    iput p6, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    .line 479
    iput p7, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    .line 481
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->addLayer(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;)I

    .line 483
    iget-object p2, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget p3, p2, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result p4

    or-int/2addr p3, p4

    iput p3, p2, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 484
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 486
    return-object v0
.end method

.method public whitelist applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 10

    .line 209
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 211
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 212
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v1

    .line 213
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable$LayerState;->setDensity(I)V

    .line 215
    invoke-static {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-$$Nest$fgetmThemeAttrs(Landroid/graphics/drawable/LayerDrawable$LayerState;)[I

    move-result-object v3

    if-eqz v3, :cond_27

    .line 216
    invoke-static {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-$$Nest$fgetmThemeAttrs(Landroid/graphics/drawable/LayerDrawable$LayerState;)[I

    move-result-object v3

    sget-object v4, Lcom/android/internal/R$styleable;->LayerDrawable:[I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 218
    invoke-direct {p0, v3}, Landroid/graphics/drawable/LayerDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 219
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 222
    :cond_27
    iget-object v3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 223
    iget v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 224
    nop

    :goto_2c
    if-ge v2, v4, :cond_5e

    .line 225
    aget-object v5, v3, v2

    .line 226
    invoke-virtual {v5, v1}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->setDensity(I)V

    .line 228
    iget-object v6, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    if-eqz v6, :cond_45

    .line 229
    iget-object v6, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    sget-object v7, Lcom/android/internal/R$styleable;->LayerDrawableItem:[I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 231
    invoke-direct {p0, v5, v6}, Landroid/graphics/drawable/LayerDrawable;->updateLayerFromTypedArray(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;Landroid/content/res/TypedArray;)V

    .line 232
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 235
    :cond_45
    iget-object v5, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 236
    if-eqz v5, :cond_5b

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 237
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 240
    iget v6, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v5

    or-int/2addr v5, v6

    iput v5, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 224
    :cond_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 243
    :cond_5e
    return-void
.end method

.method public whitelist canApplyTheme()Z
    .registers 2

    .line 409
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public greylist-max-o clearMutated()V
    .registers 6

    .line 1801
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 1803
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1804
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1805
    const/4 v2, 0x0

    move v3, v2

    :goto_d
    if-ge v3, v1, :cond_1b

    .line 1806
    aget-object v4, v0, v3

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1807
    if-eqz v4, :cond_18

    .line 1808
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 1805
    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 1811
    :cond_1b
    iput-boolean v2, p0, Landroid/graphics/drawable/LayerDrawable;->mMutated:Z

    .line 1812
    return-void
.end method

.method greylist-max-o createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/LayerDrawable$LayerState;
    .registers 4

    .line 175
    new-instance v0, Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/LayerDrawable$LayerState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/LayerDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 1015
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1016
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1017
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_17

    .line 1018
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1019
    if-eqz v3, :cond_14

    .line 1020
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1017
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1023
    :cond_17
    return-void
.end method

.method greylist ensurePadding()V
    .registers 3

    .line 1752
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1753
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    if-eqz v1, :cond_e

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    array-length v1, v1

    if-lt v1, v0, :cond_e

    .line 1754
    return-void

    .line 1757
    :cond_e
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    .line 1758
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    .line 1759
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    .line 1760
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    .line 1761
    return-void
.end method

.method public whitelist findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 521
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 522
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    add-int/lit8 v1, v1, -0x1

    :goto_a
    if-ltz v1, :cond_1a

    .line 523
    aget-object v2, v0, v1

    iget v2, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    if-ne v2, p1, :cond_17

    .line 524
    aget-object p1, v0, v1

    iget-object p1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1

    .line 522
    :cond_17
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 528
    :cond_1a
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist findIndexByLayerId(I)I
    .registers 6

    .line 600
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 601
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 602
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_15

    .line 603
    aget-object v3, v0, v2

    .line 604
    iget v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    if-ne v3, p1, :cond_12

    .line 605
    return v2

    .line 602
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 609
    :cond_15
    const/4 p1, -0x1

    return p1
.end method

.method public whitelist getAlpha()I
    .registers 2

    .line 1373
    invoke-direct {p0}, Landroid/graphics/drawable/LayerDrawable;->getFirstNonNullDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1374
    if-eqz v0, :cond_b

    .line 1375
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0

    .line 1377
    :cond_b
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public whitelist getBottomPadding()I
    .registers 2

    .line 1232
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    return v0
.end method

.method public whitelist getChangingConfigurations()I
    .registers 3

    .line 1027
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable$LayerState;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public whitelist getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    .line 1773
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1774
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    .line 1775
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    return-object v0

    .line 1777
    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 659
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    if-ge p1, v0, :cond_f

    .line 662
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object p1, v0, p1

    iget-object p1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1

    .line 660
    :cond_f
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public whitelist getEndPadding()I
    .registers 2

    .line 1198
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    return v0
.end method

.method public whitelist getHotspotBounds(Landroid/graphics/Rect;)V
    .registers 3

    .line 1325
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_a

    .line 1326
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_d

    .line 1328
    :cond_a
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    .line 1330
    :goto_d
    return-void
.end method

.method public whitelist getId(I)I
    .registers 3

    .line 557
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    if-ge p1, v0, :cond_f

    .line 560
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object p1, v0, p1

    iget p1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    return p1

    .line 558
    :cond_f
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public whitelist getIntrinsicHeight()I
    .registers 12

    .line 1696
    nop

    .line 1697
    nop

    .line 1698
    nop

    .line 1700
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-static {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-$$Nest$fgetmPaddingMode(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    move v0, v1

    .line 1701
    :goto_f
    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v2, v2, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1702
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v3, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1703
    const/4 v4, -0x1

    move v5, v1

    move v6, v5

    move v7, v4

    :goto_1b
    if-ge v1, v3, :cond_4f

    .line 1704
    aget-object v8, v2, v1

    .line 1705
    iget-object v9, v8, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v9, :cond_24

    .line 1706
    goto :goto_4c

    .line 1711
    :cond_24
    iget v9, v8, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    if-gez v9, :cond_2f

    iget-object v9, v8, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    goto :goto_31

    :cond_2f
    iget v9, v8, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    .line 1712
    :goto_31
    if-gez v9, :cond_35

    move v9, v4

    goto :goto_3d

    :cond_35
    iget v10, v8, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    add-int/2addr v9, v10

    iget v8, v8, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    add-int/2addr v9, v8

    add-int/2addr v9, v5

    add-int/2addr v9, v6

    .line 1713
    :goto_3d
    if-le v9, v7, :cond_40

    .line 1714
    move v7, v9

    .line 1717
    :cond_40
    if-eqz v0, :cond_4c

    .line 1718
    iget-object v8, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    aget v8, v8, v1

    add-int/2addr v5, v8

    .line 1719
    iget-object v8, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    aget v8, v8, v1

    add-int/2addr v6, v8

    .line 1703
    :cond_4c
    :goto_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 1723
    :cond_4f
    return v7
.end method

.method public whitelist getIntrinsicWidth()I
    .registers 14

    .line 1653
    nop

    .line 1654
    nop

    .line 1655
    nop

    .line 1657
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-static {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-$$Nest$fgetmPaddingMode(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_f

    move v0, v1

    goto :goto_10

    :cond_f
    move v0, v2

    .line 1658
    :goto_10
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getLayoutDirection()I

    move-result v3

    if-ne v3, v1, :cond_17

    goto :goto_18

    :cond_17
    move v1, v2

    .line 1659
    :goto_18
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1660
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v4, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1661
    const/4 v5, -0x1

    move v6, v2

    move v7, v6

    move v8, v5

    :goto_24
    if-ge v2, v4, :cond_6c

    .line 1662
    aget-object v9, v3, v2

    .line 1663
    iget-object v10, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v10, :cond_2d

    .line 1664
    goto :goto_69

    .line 1672
    :cond_2d
    if-eqz v1, :cond_32

    iget v10, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    goto :goto_34

    :cond_32
    iget v10, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    .line 1673
    :goto_34
    if-eqz v1, :cond_39

    iget v11, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    goto :goto_3b

    :cond_39
    iget v11, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    .line 1674
    :goto_3b
    const/high16 v12, -0x80000000

    if-ne v10, v12, :cond_41

    iget v10, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    .line 1675
    :cond_41
    if-ne v11, v12, :cond_45

    iget v11, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    .line 1679
    :cond_45
    iget v12, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    if-gez v12, :cond_50

    iget-object v9, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    goto :goto_52

    :cond_50
    iget v9, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    .line 1680
    :goto_52
    if-gez v9, :cond_56

    move v9, v5

    goto :goto_5a

    :cond_56
    add-int/2addr v9, v10

    add-int/2addr v9, v11

    add-int/2addr v9, v6

    add-int/2addr v9, v7

    .line 1681
    :goto_5a
    if-le v9, v8, :cond_5d

    .line 1682
    move v8, v9

    .line 1685
    :cond_5d
    if-eqz v0, :cond_69

    .line 1686
    iget-object v9, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    aget v9, v9, v2

    add-int/2addr v6, v9

    .line 1687
    iget-object v9, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    aget v9, v9, v2

    add-int/2addr v7, v9

    .line 1661
    :cond_69
    :goto_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 1691
    :cond_6c
    return v8
.end method

.method public whitelist getLayerGravity(I)I
    .registers 3

    .line 761
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object p1, v0, p1

    .line 762
    iget p1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    return p1
.end method

.method public whitelist getLayerHeight(I)I
    .registers 3

    .line 724
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object p1, v0, p1

    .line 725
    iget p1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    return p1
.end method

.method public whitelist getLayerInsetBottom(I)I
    .registers 3

    .line 878
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object p1, v0, p1

    .line 879
    iget p1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    return p1
.end method

.method public whitelist getLayerInsetEnd(I)I
    .registers 3

    .line 920
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object p1, v0, p1

    .line 921
    iget p1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    return p1
.end method

.method public whitelist getLayerInsetLeft(I)I
    .registers 3

    .line 818
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object p1, v0, p1

    .line 819
    iget p1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    return p1
.end method

.method public whitelist getLayerInsetRight(I)I
    .registers 3

    .line 838
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object p1, v0, p1

    .line 839
    iget p1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    return p1
.end method

.method public whitelist getLayerInsetStart(I)I
    .registers 3

    .line 899
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object p1, v0, p1

    .line 900
    iget p1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    return p1
.end method

.method public whitelist getLayerInsetTop(I)I
    .registers 3

    .line 858
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object p1, v0, p1

    .line 859
    iget p1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    return p1
.end method

.method public whitelist getLayerWidth(I)I
    .registers 3

    .line 703
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object p1, v0, p1

    .line 704
    iget p1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    return p1
.end method

.method public whitelist getLeftPadding()I
    .registers 2

    .line 1150
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    return v0
.end method

.method public whitelist getNumberOfLayers()I
    .registers 2

    .line 569
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    return v0
.end method

.method public whitelist getOpacity()I
    .registers 2

    .line 1446
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    if-eqz v0, :cond_b

    .line 1447
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    return v0

    .line 1449
    :cond_b
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->getOpacity()I

    move-result v0

    return v0
.end method

.method public whitelist getOutline(Landroid/graphics/Outline;)V
    .registers 6

    .line 1280
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1281
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1282
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_1e

    .line 1283
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1284
    if-eqz v3, :cond_1b

    .line 1285
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 1286
    invoke-virtual {p1}, Landroid/graphics/Outline;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 1287
    return-void

    .line 1282
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1291
    :cond_1e
    return-void
.end method

.method public whitelist getPadding(Landroid/graphics/Rect;)Z
    .registers 9

    .line 1032
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 1033
    invoke-static {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-$$Nest$fgetmPaddingMode(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    move-result v1

    if-nez v1, :cond_c

    .line 1034
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->computeNestedPadding(Landroid/graphics/Rect;)V

    goto :goto_f

    .line 1036
    :cond_c
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->computeStackedPadding(Landroid/graphics/Rect;)V

    .line 1039
    :goto_f
    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    .line 1040
    iget v2, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    .line 1044
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1d

    move v3, v5

    goto :goto_1e

    :cond_1d
    move v3, v4

    .line 1045
    :goto_1e
    if-eqz v3, :cond_23

    iget v6, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    goto :goto_25

    :cond_23
    iget v6, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    .line 1046
    :goto_25
    if-eqz v3, :cond_2a

    iget v3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    goto :goto_2c

    :cond_2a
    iget v3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    .line 1047
    :goto_2c
    if-ltz v6, :cond_2f

    goto :goto_31

    :cond_2f
    iget v6, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    .line 1048
    :goto_31
    if-ltz v3, :cond_34

    goto :goto_36

    :cond_34
    iget v3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    .line 1052
    :goto_36
    if-ltz v6, :cond_3a

    .line 1053
    iput v6, p1, Landroid/graphics/Rect;->left:I

    .line 1056
    :cond_3a
    if-ltz v1, :cond_3e

    .line 1057
    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 1060
    :cond_3e
    if-ltz v3, :cond_42

    .line 1061
    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 1064
    :cond_42
    if-ltz v2, :cond_46

    .line 1065
    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 1068
    :cond_46
    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_56

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_56

    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_56

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-eqz p1, :cond_57

    :cond_56
    move v4, v5

    :cond_57
    return v4
.end method

.method public whitelist getPaddingMode()I
    .registers 2

    .line 962
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-static {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-$$Nest$fgetmPaddingMode(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    move-result v0

    return v0
.end method

.method public whitelist getRightPadding()I
    .registers 2

    .line 1166
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    return v0
.end method

.method public whitelist getStartPadding()I
    .registers 2

    .line 1182
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    return v0
.end method

.method public whitelist getTopPadding()I
    .registers 2

    .line 1215
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    return v0
.end method

.method public whitelist hasFocusStateSpecified()Z
    .registers 2

    .line 1490
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->hasFocusStateSpecified()Z

    move-result v0

    return v0
.end method

.method public whitelist inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 186
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 187
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v2

    .line 188
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable$LayerState;->setDensity(I)V

    .line 190
    sget-object v3, Lcom/android/internal/R$styleable;->LayerDrawable:[I

    invoke-static {p1, p4, p3, v3}, Landroid/graphics/drawable/LayerDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 191
    invoke-direct {p0, v3}, Landroid/graphics/drawable/LayerDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 192
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 194
    iget-object v3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 195
    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 196
    nop

    :goto_1e
    if-ge v1, v0, :cond_28

    .line 197
    aget-object v4, v3, v1

    .line 198
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->setDensity(I)V

    .line 196
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 201
    :cond_28
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/LayerDrawable;->inflateLayers(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 203
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->ensurePadding()V

    .line 204
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->refreshPadding()V

    .line 205
    return-void
.end method

.method public whitelist invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 991
    iget-boolean p1, p0, Landroid/graphics/drawable/LayerDrawable;->mSuspendChildInvalidation:Z

    if-eqz p1, :cond_8

    .line 992
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/graphics/drawable/LayerDrawable;->mChildRequestedInvalidation:Z

    goto :goto_10

    .line 997
    :cond_8
    iget-object p1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable$LayerState;->invalidateCache()V

    .line 999
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->invalidateSelf()V

    .line 1001
    :goto_10
    return-void
.end method

.method public whitelist isAutoMirrored()Z
    .registers 2

    .line 1468
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-static {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-$$Nest$fgetmAutoMirrored(Landroid/graphics/drawable/LayerDrawable$LayerState;)Z

    move-result v0

    return v0
.end method

.method public whitelist isProjected()Z
    .registers 7

    .line 417
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isProjected()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 418
    return v1

    .line 421
    :cond_8
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 422
    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v2, v2, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 423
    const/4 v3, 0x0

    move v4, v3

    :goto_12
    if-ge v4, v2, :cond_24

    .line 424
    aget-object v5, v0, v4

    iget-object v5, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 425
    if-eqz v5, :cond_21

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->isProjected()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 426
    return v1

    .line 423
    :cond_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 430
    :cond_24
    return v3
.end method

.method public whitelist isStateful()Z
    .registers 2

    .line 1485
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->isStateful()Z

    move-result v0

    return v0
.end method

.method public whitelist jumpToCurrentState()V
    .registers 5

    .line 1473
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1474
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1475
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_17

    .line 1476
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1477
    if-eqz v3, :cond_14

    .line 1478
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1475
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1481
    :cond_17
    return-void
.end method

.method public whitelist mutate()Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 1782
    iget-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable;->mMutated:Z

    if-nez v0, :cond_2d

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_2d

    .line 1783
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/LayerDrawable$LayerState;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 1784
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1785
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1786
    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v1, :cond_2a

    .line 1787
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1788
    if-eqz v3, :cond_27

    .line 1789
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 1786
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 1792
    :cond_2a
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable;->mMutated:Z

    .line 1794
    :cond_2d
    return-object p0
.end method

.method protected whitelist onBoundsChange(Landroid/graphics/Rect;)V
    .registers 2

    .line 1537
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->updateLayerBounds(Landroid/graphics/Rect;)V

    .line 1538
    return-void
.end method

.method public whitelist onLayoutDirectionChanged(I)Z
    .registers 7

    .line 1816
    nop

    .line 1818
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1819
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1820
    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v2, v1, :cond_1b

    .line 1821
    aget-object v4, v0, v2

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1822
    if-eqz v4, :cond_18

    .line 1823
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v4

    or-int/2addr v3, v4

    .line 1820
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1827
    :cond_1b
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->updateLayerBounds(Landroid/graphics/Rect;)V

    .line 1828
    return v3
.end method

.method protected whitelist onLevelChange(I)Z
    .registers 7

    .line 1516
    nop

    .line 1518
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1519
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1520
    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v2, v1, :cond_22

    .line 1521
    aget-object v4, v0, v2

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1522
    if-eqz v4, :cond_1f

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1523
    aget-object v3, v0, v2

    invoke-direct {p0, v2, v3}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    .line 1524
    const/4 v3, 0x1

    .line 1520
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1528
    :cond_22
    if-eqz v3, :cond_2b

    .line 1529
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->updateLayerBounds(Landroid/graphics/Rect;)V

    .line 1532
    :cond_2b
    return v3
.end method

.method protected whitelist onStateChange([I)Z
    .registers 8

    .line 1495
    nop

    .line 1497
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1498
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1499
    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v2, v1, :cond_28

    .line 1500
    aget-object v4, v0, v2

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1501
    if-eqz v4, :cond_25

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 1502
    aget-object v3, v0, v2

    invoke-direct {p0, v2, v3}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    .line 1503
    const/4 v3, 0x1

    .line 1499
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1507
    :cond_28
    if-eqz v3, :cond_31

    .line 1508
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->updateLayerBounds(Landroid/graphics/Rect;)V

    .line 1511
    :cond_31
    return v3
.end method

.method greylist-max-o refreshPadding()V
    .registers 5

    .line 1764
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1765
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1766
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_13

    .line 1767
    aget-object v3, v1, v2

    invoke-direct {p0, v2, v3}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    .line 1766
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1769
    :cond_13
    return-void
.end method

.method public whitelist scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 5

    .line 1005
    invoke-virtual {p0, p2, p3, p4}, Landroid/graphics/drawable/LayerDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 1006
    return-void
.end method

.method public whitelist setAlpha(I)V
    .registers 6

    .line 1361
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1362
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1363
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_17

    .line 1364
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1365
    if-eqz v3, :cond_14

    .line 1366
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1363
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1369
    :cond_17
    return-void
.end method

.method public whitelist setAutoMirrored(Z)V
    .registers 6

    .line 1454
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-static {v0, p1}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-$$Nest$fputmAutoMirrored(Landroid/graphics/drawable/LayerDrawable$LayerState;Z)V

    .line 1456
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1457
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1458
    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_1c

    .line 1459
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1460
    if-eqz v3, :cond_19

    .line 1461
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 1458
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1464
    :cond_1c
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 6

    .line 1383
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1384
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1385
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_17

    .line 1386
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1387
    if-eqz v3, :cond_14

    .line 1388
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1385
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1391
    :cond_17
    return-void
.end method

.method public whitelist setDither(Z)V
    .registers 6

    .line 1349
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1350
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1351
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_17

    .line 1352
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1353
    if-eqz v3, :cond_14

    .line 1354
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 1351
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1357
    :cond_17
    return-void
.end method

.method public whitelist setDrawable(ILandroid/graphics/drawable/Drawable;)V
    .registers 6

    .line 623
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    if-ge p1, v0, :cond_31

    .line 627
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 628
    aget-object v0, v0, p1

    .line 629
    iget-object v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_21

    .line 630
    if-eqz p2, :cond_1b

    .line 631
    iget-object v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 632
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 635
    :cond_1b
    iget-object v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 638
    :cond_21
    if-eqz p2, :cond_26

    .line 639
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 642
    :cond_26
    iput-object p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 643
    iget-object p2, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {p2}, Landroid/graphics/drawable/LayerDrawable$LayerState;->invalidateCache()V

    .line 645
    invoke-direct {p0, p1, v0}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    .line 646
    return-void

    .line 624
    :cond_31
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public whitelist setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z
    .registers 3

    .line 581
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->findIndexByLayerId(I)I

    move-result p1

    .line 582
    if-gez p1, :cond_8

    .line 583
    const/4 p1, 0x0

    return p1

    .line 586
    :cond_8
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;->setDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 587
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist setHotspot(FF)V
    .registers 7

    .line 1295
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1296
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1297
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_17

    .line 1298
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1299
    if-eqz v3, :cond_14

    .line 1300
    invoke-virtual {v3, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 1297
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1303
    :cond_17
    return-void
.end method

.method public whitelist setHotspotBounds(IIII)V
    .registers 9

    .line 1307
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1308
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1309
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_17

    .line 1310
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1311
    if-eqz v3, :cond_14

    .line 1312
    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 1309
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1316
    :cond_17
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_23

    .line 1317
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    goto :goto_28

    .line 1319
    :cond_23
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1321
    :goto_28
    return-void
.end method

.method public whitelist setId(II)V
    .registers 4

    .line 542
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object p1, v0, p1

    iput p2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    .line 543
    return-void
.end method

.method public whitelist setLayerGravity(II)V
    .registers 4

    .line 748
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object p1, v0, p1

    .line 749
    iput p2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    .line 750
    return-void
.end method

.method public whitelist setLayerHeight(II)V
    .registers 4

    .line 713
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object p1, v0, p1

    .line 714
    iput p2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    .line 715
    return-void
.end method

.method public whitelist setLayerInset(IIIII)V
    .registers 14

    .line 780
    const/high16 v6, -0x80000000

    const/high16 v7, -0x80000000

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetInternal(IIIIIII)V

    .line 781
    return-void
.end method

.method public whitelist setLayerInsetBottom(II)V
    .registers 4

    .line 868
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object p1, v0, p1

    .line 869
    iput p2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    .line 870
    return-void
.end method

.method public whitelist setLayerInsetEnd(II)V
    .registers 4

    .line 910
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object p1, v0, p1

    .line 911
    iput p2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    .line 912
    return-void
.end method

.method public whitelist setLayerInsetLeft(II)V
    .registers 4

    .line 808
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object p1, v0, p1

    .line 809
    iput p2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    .line 810
    return-void
.end method

.method public whitelist setLayerInsetRelative(IIIII)V
    .registers 14

    .line 799
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v6, p2

    move v3, p3

    move v7, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetInternal(IIIIIII)V

    .line 800
    return-void
.end method

.method public whitelist setLayerInsetRight(II)V
    .registers 4

    .line 828
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object p1, v0, p1

    .line 829
    iput p2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    .line 830
    return-void
.end method

.method public whitelist setLayerInsetStart(II)V
    .registers 4

    .line 888
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object p1, v0, p1

    .line 889
    iput p2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    .line 890
    return-void
.end method

.method public whitelist setLayerInsetTop(II)V
    .registers 4

    .line 848
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object p1, v0, p1

    .line 849
    iput p2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    .line 850
    return-void
.end method

.method public whitelist setLayerSize(III)V
    .registers 5

    .line 681
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object p1, v0, p1

    .line 682
    iput p2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    .line 683
    iput p3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    .line 684
    return-void
.end method

.method public whitelist setLayerWidth(II)V
    .registers 4

    .line 692
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object p1, v0, p1

    .line 693
    iput p2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    .line 694
    return-void
.end method

.method public whitelist setOpacity(I)V
    .registers 3

    .line 1441
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iput p1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    .line 1442
    return-void
.end method

.method public whitelist setPadding(IIII)V
    .registers 6

    .line 1093
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 1094
    iput p1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    .line 1095
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    .line 1096
    iput p3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    .line 1097
    iput p4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    .line 1100
    const/4 p1, -0x1

    iput p1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    .line 1101
    iput p1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    .line 1102
    return-void
.end method

.method public whitelist setPaddingMode(I)V
    .registers 3

    .line 950
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-static {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-$$Nest$fgetmPaddingMode(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    move-result v0

    if-eq v0, p1, :cond_d

    .line 951
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-static {v0, p1}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-$$Nest$fputmPaddingMode(Landroid/graphics/drawable/LayerDrawable$LayerState;I)V

    .line 953
    :cond_d
    return-void
.end method

.method public whitelist setPaddingRelative(IIII)V
    .registers 6

    .line 1126
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 1127
    iput p1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    .line 1128
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    .line 1129
    iput p3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    .line 1130
    iput p4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    .line 1133
    const/4 p1, -0x1

    iput p1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    .line 1134
    iput p1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    .line 1135
    return-void
.end method

.method public whitelist setTintBlendMode(Landroid/graphics/BlendMode;)V
    .registers 6

    .line 1407
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1408
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1409
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_17

    .line 1410
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1411
    if-eqz v3, :cond_14

    .line 1412
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 1409
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1415
    :cond_17
    return-void
.end method

.method public whitelist setTintList(Landroid/content/res/ColorStateList;)V
    .registers 6

    .line 1395
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1396
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1397
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_17

    .line 1398
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1399
    if-eqz v3, :cond_14

    .line 1400
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1397
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1403
    :cond_17
    return-void
.end method

.method public whitelist setVisible(ZZ)Z
    .registers 8

    .line 1334
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 1335
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1336
    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v2, v2, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1337
    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_1b

    .line 1338
    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1339
    if-eqz v4, :cond_18

    .line 1340
    invoke-virtual {v4, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1337
    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 1344
    :cond_1b
    return v0
.end method

.method public whitelist unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 3

    .line 1010
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/LayerDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 1011
    return-void
.end method
