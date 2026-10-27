.class public Landroid/content/res/ColorStateList;
.super Landroid/content/res/ComplexColor;
.source "ColorStateList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/ColorStateList$ColorStateListFactory;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEFAULT_COLOR:I = -0x10000

.field private static final greylist-max-o EMPTY:[[I

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ColorStateList"

.field private static final greylist-max-o sCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mChangingConfigurations:I

.field private greylist mColors:[I

.field private greylist mDefaultColor:I

.field private greylist mFactory:Landroid/content/res/ColorStateList$ColorStateListFactory;

.field private greylist-max-o mIsOpaque:Z

.field private greylist mStateSpecs:[[I

.field private greylist-max-o mThemeAttrs:[[I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChangingConfigurations(Landroid/content/res/ColorStateList;)I
    .registers 1

    iget p0, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 152
    const/4 v0, 0x0

    new-array v0, v0, [I

    filled-new-array {v0}, [[I

    move-result-object v0

    sput-object v0, Landroid/content/res/ColorStateList;->EMPTY:[[I

    .line 155
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    .line 785
    new-instance v0, Landroid/content/res/ColorStateList$1;

    invoke-direct {v0}, Landroid/content/res/ColorStateList$1;-><init>()V

    sput-object v0, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist <init>()V
    .registers 1

    .line 173
    invoke-direct {p0}, Landroid/content/res/ComplexColor;-><init>()V

    .line 175
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 228
    invoke-direct {p0}, Landroid/content/res/ComplexColor;-><init>()V

    .line 229
    if-eqz p1, :cond_29

    .line 230
    iget v0, p1, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    iput v0, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    .line 231
    iget-object v0, p1, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    iput-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 232
    iget v0, p1, Landroid/content/res/ColorStateList;->mDefaultColor:I

    iput v0, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    .line 233
    iget-boolean v0, p1, Landroid/content/res/ColorStateList;->mIsOpaque:Z

    iput-boolean v0, p0, Landroid/content/res/ColorStateList;->mIsOpaque:Z

    .line 236
    iget-object v0, p1, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    invoke-virtual {v0}, [[I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    .line 237
    iget-object p1, p1, Landroid/content/res/ColorStateList;->mColors:[I

    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Landroid/content/res/ColorStateList;->mColors:[I

    .line 239
    :cond_29
    return-void
.end method

.method public constructor whitelist <init>([[I[I)V
    .registers 3

    .line 181
    invoke-direct {p0}, Landroid/content/res/ComplexColor;-><init>()V

    .line 182
    iput-object p1, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 183
    iput-object p2, p0, Landroid/content/res/ColorStateList;->mColors:[I

    .line 185
    invoke-direct {p0}, Landroid/content/res/ColorStateList;->onColorsChanged()V

    .line 186
    return-void
.end method

.method private greylist-max-o applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 12

    .line 465
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    if-nez v0, :cond_5

    .line 466
    return-void

    .line 469
    :cond_5
    nop

    .line 471
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    .line 472
    array-length v1, v0

    .line 473
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_c
    if-ge v3, v1, :cond_67

    .line 474
    aget-object v5, v0, v3

    if-eqz v5, :cond_64

    .line 475
    aget-object v5, v0, v3

    sget-object v6, Lcom/android/internal/R$styleable;->ColorStateListItem:[I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 479
    aget-object v6, v0, v3

    aget v6, v6, v2

    if-eqz v6, :cond_2d

    .line 484
    iget-object v6, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget v6, v6, v3

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v6, v7

    goto :goto_2f

    .line 489
    :cond_2d
    const/high16 v6, 0x3f800000    # 1.0f

    .line 495
    :goto_2f
    aget-object v7, v0, v3

    invoke-virtual {v5, v7}, Landroid/content/res/TypedArray;->extractThemeAttrs([I)[I

    move-result-object v7

    aput-object v7, v0, v3

    .line 496
    aget-object v7, v0, v3

    const/4 v8, 0x1

    if-eqz v7, :cond_3d

    .line 497
    move v4, v8

    .line 500
    :cond_3d
    iget-object v7, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget v7, v7, v3

    invoke-virtual {v5, v2, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    .line 502
    invoke-virtual {v5, v8, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    .line 504
    const/4 v8, 0x2

    const/high16 v9, -0x40800000    # -1.0f

    invoke-virtual {v5, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    .line 506
    iget-object v9, p0, Landroid/content/res/ColorStateList;->mColors:[I

    invoke-direct {p0, v7, v6, v8}, Landroid/content/res/ColorStateList;->modulateColor(IFF)I

    move-result v6

    aput v6, v9, v3

    .line 509
    iget v6, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v7

    or-int/2addr v6, v7

    iput v6, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    .line 511
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 473
    :cond_64
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 515
    :cond_67
    if-nez v4, :cond_6c

    .line 516
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    .line 519
    :cond_6c
    invoke-direct {p0}, Landroid/content/res/ColorStateList;->onColorsChanged()V

    .line 520
    return-void
.end method

.method public static blacklist createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/content/res/ColorStateList;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 821
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 822
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 825
    :goto_a
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_a4

    .line 826
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    const-string v4, "Unhandled field while reading Icon proto!\n"

    const-string v5, "ColorStateList"

    packed-switch v2, :pswitch_data_cc

    .line 849
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 850
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 849
    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 828
    :pswitch_35
    const-wide v2, 0x50500000002L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 829
    goto :goto_a

    .line 831
    :pswitch_46
    const-wide v6, 0x20b00000001L

    invoke-virtual {p0, v6, v7}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v6

    .line 832
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 833
    :goto_54
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v8

    if-eq v8, v3, :cond_8b

    .line 834
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v8

    packed-switch v8, :pswitch_data_d4

    .line 839
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 840
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 839
    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    .line 836
    :pswitch_7a
    const-wide v8, 0x50500000001L

    invoke-virtual {p0, v8, v9}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 837
    goto :goto_54

    .line 843
    :cond_8b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [I

    .line 844
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/content/res/ColorStateList$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Landroid/content/res/ColorStateList$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-static {v3, v4}, Ljava/util/Arrays;->setAll([ILjava/util/function/IntUnaryOperator;)V

    .line 845
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 846
    invoke-virtual {p0, v6, v7}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 847
    goto/16 :goto_a

    .line 854
    :cond_a4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [[I

    .line 855
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/content/res/ColorStateList$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Landroid/content/res/ColorStateList$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    invoke-static {p0, v2}, Ljava/util/Arrays;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V

    .line 856
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 857
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/content/res/ColorStateList$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroid/content/res/ColorStateList$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-static {v0, v2}, Ljava/util/Arrays;->setAll([ILjava/util/function/IntUnaryOperator;)V

    .line 858
    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, p0, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1

    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_46
        :pswitch_35
    .end packed-switch

    :pswitch_data_d4
    .packed-switch 0x1
        :pswitch_7a
    .end packed-switch
.end method

.method public static whitelist createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 254
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 273
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_f

    const/4 v3, 0x1

    if-eq v1, v3, :cond_f

    goto :goto_4

    .line 278
    :cond_f
    if-ne v1, v2, :cond_16

    .line 282
    invoke-static {p0, p1, v0, p2}, Landroid/content/res/ColorStateList;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    .line 279
    :cond_16
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static greylist-max-o createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 297
    const-string/jumbo v1, "selector"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 302
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0}, Landroid/content/res/ColorStateList;-><init>()V

    .line 303
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/content/res/ColorStateList;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 304
    return-object v0

    .line 298
    :cond_16
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ": invalid color state list tag "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private greylist-max-o inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 353
    nop

    .line 354
    nop

    .line 356
    nop

    .line 358
    const-class v4, [I

    const/16 v5, 0x14

    invoke-static {v4, v5}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    .line 359
    array-length v5, v4

    new-array v5, v5, [[I

    .line 360
    array-length v6, v4

    new-array v6, v6, [I

    .line 361
    const/4 v7, 0x0

    const/high16 v8, -0x10000

    move v9, v7

    move v10, v9

    move v11, v10

    .line 363
    :goto_23
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    if-eq v12, v3, :cond_ef

    .line 364
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    if-ge v13, v2, :cond_37

    const/4 v14, 0x3

    if-eq v12, v14, :cond_33

    goto :goto_37

    :cond_33
    move/from16 v18, v10

    goto/16 :goto_f1

    .line 365
    :cond_37
    :goto_37
    const/4 v14, 0x2

    if-ne v12, v14, :cond_e3

    if-gt v13, v2, :cond_e3

    .line 366
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "item"

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4f

    .line 367
    move/from16 v17, v2

    move/from16 v18, v10

    goto/16 :goto_e7

    .line 370
    :cond_4f
    sget-object v12, Lcom/android/internal/R$styleable;->ColorStateListItem:[I

    move-object/from16 v13, p1

    move-object/from16 v15, p4

    invoke-static {v13, v15, v1, v12}, Landroid/content/res/Resources;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 372
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v14

    .line 373
    const v3, -0xff01

    invoke-virtual {v12, v7, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 374
    const/high16 v7, 0x3f800000    # 1.0f

    move/from16 v17, v2

    const/4 v2, 0x1

    invoke-virtual {v12, v2, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 375
    const/high16 v2, -0x40800000    # -1.0f

    move/from16 v18, v10

    const/4 v10, 0x2

    invoke-virtual {v12, v10, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 377
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v10

    or-int/2addr v9, v10

    .line 379
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 382
    nop

    .line 383
    invoke-interface {v1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v10

    .line 384
    new-array v12, v10, [I

    .line 385
    move/from16 v16, v9

    const/4 v9, 0x0

    const/4 v13, 0x0

    :goto_89
    if-ge v9, v10, :cond_b3

    .line 386
    move/from16 v19, v10

    invoke-interface {v1, v9}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v10

    .line 387
    const v15, 0x1010647

    if-ne v10, v15, :cond_97

    .line 389
    goto :goto_ac

    .line 391
    :cond_97
    sparse-switch v10, :sswitch_data_11c

    .line 397
    add-int/lit8 v15, v13, 0x1

    move/from16 v20, v15

    const/4 v15, 0x0

    invoke-interface {v1, v9, v15}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v21

    if-eqz v21, :cond_a7

    .line 398
    goto :goto_a8

    .line 395
    :sswitch_a6
    goto :goto_ac

    .line 398
    :cond_a7
    neg-int v10, v10

    :goto_a8
    aput v10, v12, v13

    move/from16 v13, v20

    .line 385
    :goto_ac
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v15, p4

    move/from16 v10, v19

    goto :goto_89

    .line 401
    :cond_b3
    invoke-static {v12, v13}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v9

    .line 406
    invoke-direct {v0, v3, v7, v2}, Landroid/content/res/ColorStateList;->modulateColor(IFF)I

    move-result v2

    .line 408
    if-eqz v11, :cond_c0

    array-length v3, v9

    if-nez v3, :cond_c1

    .line 409
    :cond_c0
    move v8, v2

    .line 412
    :cond_c1
    if-eqz v14, :cond_c5

    .line 413
    const/4 v10, 0x1

    goto :goto_c7

    .line 412
    :cond_c5
    move/from16 v10, v18

    .line 416
    :goto_c7
    invoke-static {v6, v11, v2}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v6

    .line 417
    invoke-static {v5, v11, v14}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, [[I

    .line 418
    invoke-static {v4, v11, v9}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, [[I

    .line 419
    add-int/lit8 v11, v11, 0x1

    .line 420
    move/from16 v9, v16

    move/from16 v2, v17

    const/4 v3, 0x1

    const/4 v7, 0x0

    goto/16 :goto_23

    .line 365
    :cond_e3
    move/from16 v17, v2

    move/from16 v18, v10

    .line 363
    :goto_e7
    move/from16 v2, v17

    move/from16 v10, v18

    const/4 v3, 0x1

    const/4 v7, 0x0

    goto/16 :goto_23

    :cond_ef
    move/from16 v18, v10

    .line 422
    :goto_f1
    iput v9, v0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    .line 423
    iput v8, v0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    .line 425
    if-eqz v18, :cond_102

    .line 426
    new-array v1, v11, [[I

    iput-object v1, v0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    .line 427
    iget-object v1, v0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    const/4 v15, 0x0

    invoke-static {v5, v15, v1, v15, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_105

    .line 429
    :cond_102
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    .line 432
    :goto_105
    new-array v1, v11, [I

    iput-object v1, v0, Landroid/content/res/ColorStateList;->mColors:[I

    .line 433
    new-array v1, v11, [[I

    iput-object v1, v0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 434
    iget-object v1, v0, Landroid/content/res/ColorStateList;->mColors:[I

    const/4 v15, 0x0

    invoke-static {v6, v15, v1, v15, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 435
    iget-object v1, v0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    invoke-static {v4, v15, v1, v15, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 437
    invoke-direct {v0}, Landroid/content/res/ColorStateList;->onColorsChanged()V

    .line 438
    return-void

    :sswitch_data_11c
    .sparse-switch
        0x10101a5 -> :sswitch_a6
        0x101031f -> :sswitch_a6
    .end sparse-switch
.end method

.method private blacklist modulateColor(IFF)I
    .registers 7

    .line 557
    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_e

    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    move v0, v1

    .line 558
    :goto_f
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p2, v2

    if-nez v2, :cond_18

    if-nez v0, :cond_18

    .line 559
    return p1

    .line 562
    :cond_18
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    .line 563
    int-to-float v2, v2

    mul-float/2addr v2, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr v2, p2

    float-to-int p2, v2

    const/16 v2, 0xff

    invoke-static {p2, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result p2

    .line 565
    if-eqz v0, :cond_3a

    .line 566
    invoke-static {p1}, Lcom/android/internal/graphics/ColorUtils;->colorToCAM(I)Lcom/android/internal/graphics/cam/Cam;

    move-result-object p1

    .line 567
    invoke-virtual {p1}, Lcom/android/internal/graphics/cam/Cam;->getHue()F

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/graphics/cam/Cam;->getChroma()F

    move-result p1

    invoke-static {v0, p1, p3}, Lcom/android/internal/graphics/ColorUtils;->CAMToColor(FFF)I

    move-result p1

    .line 570
    :cond_3a
    const p3, 0xffffff

    and-int/2addr p1, p3

    shl-int/lit8 p2, p2, 0x18

    or-int/2addr p1, p2

    return p1
.end method

.method private greylist-max-r onColorsChanged()V
    .registers 9

    .line 704
    nop

    .line 705
    nop

    .line 707
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 708
    iget-object v1, p0, Landroid/content/res/ColorStateList;->mColors:[I

    .line 709
    array-length v2, v0

    .line 710
    const/4 v3, 0x1

    if-lez v2, :cond_2f

    .line 711
    const/4 v4, 0x0

    aget v5, v1, v4

    .line 713
    add-int/lit8 v6, v2, -0x1

    :goto_f
    if-lez v6, :cond_1c

    .line 714
    aget-object v7, v0, v6

    array-length v7, v7

    if-nez v7, :cond_19

    .line 715
    aget v5, v1, v6

    .line 716
    goto :goto_1c

    .line 713
    :cond_19
    add-int/lit8 v6, v6, -0x1

    goto :goto_f

    .line 720
    :cond_1c
    :goto_1c
    move v0, v4

    :goto_1d
    if-ge v0, v2, :cond_31

    .line 721
    aget v6, v1, v0

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    const/16 v7, 0xff

    if-eq v6, v7, :cond_2c

    .line 722
    nop

    .line 723
    move v3, v4

    goto :goto_31

    .line 720
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 710
    :cond_2f
    const/high16 v5, -0x10000

    .line 728
    :cond_31
    :goto_31
    iput v5, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    .line 729
    iput-boolean v3, p0, Landroid/content/res/ColorStateList;->mIsOpaque:Z

    .line 730
    return-void
.end method

.method public static whitelist valueOf(I)Landroid/content/res/ColorStateList;
    .registers 5

    .line 193
    sget-object v0, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 194
    :try_start_3
    sget-object v1, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 195
    if-ltz v1, :cond_22

    .line 196
    sget-object v2, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ColorStateList;

    .line 197
    if-eqz v2, :cond_1d

    .line 198
    monitor-exit v0

    return-object v2

    .line 202
    :cond_1d
    sget-object v2, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 206
    :cond_22
    sget-object v1, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 207
    add-int/lit8 v1, v1, -0x1

    :goto_2a
    if-ltz v1, :cond_43

    .line 208
    sget-object v2, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/ref/WeakReference;->refersTo(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 209
    sget-object v2, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 207
    :cond_40
    add-int/lit8 v1, v1, -0x1

    goto :goto_2a

    .line 213
    :cond_43
    new-instance v1, Landroid/content/res/ColorStateList;

    sget-object v2, Landroid/content/res/ColorStateList;->EMPTY:[[I

    filled-new-array {p0}, [I

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 214
    sget-object v2, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 215
    monitor-exit v0

    return-object v1

    .line 216
    :catchall_5a
    move-exception p0

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_5a

    throw p0
.end method


# virtual methods
.method public greylist canApplyTheme()Z
    .registers 2

    .line 451
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 769
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getChangingConfigurations()I
    .registers 3

    .line 553
    invoke-super {p0}, Landroid/content/res/ComplexColor;->getChangingConfigurations()I

    move-result v0

    iget v1, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public whitelist getColorForState([II)I
    .registers 6

    .line 618
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    array-length v0, v0

    .line 619
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_18

    .line 620
    iget-object v2, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    aget-object v2, v2, v1

    .line 621
    invoke-static {v2, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 622
    iget-object p1, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget p1, p1, v1

    return p1

    .line 619
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 625
    :cond_18
    return p2
.end method

.method public greylist getColors()[I
    .registers 2

    .line 659
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mColors:[I

    return-object v0
.end method

.method public greylist-max-o getConstantState()Landroid/content/res/ConstantState;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConstantState<",
            "Landroid/content/res/ComplexColor;",
            ">;"
        }
    .end annotation

    .line 737
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mFactory:Landroid/content/res/ColorStateList$ColorStateListFactory;

    if-nez v0, :cond_b

    .line 738
    new-instance v0, Landroid/content/res/ColorStateList$ColorStateListFactory;

    invoke-direct {v0, p0}, Landroid/content/res/ColorStateList$ColorStateListFactory;-><init>(Landroid/content/res/ColorStateList;)V

    iput-object v0, p0, Landroid/content/res/ColorStateList;->mFactory:Landroid/content/res/ColorStateList$ColorStateListFactory;

    .line 740
    :cond_b
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mFactory:Landroid/content/res/ColorStateList$ColorStateListFactory;

    return-object v0
.end method

.method public whitelist getDefaultColor()I
    .registers 2

    .line 635
    iget v0, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    return v0
.end method

.method public greylist getStates()[[I
    .registers 2

    .line 647
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    return-object v0
.end method

.method public greylist-max-o hasFocusStateSpecified()Z
    .registers 3

    .line 592
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    const v1, 0x101009c

    invoke-static {v0, v1}, Landroid/util/StateSet;->containsAttribute([[II)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o hasState(I)Z
    .registers 11

    .line 675
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 676
    array-length v1, v0

    .line 677
    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_1f

    .line 678
    aget-object v4, v0, v3

    .line 679
    array-length v5, v4

    .line 680
    move v6, v2

    :goto_b
    if-ge v6, v5, :cond_1c

    .line 681
    aget v7, v4, v6

    if-eq v7, p1, :cond_1a

    aget v7, v4, v6

    not-int v8, p1

    if-ne v7, v8, :cond_17

    goto :goto_1a

    .line 680
    :cond_17
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 682
    :cond_1a
    :goto_1a
    const/4 p1, 0x1

    return p1

    .line 677
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 686
    :cond_1f
    return v2
.end method

.method public whitelist isOpaque()Z
    .registers 2

    .line 603
    iget-boolean v0, p0, Landroid/content/res/ColorStateList;->mIsOpaque:Z

    return v0
.end method

.method public whitelist isStateful()Z
    .registers 4

    .line 583
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_f

    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    aget-object v0, v0, v1

    array-length v0, v0

    if-lez v0, :cond_f

    move v1, v2

    :cond_f
    return v1
.end method

.method public greylist-max-r obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .registers 3

    .line 534
    if-eqz p1, :cond_12

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_12

    .line 538
    :cond_9
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, p0}, Landroid/content/res/ColorStateList;-><init>(Landroid/content/res/ColorStateList;)V

    .line 539
    invoke-direct {v0, p1}, Landroid/content/res/ColorStateList;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 540
    return-object v0

    .line 535
    :cond_12
    :goto_12
    return-object p0
.end method

.method public bridge synthetic greylist-max-r obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 147
    invoke-virtual {p0, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColorStateList{mThemeAttrs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    .line 692
    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mChangingConfigurations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mStateSpecs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 694
    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mColors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/ColorStateList;->mColors:[I

    .line 695
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mDefaultColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 691
    return-object v0
.end method

.method public whitelist withAlpha(I)Landroid/content/res/ColorStateList;
    .registers 7

    .line 316
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mColors:[I

    array-length v0, v0

    new-array v1, v0, [I

    .line 317
    nop

    .line 318
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_19

    .line 319
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget v3, v3, v2

    const v4, 0xffffff

    and-int/2addr v3, v4

    shl-int/lit8 v4, p1, 0x18

    or-int/2addr v3, v4

    aput v3, v1, v2

    .line 318
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 322
    :cond_19
    new-instance p1, Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    invoke-direct {p1, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p1
.end method

.method public whitelist withLStar(F)Landroid/content/res/ColorStateList;
    .registers 7

    .line 334
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mColors:[I

    array-length v0, v0

    new-array v1, v0, [I

    .line 335
    nop

    .line 336
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_18

    .line 337
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget v3, v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p0, v3, v4, p1}, Landroid/content/res/ColorStateList;->modulateColor(IFF)I

    move-result v3

    aput v3, v1, v2

    .line 336
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 340
    :cond_18
    new-instance p1, Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    invoke-direct {p1, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 774
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 775
    const-string p2, "ColorStateList"

    const-string v0, "Wrote partially-resolved ColorStateList to parcel!"

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_d
    iget-object p2, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    array-length p2, p2

    .line 778
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 779
    const/4 v0, 0x0

    :goto_14
    if-ge v0, p2, :cond_20

    .line 780
    iget-object v1, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 779
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 782
    :cond_20
    iget-object p2, p0, Landroid/content/res/ColorStateList;->mColors:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 783
    return-void
.end method

.method public blacklist writeToProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 14

    .line 806
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_29

    aget-object v4, v0, v3

    .line 807
    const-wide v5, 0x20b00000001L

    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 808
    array-length v7, v4

    move v8, v2

    :goto_14
    if-ge v8, v7, :cond_23

    aget v9, v4, v8

    .line 809
    const-wide v10, 0x50500000001L

    invoke-virtual {p1, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 808
    add-int/lit8 v8, v8, 0x1

    goto :goto_14

    .line 811
    :cond_23
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 806
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 813
    :cond_29
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mColors:[I

    array-length v1, v0

    :goto_2c
    if-ge v2, v1, :cond_3b

    aget v3, v0, v2

    .line 814
    const-wide v4, 0x50500000002L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 813
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 816
    :cond_3b
    return-void
.end method
