.class public Landroid/animation/AnimatorInflater;
.super Ljava/lang/Object;
.source "AnimatorInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/AnimatorInflater$PathDataEvaluator;
    }
.end annotation


# static fields
.field private static final greylist-max-o DBG_ANIMATOR_INFLATER:Z = false

.field private static final greylist-max-o SEQUENTIALLY:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AnimatorInflater"

.field private static final greylist-max-o TOGETHER:I = 0x0

.field private static final greylist-max-o VALUE_TYPE_COLOR:I = 0x3

.field private static final greylist-max-o VALUE_TYPE_FLOAT:I = 0x0

.field private static final greylist-max-o VALUE_TYPE_INT:I = 0x1

.field private static final greylist-max-o VALUE_TYPE_PATH:I = 0x2

.field private static final greylist-max-o VALUE_TYPE_UNDEFINED:I = 0x4

.field private static final greylist-max-o sTmpTypedValue:Landroid/util/TypedValue;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 79
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Landroid/animation/AnimatorInflater;->sTmpTypedValue:Landroid/util/TypedValue;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 645
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method private static greylist-max-o createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 652
    move-object/from16 v3, p3

    move-object/from16 v7, p4

    move/from16 v6, p6

    .line 653
    nop

    .line 657
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    const/4 v9, 0x0

    move-object v0, v9

    move-object v10, v0

    .line 659
    :goto_e
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    const/4 v11, 0x0

    if-ne v1, v2, :cond_1c

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v8, :cond_cf

    :cond_1c
    const/4 v2, 0x1

    if-eq v1, v2, :cond_cf

    .line 662
    const/4 v4, 0x2

    if-eq v1, v4, :cond_23

    .line 663
    goto :goto_e

    .line 666
    :cond_23
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 667
    nop

    .line 669
    const-string/jumbo v4, "objectAnimator"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 670
    invoke-static {p0, p1, v3, v6}, Landroid/animation/AnimatorInflater;->loadObjectAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto/16 :goto_9e

    .line 671
    :cond_37
    const-string v4, "animator"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 672
    invoke-static {p0, p1, v3, v9, v6}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;F)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_9e

    .line 673
    :cond_44
    const-string/jumbo v4, "set"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 674
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 676
    if-eqz p1, :cond_5c

    .line 677
    sget-object v0, Lcom/android/internal/R$styleable;->AnimatorSet:[I

    invoke-virtual {p1, v3, v0, v11, v11}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    move-object v12, v0

    goto :goto_63

    .line 679
    :cond_5c
    sget-object v0, Lcom/android/internal/R$styleable;->AnimatorSet:[I

    invoke-virtual {p0, v3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    move-object v12, v0

    .line 681
    :goto_63
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/animation/Animator;->appendChangingConfigurations(I)V

    .line 682
    invoke-virtual {v12, v11, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 683
    move-object v0, v4

    check-cast v0, Landroid/animation/AnimatorSet;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    .line 685
    move-object v0, v4

    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 686
    goto :goto_9e

    :cond_7c
    const-string/jumbo v6, "propertyValuesHolder"

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 687
    nop

    .line 688
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 687
    invoke-static {p0, p1, p2, v1}, Landroid/animation/AnimatorInflater;->loadValues(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 689
    if-eqz v1, :cond_9c

    if-eqz v0, :cond_9c

    instance-of v6, v0, Landroid/animation/ValueAnimator;

    if-eqz v6, :cond_9c

    .line 690
    move-object v6, v0

    check-cast v6, Landroid/animation/ValueAnimator;

    invoke-virtual {v6, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 692
    :cond_9c
    nop

    .line 693
    move v11, v2

    .line 697
    :goto_9e
    if-eqz v7, :cond_ac

    if-nez v11, :cond_ac

    .line 698
    if-nez v10, :cond_a9

    .line 699
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 701
    :cond_a9
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    :cond_ac
    move-object/from16 v3, p3

    move/from16 v6, p6

    goto/16 :goto_e

    .line 694
    :cond_b2
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown animator name: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 704
    :cond_cf
    if-eqz v7, :cond_f9

    if-eqz v10, :cond_f9

    .line 705
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/animation/Animator;

    .line 706
    nop

    .line 707
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_de
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_f0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/Animator;

    .line 708
    add-int/lit8 v1, v11, 0x1

    aput-object p2, p0, v11

    .line 709
    move v11, v1

    goto :goto_de

    .line 710
    :cond_f0
    if-nez p5, :cond_f6

    .line 711
    invoke-virtual {v7, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_f9

    .line 713
    :cond_f6
    invoke-virtual {v7, p0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 716
    :cond_f9
    :goto_f9
    return-object v0
.end method

.method private static greylist-max-o createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;
    .registers 4

    .line 922
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_d

    .line 923
    invoke-static {p1}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object p0

    goto :goto_1e

    .line 924
    :cond_d
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object p0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1a

    .line 925
    invoke-static {p1}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object p0

    goto :goto_1e

    .line 926
    :cond_1a
    invoke-static {p1}, Landroid/animation/Keyframe;->ofObject(F)Landroid/animation/Keyframe;

    move-result-object p0

    .line 922
    :goto_1e
    return-object p0
.end method

.method private static greylist-max-o createStateListAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/animation/StateListAnimator;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 212
    new-instance v0, Landroid/animation/StateListAnimator;

    invoke-direct {v0}, Landroid/animation/StateListAnimator;-><init>()V

    .line 215
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 216
    packed-switch v1, :pswitch_data_70

    goto :goto_6e

    .line 223
    :pswitch_d
    nop

    .line 224
    const-string/jumbo v1, "item"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 225
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    .line 226
    new-array v2, v1, [I

    .line 227
    nop

    .line 228
    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    move v6, v5

    :goto_26
    if-ge v5, v1, :cond_4a

    .line 229
    invoke-interface {p2, v5}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v7

    .line 230
    const v8, 0x10101cd

    if-ne v7, v8, :cond_3a

    .line 231
    invoke-interface {p2, v5, v3}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v4

    .line 232
    invoke-static {p0, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    .line 233
    goto :goto_47

    .line 234
    :cond_3a
    add-int/lit8 v8, v6, 0x1

    .line 235
    invoke-interface {p2, v5, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v9

    if-eqz v9, :cond_43

    .line 236
    goto :goto_44

    :cond_43
    neg-int v7, v7

    :goto_44
    aput v7, v2, v6

    move v6, v8

    .line 228
    :goto_47
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 239
    :cond_4a
    if-nez v4, :cond_5a

    .line 240
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 241
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 240
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v3, p1, v4}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;

    move-result-object v4

    .line 244
    :cond_5a
    if-eqz v4, :cond_65

    .line 248
    nop

    .line 249
    invoke-static {v2, v6}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    goto :goto_6e

    .line 245
    :cond_65
    new-instance p0, Landroid/content/res/Resources$NotFoundException;

    const-string p1, "animation state item must have a valid animation"

    invoke-direct {p0, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 219
    :pswitch_6d
    return-object v0

    .line 251
    :cond_6e
    :goto_6e
    goto :goto_5

    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_d
        :pswitch_6d
    .end packed-switch
.end method

.method private static greylist-max-o distributeKeyframes([Landroid/animation/Keyframe;FII)V
    .registers 6

    .line 949
    sub-int v0, p3, p2

    add-int/lit8 v0, v0, 0x2

    .line 950
    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 951
    nop

    :goto_7
    if-gt p2, p3, :cond_1a

    .line 952
    aget-object v0, p0, p2

    add-int/lit8 v1, p2, -0x1

    aget-object v1, p0, v1

    invoke-virtual {v1}, Landroid/animation/Keyframe;->getFraction()F

    move-result v1

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 951
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    .line 954
    :cond_1a
    return-void
.end method

.method private static greylist-max-o dumpKeyframes([Ljava/lang/Object;Ljava/lang/String;)V
    .registers 8

    .line 819
    if-eqz p0, :cond_61

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_61

    .line 822
    :cond_6
    const-string v0, "AnimatorInflater"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    array-length p1, p0

    .line 824
    const/4 v1, 0x0

    :goto_d
    if-ge v1, p1, :cond_60

    .line 825
    aget-object v2, p0, v1

    check-cast v2, Landroid/animation/Keyframe;

    .line 826
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Keyframe "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": fraction "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 827
    invoke-virtual {v2}, Landroid/animation/Keyframe;->getFraction()F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    const-string/jumbo v5, "null"

    if-gez v4, :cond_36

    move-object v4, v5

    goto :goto_3e

    :cond_36
    invoke-virtual {v2}, Landroid/animation/Keyframe;->getFraction()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    :goto_3e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", , value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 828
    invoke-virtual {v2}, Landroid/animation/Keyframe;->hasValue()Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-virtual {v2}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v5

    :cond_52
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 826
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 830
    :cond_60
    return-void

    .line 820
    :cond_61
    :goto_61
    return-void
.end method

.method private static greylist-max-o getChangingConfigs(Landroid/content/res/Resources;I)I
    .registers 5

    .line 1076
    sget-object v0, Landroid/animation/AnimatorInflater;->sTmpTypedValue:Landroid/util/TypedValue;

    monitor-enter v0

    .line 1077
    :try_start_3
    sget-object v1, Landroid/animation/AnimatorInflater;->sTmpTypedValue:Landroid/util/TypedValue;

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1078
    sget-object p0, Landroid/animation/AnimatorInflater;->sTmpTypedValue:Landroid/util/TypedValue;

    iget p0, p0, Landroid/util/TypedValue;->changingConfigurations:I

    monitor-exit v0

    return p0

    .line 1079
    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method private static greylist-max-o getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;
    .registers 16

    .line 278
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 279
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    move v3, v1

    goto :goto_b

    :cond_a
    move v3, v2

    .line 280
    :goto_b
    if-eqz v3, :cond_10

    iget v0, v0, Landroid/util/TypedValue;->type:I

    goto :goto_11

    :cond_10
    move v0, v2

    .line 281
    :goto_11
    invoke-virtual {p0, p3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    .line 282
    if-eqz v4, :cond_19

    move v5, v1

    goto :goto_1a

    :cond_19
    move v5, v2

    .line 283
    :goto_1a
    if-eqz v5, :cond_1f

    iget v4, v4, Landroid/util/TypedValue;->type:I

    goto :goto_20

    :cond_1f
    move v4, v2

    .line 285
    :goto_20
    const/4 v6, 0x4

    const/4 v7, 0x3

    if-ne p1, v6, :cond_37

    .line 287
    if-eqz v3, :cond_2c

    invoke-static {v0}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result p1

    if-nez p1, :cond_34

    :cond_2c
    if-eqz v5, :cond_36

    invoke-static {v4}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 288
    :cond_34
    move p1, v7

    goto :goto_37

    .line 290
    :cond_36
    move p1, v2

    .line 294
    :cond_37
    :goto_37
    if-nez p1, :cond_3b

    move v6, v1

    goto :goto_3c

    :cond_3b
    move v6, v2

    .line 296
    :goto_3c
    nop

    .line 298
    const/4 v8, 0x2

    const/4 v9, 0x0

    if-ne p1, v8, :cond_b6

    .line 299
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 300
    invoke-virtual {p0, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 301
    if-nez p1, :cond_4d

    .line 302
    move-object p2, v9

    goto :goto_52

    :cond_4d
    new-instance p2, Landroid/util/PathParser$PathData;

    invoke-direct {p2, p1}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    .line 303
    :goto_52
    if-nez p0, :cond_56

    .line 304
    move-object p3, v9

    goto :goto_5b

    :cond_56
    new-instance p3, Landroid/util/PathParser$PathData;

    invoke-direct {p3, p0}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    .line 306
    :goto_5b
    if-nez p2, :cond_5f

    if-eqz p3, :cond_b4

    .line 307
    :cond_5f
    if-eqz p2, :cond_a5

    .line 308
    new-instance v0, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    invoke-direct {v0, v9}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>(Landroid/animation/AnimatorInflater-IA;)V

    .line 309
    if-eqz p3, :cond_9b

    .line 310
    invoke-static {p2, p3}, Landroid/util/PathParser;->canMorph(Landroid/util/PathParser$PathData;Landroid/util/PathParser$PathData;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 314
    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p4, v0, p0}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    move-object v9, p0

    goto :goto_a4

    .line 311
    :cond_78
    new-instance p2, Landroid/view/InflateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " Can\'t morph from "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " to "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 317
    :cond_9b
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p4, v0, p0}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    move-object v9, p0

    .line 320
    :cond_a4
    :goto_a4
    goto :goto_b4

    :cond_a5
    if-eqz p3, :cond_a4

    .line 321
    new-instance p0, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    invoke-direct {p0, v9}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>(Landroid/animation/AnimatorInflater-IA;)V

    .line 322
    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p4, p0, p1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 326
    :cond_b4
    :goto_b4
    goto/16 :goto_175

    .line 327
    :cond_b6
    nop

    .line 329
    if-ne p1, v7, :cond_be

    .line 331
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object p1

    goto :goto_bf

    .line 329
    :cond_be
    move-object p1, v9

    .line 333
    :goto_bf
    const/4 v7, 0x5

    const/4 v10, 0x0

    if-eqz v6, :cond_109

    .line 336
    if-eqz v3, :cond_f3

    .line 337
    if-ne v0, v7, :cond_cc

    .line 338
    invoke-virtual {p0, p2, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    goto :goto_d0

    .line 340
    :cond_cc
    invoke-virtual {p0, p2, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    .line 342
    :goto_d0
    if-eqz v5, :cond_e9

    .line 343
    if-ne v4, v7, :cond_d9

    .line 344
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    goto :goto_dd

    .line 346
    :cond_d9
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p0

    .line 348
    :goto_dd
    new-array p3, v8, [F

    aput p2, p3, v2

    aput p0, p3, v1

    invoke-static {p4, p3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    move-object v9, p0

    goto :goto_107

    .line 351
    :cond_e9
    new-array p0, v1, [F

    aput p2, p0, v2

    invoke-static {p4, p0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    move-object v9, p0

    goto :goto_107

    .line 354
    :cond_f3
    if-ne v4, v7, :cond_fa

    .line 355
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    goto :goto_fe

    .line 357
    :cond_fa
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p0

    .line 359
    :goto_fe
    new-array p2, v1, [F

    aput p0, p2, v2

    invoke-static {p4, p2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    move-object v9, p0

    .line 361
    :goto_107
    goto/16 :goto_16e

    .line 364
    :cond_109
    if-eqz v3, :cond_14d

    .line 365
    if-ne v0, v7, :cond_113

    .line 366
    invoke-virtual {p0, p2, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    goto :goto_122

    .line 367
    :cond_113
    invoke-static {v0}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v0

    if-eqz v0, :cond_11e

    .line 368
    invoke-virtual {p0, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    goto :goto_122

    .line 370
    :cond_11e
    invoke-virtual {p0, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 372
    :goto_122
    if-eqz v5, :cond_144

    .line 373
    if-ne v4, v7, :cond_12c

    .line 374
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    float-to-int p0, p0

    goto :goto_13b

    .line 375
    :cond_12c
    invoke-static {v4}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v0

    if-eqz v0, :cond_137

    .line 376
    invoke-virtual {p0, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p0

    goto :goto_13b

    .line 378
    :cond_137
    invoke-virtual {p0, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    .line 380
    :goto_13b
    filled-new-array {p2, p0}, [I

    move-result-object p0

    invoke-static {p4, p0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    goto :goto_16e

    .line 382
    :cond_144
    filled-new-array {p2}, [I

    move-result-object p0

    invoke-static {p4, p0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    goto :goto_16e

    .line 385
    :cond_14d
    if-eqz v5, :cond_16e

    .line 386
    if-ne v4, v7, :cond_157

    .line 387
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    float-to-int p0, p0

    goto :goto_166

    .line 388
    :cond_157
    invoke-static {v4}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result p2

    if-eqz p2, :cond_162

    .line 389
    invoke-virtual {p0, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p0

    goto :goto_166

    .line 391
    :cond_162
    invoke-virtual {p0, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    .line 393
    :goto_166
    filled-new-array {p0}, [I

    move-result-object p0

    invoke-static {p4, p0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 397
    :cond_16e
    :goto_16e
    if-eqz v9, :cond_175

    if-eqz p1, :cond_175

    .line 398
    invoke-virtual {v9, p1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 402
    :cond_175
    :goto_175
    return-object v9
.end method

.method private static greylist-max-o inferValueTypeFromValues(Landroid/content/res/TypedArray;II)I
    .registers 6

    .line 801
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p1

    .line 802
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_a

    move v2, v0

    goto :goto_b

    :cond_a
    move v2, v1

    .line 803
    :goto_b
    if-eqz v2, :cond_10

    iget p1, p1, Landroid/util/TypedValue;->type:I

    goto :goto_11

    :cond_10
    move p1, v1

    .line 804
    :goto_11
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p0

    .line 805
    if-eqz p0, :cond_18

    goto :goto_19

    :cond_18
    move v0, v1

    .line 806
    :goto_19
    if-eqz v0, :cond_1e

    iget p0, p0, Landroid/util/TypedValue;->type:I

    goto :goto_1f

    :cond_1e
    move p0, v1

    .line 810
    :goto_1f
    if-eqz v2, :cond_27

    invoke-static {p1}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result p1

    if-nez p1, :cond_2f

    :cond_27
    if-eqz v0, :cond_31

    invoke-static {p0}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result p0

    if-eqz p0, :cond_31

    .line 811
    :cond_2f
    const/4 v1, 0x3

    goto :goto_32

    .line 813
    :cond_31
    nop

    .line 815
    :goto_32
    return v1
.end method

.method private static greylist-max-o inferValueTypeOfKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)I
    .registers 4

    .line 780
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 781
    sget-object p0, Lcom/android/internal/R$styleable;->Keyframe:[I

    invoke-virtual {p1, p2, p0, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    goto :goto_10

    .line 783
    :cond_a
    sget-object p1, Lcom/android/internal/R$styleable;->Keyframe:[I

    invoke-virtual {p0, p2, p1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 786
    :goto_10
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p1

    .line 787
    if-eqz p1, :cond_18

    const/4 p2, 0x1

    goto :goto_19

    :cond_18
    move p2, v0

    .line 790
    :goto_19
    if-eqz p2, :cond_25

    iget p1, p1, Landroid/util/TypedValue;->type:I

    invoke-static {p1}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 791
    const/4 v0, 0x3

    goto :goto_26

    .line 793
    :cond_25
    nop

    .line 795
    :goto_26
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 796
    return v0
.end method

.method private static greylist-max-o isColorType(I)Z
    .registers 2

    .line 1083
    const/16 v0, 0x1c

    if-lt p0, v0, :cond_a

    const/16 v0, 0x1f

    if-gt p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static whitelist loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 106
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, p2, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 112
    const-string v1, "Can\'t load animation resource ID #0x"

    .line 113
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;

    move-result-object v2

    .line 114
    int-to-long v3, p2

    invoke-virtual {v2, v3, v4, p0, p1}, Landroid/content/res/ConfigurationBoundResourceCache;->getInstance(JLandroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 115
    if-eqz v0, :cond_10

    .line 119
    return-object v0

    .line 123
    :cond_10
    invoke-virtual {v2}, Landroid/content/res/ConfigurationBoundResourceCache;->getGeneration()I

    move-result v7

    .line 124
    nop

    .line 126
    const/4 v5, 0x0

    :try_start_16
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v8
    :try_end_1a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_1a} :catch_6e
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1a} :catch_4e
    .catchall {:try_start_16 .. :try_end_1a} :catchall_4b

    .line 127
    :try_start_1a
    invoke-static {p0, p1, v8, p3}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;

    move-result-object p3

    .line 128
    if-eqz p3, :cond_38

    .line 129
    invoke-static {p0, p2}, Landroid/animation/AnimatorInflater;->getChangingConfigs(Landroid/content/res/Resources;I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/animation/Animator;->appendChangingConfigurations(I)V

    .line 130
    invoke-virtual {p3}, Landroid/animation/Animator;->createConstantState()Landroid/content/res/ConstantState;

    move-result-object v6

    .line 131
    if-eqz v6, :cond_38

    .line 135
    move-object v5, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/res/ConfigurationBoundResourceCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;I)V

    .line 137
    invoke-virtual {v6, p0, v5}, Landroid/content/res/ConstantState;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object p0

    move-object p3, p0

    check-cast p3, Landroid/animation/Animator;
    :try_end_38
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_38} :catch_47
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_38} :catch_43
    .catchall {:try_start_1a .. :try_end_38} :catchall_3f

    .line 140
    :cond_38
    nop

    .line 154
    if-eqz v8, :cond_3e

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    .line 140
    :cond_3e
    return-object p3

    .line 154
    :catchall_3f
    move-exception v0

    move-object p0, v0

    move-object v5, v8

    goto :goto_8e

    .line 147
    :catch_43
    move-exception v0

    move-object p0, v0

    move-object v5, v8

    goto :goto_50

    .line 141
    :catch_47
    move-exception v0

    move-object p0, v0

    move-object v5, v8

    goto :goto_70

    .line 154
    :catchall_4b
    move-exception v0

    move-object p0, v0

    goto :goto_8e

    .line 147
    :catch_4e
    move-exception v0

    move-object p0, v0

    .line 148
    :goto_50
    :try_start_50
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 150
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1, p0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 152
    throw p1

    .line 141
    :catch_6e
    move-exception v0

    move-object p0, v0

    .line 142
    :goto_70
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 144
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p1, p0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 146
    throw p1
    :try_end_8e
    .catchall {:try_start_50 .. :try_end_8e} :catchall_4b

    .line 154
    :goto_8e
    if-eqz v5, :cond_93

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    .line 155
    :cond_93
    throw p0
.end method

.method private static greylist-max-o loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;F)Landroid/animation/ValueAnimator;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1031
    nop

    .line 1032
    nop

    .line 1034
    const/4 v0, 0x0

    if-eqz p1, :cond_c

    .line 1035
    sget-object v1, Lcom/android/internal/R$styleable;->Animator:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    goto :goto_12

    .line 1037
    :cond_c
    sget-object v1, Lcom/android/internal/R$styleable;->Animator:[I

    invoke-virtual {p0, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1041
    :goto_12
    if-eqz p3, :cond_2b

    .line 1042
    if-eqz p1, :cond_1d

    .line 1043
    sget-object v2, Lcom/android/internal/R$styleable;->PropertyAnimator:[I

    invoke-virtual {p1, p2, v2, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    goto :goto_23

    .line 1046
    :cond_1d
    sget-object v2, Lcom/android/internal/R$styleable;->PropertyAnimator:[I

    invoke-virtual {p0, p2, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 1048
    :goto_23
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/animation/ValueAnimator;->appendChangingConfigurations(I)V

    goto :goto_2c

    .line 1041
    :cond_2b
    const/4 p2, 0x0

    .line 1051
    :goto_2c
    if-nez p3, :cond_33

    .line 1052
    new-instance p3, Landroid/animation/ValueAnimator;

    invoke-direct {p3}, Landroid/animation/ValueAnimator;-><init>()V

    .line 1054
    :cond_33
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/animation/ValueAnimator;->appendChangingConfigurations(I)V

    .line 1056
    invoke-static {p3, v1, p2, p4}, Landroid/animation/AnimatorInflater;->parseAnimatorFromTypeArray(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;F)V

    .line 1058
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    .line 1059
    if-lez p4, :cond_58

    .line 1060
    invoke-static {p0, p1, p4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/view/animation/Interpolator;

    move-result-object p0

    .line 1061
    instance-of p1, p0, Landroid/view/animation/BaseInterpolator;

    if-eqz p1, :cond_55

    .line 1062
    move-object p1, p0

    check-cast p1, Landroid/view/animation/BaseInterpolator;

    .line 1063
    invoke-virtual {p1}, Landroid/view/animation/BaseInterpolator;->getChangingConfiguration()I

    move-result p1

    .line 1062
    invoke-virtual {p3, p1}, Landroid/animation/ValueAnimator;->appendChangingConfigurations(I)V

    .line 1065
    :cond_55
    invoke-virtual {p3, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1068
    :cond_58
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1069
    if-eqz p2, :cond_60

    .line 1070
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1072
    :cond_60
    return-object p3
.end method

.method private static greylist-max-o loadKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;I)Landroid/animation/Keyframe;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 961
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 962
    sget-object v1, Lcom/android/internal/R$styleable;->Keyframe:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    goto :goto_10

    .line 964
    :cond_a
    sget-object v1, Lcom/android/internal/R$styleable;->Keyframe:[I

    invoke-virtual {p0, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 967
    :goto_10
    nop

    .line 969
    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x3

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 971
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 972
    const/4 v4, 0x1

    if-eqz v3, :cond_21

    move v5, v4

    goto :goto_22

    :cond_21
    move v5, v0

    .line 973
    :goto_22
    const/4 v6, 0x4

    if-ne p3, v6, :cond_32

    .line 976
    if-eqz v5, :cond_31

    iget p3, v3, Landroid/util/TypedValue;->type:I

    invoke-static {p3}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result p3

    if-eqz p3, :cond_31

    .line 977
    move p3, v2

    goto :goto_32

    .line 979
    :cond_31
    move p3, v0

    .line 983
    :cond_32
    :goto_32
    if-eqz v5, :cond_4d

    .line 984
    packed-switch p3, :pswitch_data_6a

    :pswitch_37
    const/4 p3, 0x0

    goto :goto_4c

    .line 991
    :pswitch_39
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 992
    invoke-static {v1, p3}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object p3

    goto :goto_4c

    .line 986
    :pswitch_42
    const/4 p3, 0x0

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    .line 987
    invoke-static {v1, p3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object p3

    .line 988
    nop

    .line 993
    :goto_4c
    goto :goto_59

    .line 996
    :cond_4d
    if-nez p3, :cond_54

    invoke-static {v1}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object p3

    goto :goto_58

    .line 997
    :cond_54
    invoke-static {v1}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object p3

    :goto_58
    nop

    .line 1000
    :goto_59
    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 1001
    if-lez v0, :cond_66

    .line 1002
    invoke-static {p0, p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/view/animation/Interpolator;

    move-result-object p0

    .line 1003
    invoke-virtual {p3, p0}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1005
    :cond_66
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1007
    return-object p3

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_42
        :pswitch_39
        :pswitch_37
        :pswitch_39
    .end packed-switch
.end method

.method private static greylist-max-o loadObjectAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;F)Landroid/animation/ObjectAnimator;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1012
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 1014
    invoke-static {p0, p1, p2, v0, p3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;F)Landroid/animation/ValueAnimator;

    .line 1016
    return-object v0
.end method

.method private static greylist-max-o loadPvh(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/animation/PropertyValuesHolder;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 837
    nop

    .line 838
    const/4 v0, 0x0

    move-object v1, v0

    .line 841
    :goto_3
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3d

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3d

    .line 843
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 844
    const-string/jumbo v3, "keyframe"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 845
    const/4 v2, 0x4

    if-ne p4, v2, :cond_25

    .line 846
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p4

    invoke-static {p0, p1, p4}, Landroid/animation/AnimatorInflater;->inferValueTypeOfKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)I

    move-result p4

    .line 848
    :cond_25
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    invoke-static {p0, p1, v2, p4}, Landroid/animation/AnimatorInflater;->loadKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;I)Landroid/animation/Keyframe;

    move-result-object v2

    .line 849
    if-eqz v2, :cond_39

    .line 850
    if-nez v1, :cond_36

    .line 851
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 853
    :cond_36
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    :cond_39
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 857
    :cond_3c
    goto :goto_3

    .line 860
    :cond_3d
    if-eqz v1, :cond_ea

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_ea

    .line 866
    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/Keyframe;

    .line 867
    add-int/lit8 v0, p0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Keyframe;

    .line 868
    invoke-virtual {v0}, Landroid/animation/Keyframe;->getFraction()F

    move-result v2

    .line 869
    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v5, v2, v4

    const/4 v6, 0x0

    if-gez v5, :cond_74

    .line 870
    cmpg-float v2, v2, v6

    if-gez v2, :cond_67

    .line 871
    invoke-virtual {v0, v4}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_74

    .line 873
    :cond_67
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v0, v4}, Landroid/animation/AnimatorInflater;->createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 874
    add-int/lit8 p0, p0, 0x1

    .line 877
    :cond_74
    :goto_74
    invoke-virtual {p2}, Landroid/animation/Keyframe;->getFraction()F

    move-result v0

    .line 878
    cmpl-float v2, v0, v6

    if-eqz v2, :cond_8d

    .line 879
    cmpg-float v0, v0, v6

    if-gez v0, :cond_84

    .line 880
    invoke-virtual {p2, v6}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_8d

    .line 882
    :cond_84
    invoke-static {p2, v6}, Landroid/animation/AnimatorInflater;->createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 883
    add-int/lit8 p0, p0, 0x1

    .line 886
    :cond_8d
    :goto_8d
    new-array p2, p0, [Landroid/animation/Keyframe;

    .line 887
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 888
    nop

    :goto_93
    if-ge p1, p0, :cond_dd

    .line 889
    aget-object v0, p2, p1

    .line 890
    invoke-virtual {v0}, Landroid/animation/Keyframe;->getFraction()F

    move-result v1

    cmpg-float v1, v1, v6

    if-gez v1, :cond_da

    .line 891
    if-nez p1, :cond_a5

    .line 892
    invoke-virtual {v0, v6}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_da

    .line 893
    :cond_a5
    add-int/lit8 v1, p0, -0x1

    if-ne p1, v1, :cond_ad

    .line 894
    invoke-virtual {v0, v4}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_da

    .line 898
    :cond_ad
    nop

    .line 899
    nop

    .line 900
    add-int/lit8 v0, p1, 0x1

    move v2, p1

    :goto_b2
    if-ge v0, v1, :cond_c6

    .line 901
    aget-object v5, p2, v0

    invoke-virtual {v5}, Landroid/animation/Keyframe;->getFraction()F

    move-result v5

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_bf

    .line 902
    goto :goto_c6

    .line 904
    :cond_bf
    nop

    .line 900
    add-int/lit8 v2, v0, 0x1

    move v7, v2

    move v2, v0

    move v0, v7

    goto :goto_b2

    .line 906
    :cond_c6
    :goto_c6
    add-int/lit8 v0, v2, 0x1

    aget-object v0, p2, v0

    invoke-virtual {v0}, Landroid/animation/Keyframe;->getFraction()F

    move-result v0

    add-int/lit8 v1, p1, -0x1

    aget-object v1, p2, v1

    .line 907
    invoke-virtual {v1}, Landroid/animation/Keyframe;->getFraction()F

    move-result v1

    sub-float/2addr v0, v1

    .line 908
    invoke-static {p2, v0, p1, v2}, Landroid/animation/AnimatorInflater;->distributeKeyframes([Landroid/animation/Keyframe;FII)V

    .line 888
    :cond_da
    :goto_da
    add-int/lit8 p1, p1, 0x1

    goto :goto_93

    .line 912
    :cond_dd
    invoke-static {p3, p2}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 913
    if-ne p4, v3, :cond_ea

    .line 914
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 918
    :cond_ea
    return-object v0
.end method

.method public static whitelist loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 160
    const-string v1, "Can\'t load state list animator resource ID #0x"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 161
    nop

    .line 162
    invoke-virtual {v0}, Landroid/content/res/Resources;->getStateListAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;

    move-result-object v2

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 164
    int-to-long v3, p1

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/content/res/ConfigurationBoundResourceCache;->getInstance(JLandroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/StateListAnimator;

    .line 165
    if-eqz v6, :cond_19

    .line 166
    return-object v6

    .line 168
    :cond_19
    invoke-virtual {v2}, Landroid/content/res/ConfigurationBoundResourceCache;->getGeneration()I

    move-result v7

    .line 169
    nop

    .line 171
    const/4 v6, 0x0

    :try_start_1f
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v8
    :try_end_23
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1f .. :try_end_23} :catch_7b
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_23} :catch_5b
    .catchall {:try_start_1f .. :try_end_23} :catchall_58

    .line 172
    nop

    .line 173
    :try_start_24
    invoke-static {v8}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    invoke-static {p0, v8, v6}, Landroid/animation/AnimatorInflater;->createStateListAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/animation/StateListAnimator;

    move-result-object p0

    .line 174
    if-eqz p0, :cond_45

    .line 175
    invoke-static {v0, p1}, Landroid/animation/AnimatorInflater;->getChangingConfigs(Landroid/content/res/Resources;I)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/animation/StateListAnimator;->appendChangingConfigurations(I)V

    .line 176
    nop

    .line 177
    invoke-virtual {p0}, Landroid/animation/StateListAnimator;->createConstantState()Landroid/content/res/ConstantState;

    move-result-object v6

    .line 178
    if-eqz v6, :cond_45

    .line 179
    invoke-virtual/range {v2 .. v7}, Landroid/content/res/ConfigurationBoundResourceCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;I)V

    .line 181
    invoke-virtual {v6, v0, v5}, Landroid/content/res/ConstantState;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/StateListAnimator;
    :try_end_45
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_24 .. :try_end_45} :catch_54
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_45} :catch_50
    .catchall {:try_start_24 .. :try_end_45} :catchall_4c

    .line 184
    :cond_45
    nop

    .line 202
    if-eqz v8, :cond_4b

    .line 203
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    .line 184
    :cond_4b
    return-object p0

    .line 202
    :catchall_4c
    move-exception v0

    move-object p0, v0

    move-object v6, v8

    goto :goto_9b

    .line 193
    :catch_50
    move-exception v0

    move-object p0, v0

    move-object v6, v8

    goto :goto_5d

    .line 185
    :catch_54
    move-exception v0

    move-object p0, v0

    move-object v6, v8

    goto :goto_7d

    .line 202
    :catchall_58
    move-exception v0

    move-object p0, v0

    goto :goto_9b

    .line 193
    :catch_5b
    move-exception v0

    move-object p0, v0

    .line 194
    :goto_5d
    :try_start_5d
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 197
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0, p0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 200
    throw v0

    .line 185
    :catch_7b
    move-exception v0

    move-object p0, v0

    .line 186
    :goto_7d
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 189
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0, p0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 192
    throw v0
    :try_end_9b
    .catchall {:try_start_5d .. :try_end_9b} :catchall_58

    .line 202
    :goto_9b
    if-eqz v6, :cond_a0

    .line 203
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    .line 205
    :cond_a0
    throw p0
.end method

.method private static greylist-max-o loadValues(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 721
    const/4 v0, 0x0

    move-object v1, v0

    .line 724
    :goto_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eq v2, v3, :cond_56

    const/4 v5, 0x1

    if-eq v2, v5, :cond_56

    .line 727
    const/4 v6, 0x2

    if-eq v2, v6, :cond_14

    .line 728
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 729
    goto :goto_2

    .line 732
    :cond_14
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 734
    const-string/jumbo v7, "propertyValuesHolder"

    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 736
    if-eqz p1, :cond_2a

    .line 737
    sget-object v2, Lcom/android/internal/R$styleable;->PropertyValuesHolder:[I

    invoke-virtual {p1, p3, v2, v4, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    goto :goto_30

    .line 739
    :cond_2a
    sget-object v2, Lcom/android/internal/R$styleable;->PropertyValuesHolder:[I

    invoke-virtual {p0, p3, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 741
    :goto_30
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 742
    const/4 v7, 0x4

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 745
    invoke-static {p0, p1, p2, v3, v6}, Landroid/animation/AnimatorInflater;->loadPvh(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 746
    if-nez v7, :cond_43

    .line 747
    invoke-static {v2, v6, v4, v5, v3}, Landroid/animation/AnimatorInflater;->getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 751
    :cond_43
    if-eqz v7, :cond_4f

    .line 752
    if-nez v1, :cond_4c

    .line 753
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 755
    :cond_4c
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    :cond_4f
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 760
    :cond_52
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 761
    goto :goto_2

    .line 763
    :cond_56
    nop

    .line 764
    if-eqz v1, :cond_6d

    .line 765
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 766
    new-array v0, p0, [Landroid/animation/PropertyValuesHolder;

    .line 767
    nop

    :goto_60
    if-ge v4, p0, :cond_6d

    .line 768
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/PropertyValuesHolder;

    aput-object p1, v0, v4

    .line 767
    add-int/lit8 v4, v4, 0x1

    goto :goto_60

    .line 771
    :cond_6d
    return-object v0
.end method

.method private static greylist-max-o parseAnimatorFromTypeArray(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;F)V
    .registers 15

    .line 415
    const/16 v0, 0x12c

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    int-to-long v2, v0

    .line 417
    const/4 v0, 0x2

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    int-to-long v5, v0

    .line 419
    const/4 v0, 0x7

    const/4 v7, 0x4

    invoke-virtual {p1, v0, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 421
    const/4 v8, 0x6

    const/4 v9, 0x5

    if-ne v0, v7, :cond_1d

    .line 422
    invoke-static {p1, v9, v8}, Landroid/animation/AnimatorInflater;->inferValueTypeFromValues(Landroid/content/res/TypedArray;II)I

    move-result v0

    .line 425
    :cond_1d
    const-string v10, ""

    invoke-static {p1, v0, v9, v8, v10}, Landroid/animation/AnimatorInflater;->getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 427
    if-eqz v8, :cond_2c

    .line 428
    new-array v9, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v8, v9, v4

    invoke-virtual {p0, v9}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 431
    :cond_2c
    invoke-virtual {p0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 432
    invoke-virtual {p0, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 434
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 435
    nop

    .line 436
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 435
    invoke-virtual {p0, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 438
    :cond_41
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 439
    nop

    .line 440
    invoke-virtual {p1, v7, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 439
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 444
    :cond_4f
    if-eqz p2, :cond_54

    .line 445
    invoke-static {p0, p2, v0, p3}, Landroid/animation/AnimatorInflater;->setupObjectAnimator(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;IF)V

    .line 447
    :cond_54
    return-void
.end method

.method private static greylist-max-o setupAnimatorForPath(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;)Landroid/animation/TypeEvaluator;
    .registers 8

    .line 458
    nop

    .line 459
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 460
    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 461
    const/4 v2, 0x0

    if-nez v0, :cond_10

    .line 462
    move-object v3, v2

    goto :goto_15

    :cond_10
    new-instance v3, Landroid/util/PathParser$PathData;

    invoke-direct {v3, v0}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    .line 463
    :goto_15
    if-nez v1, :cond_19

    .line 464
    move-object v4, v2

    goto :goto_1e

    :cond_19
    new-instance v4, Landroid/util/PathParser$PathData;

    invoke-direct {v4, v1}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    .line 466
    :goto_1e
    if-eqz v3, :cond_69

    .line 467
    if-eqz v4, :cond_5b

    .line 468
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 469
    invoke-static {v3, v4}, Landroid/util/PathParser;->canMorph(Landroid/util/PathParser$PathData;Landroid/util/PathParser$PathData;)Z

    move-result p0

    if-eqz p0, :cond_30

    goto :goto_62

    .line 470
    :cond_30
    new-instance p0, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " Can\'t morph from "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 474
    :cond_5b
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 476
    :goto_62
    new-instance p0, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    invoke-direct {p0, v2}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>(Landroid/animation/AnimatorInflater-IA;)V

    move-object v2, p0

    goto :goto_78

    .line 477
    :cond_69
    if-eqz v4, :cond_78

    .line 478
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 479
    new-instance p0, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    invoke-direct {p0, v2}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>(Landroid/animation/AnimatorInflater-IA;)V

    move-object v2, p0

    .line 486
    :cond_78
    :goto_78
    return-object v2
.end method

.method private static greylist-max-o setupObjectAnimator(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;IF)V
    .registers 11

    .line 500
    check-cast p0, Landroid/animation/ObjectAnimator;

    .line 501
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 511
    const/4 v2, 0x0

    if-eqz v1, :cond_8b

    .line 512
    nop

    .line 513
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 514
    nop

    .line 515
    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 517
    if-eq p2, v3, :cond_1b

    const/4 v6, 0x4

    if-ne p2, v6, :cond_1c

    .line 520
    :cond_1b
    move p2, v2

    .line 522
    :cond_1c
    if-nez v4, :cond_3e

    if-eqz v5, :cond_21

    goto :goto_3e

    .line 523
    :cond_21
    new-instance p0, Landroid/view/InflateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " propertyXName or propertyYName is needed for PathData"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 526
    :cond_3e
    :goto_3e
    invoke-static {v1}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p1

    .line 527
    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr p3, v1

    .line 528
    invoke-static {p1, p3}, Landroid/animation/KeyframeSet;->ofPath(Landroid/graphics/Path;F)Landroid/animation/PathKeyframes;

    move-result-object p1

    .line 531
    if-nez p2, :cond_54

    .line 532
    invoke-virtual {p1}, Landroid/animation/PathKeyframes;->createXFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;

    move-result-object p2

    .line 533
    invoke-virtual {p1}, Landroid/animation/PathKeyframes;->createYFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;

    move-result-object p1

    goto :goto_5c

    .line 535
    :cond_54
    invoke-virtual {p1}, Landroid/animation/PathKeyframes;->createXIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;

    move-result-object p2

    .line 536
    invoke-virtual {p1}, Landroid/animation/PathKeyframes;->createYIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;

    move-result-object p1

    .line 538
    :goto_5c
    nop

    .line 539
    nop

    .line 540
    const/4 p3, 0x0

    if-eqz v4, :cond_66

    .line 541
    invoke-static {v4, p2}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    goto :goto_67

    .line 540
    :cond_66
    move-object p2, p3

    .line 543
    :goto_67
    if-eqz v5, :cond_6d

    .line 544
    invoke-static {v5, p1}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    .line 546
    :cond_6d
    if-nez p2, :cond_77

    .line 547
    new-array p1, v0, [Landroid/animation/PropertyValuesHolder;

    aput-object p3, p1, v2

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_8a

    .line 548
    :cond_77
    if-nez p3, :cond_81

    .line 549
    new-array p1, v0, [Landroid/animation/PropertyValuesHolder;

    aput-object p2, p1, v2

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_8a

    .line 551
    :cond_81
    new-array p1, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object p2, p1, v2

    aput-object p3, p1, v0

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 554
    :goto_8a
    goto :goto_93

    .line 555
    :cond_8b
    nop

    .line 556
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 557
    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 559
    :goto_93
    return-void
.end method

.method private static greylist-max-o setupValues(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;ZZIZI)V
    .registers 11

    .line 575
    nop

    .line 576
    nop

    .line 577
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x6

    if-eqz p2, :cond_49

    .line 580
    const/4 p2, 0x1

    if-eqz p3, :cond_36

    .line 581
    if-ne p4, v2, :cond_12

    .line 582
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    goto :goto_16

    .line 584
    :cond_12
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    .line 586
    :goto_16
    if-eqz p5, :cond_2e

    .line 587
    if-ne p6, v2, :cond_1f

    .line 588
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    goto :goto_23

    .line 590
    :cond_1f
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    .line 592
    :goto_23
    const/4 p4, 0x2

    new-array p4, p4, [F

    aput p3, p4, v0

    aput p1, p4, p2

    invoke-virtual {p0, p4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_48

    .line 594
    :cond_2e
    new-array p1, p2, [F

    aput p3, p1, v0

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_48

    .line 597
    :cond_36
    if-ne p6, v2, :cond_3d

    .line 598
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    goto :goto_41

    .line 600
    :cond_3d
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    .line 602
    :goto_41
    new-array p2, p2, [F

    aput p1, p2, v0

    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 604
    :goto_48
    goto :goto_ab

    .line 607
    :cond_49
    if-eqz p3, :cond_8b

    .line 608
    if-ne p4, v2, :cond_53

    .line 609
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    goto :goto_62

    .line 610
    :cond_53
    invoke-static {p4}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result p2

    if-eqz p2, :cond_5e

    .line 611
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    goto :goto_62

    .line 613
    :cond_5e
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 615
    :goto_62
    if-eqz p5, :cond_83

    .line 616
    if-ne p6, v2, :cond_6c

    .line 617
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    float-to-int p1, p1

    goto :goto_7b

    .line 618
    :cond_6c
    invoke-static {p6}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result p3

    if-eqz p3, :cond_77

    .line 619
    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    goto :goto_7b

    .line 621
    :cond_77
    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 623
    :goto_7b
    filled-new-array {p2, p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_ab

    .line 625
    :cond_83
    filled-new-array {p2}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_ab

    .line 628
    :cond_8b
    if-eqz p5, :cond_ab

    .line 629
    if-ne p6, v2, :cond_95

    .line 630
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    float-to-int p1, p1

    goto :goto_a4

    .line 631
    :cond_95
    invoke-static {p6}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result p2

    if-eqz p2, :cond_a0

    .line 632
    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    goto :goto_a4

    .line 634
    :cond_a0
    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 636
    :goto_a4
    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 640
    :cond_ab
    :goto_ab
    return-void
.end method
