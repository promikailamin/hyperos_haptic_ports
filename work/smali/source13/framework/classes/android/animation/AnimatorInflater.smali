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
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "pixelSize"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 646
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;
    .registers 27
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "parent"    # Landroid/animation/AnimatorSet;
    .param p5, "sequenceOrdering"    # I
    .param p6, "pixelSize"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 653
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p6

    const/4 v0, 0x0

    .line 654
    .local v0, "anim":Landroid/animation/Animator;
    const/4 v1, 0x0

    .line 658
    .local v1, "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    move-object v13, v1

    .line 660
    .end local v1    # "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .local v12, "depth":I
    .local v13, "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :goto_11
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v14, v1

    .local v14, "type":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_24

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-le v1, v12, :cond_20

    goto :goto_24

    :cond_20
    move-object/from16 v2, p2

    goto/16 :goto_f2

    :cond_24
    :goto_24
    const/4 v1, 0x1

    if-eq v14, v1, :cond_f0

    .line 663
    const/4 v1, 0x2

    if-eq v14, v1, :cond_2b

    .line 664
    goto :goto_11

    .line 667
    :cond_2b
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 668
    .local v15, "name":Ljava/lang/String;
    const/16 v16, 0x0

    .line 670
    .local v16, "gotValues":Z
    const-string/jumbo v1, "objectAnimator"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 671
    invoke-static {v7, v8, v9, v11}, Landroid/animation/AnimatorInflater;->loadObjectAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    move-object/from16 v2, p2

    goto/16 :goto_c0

    .line 672
    :cond_42
    const-string v1, "animator"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 673
    const/4 v1, 0x0

    invoke-static {v7, v8, v9, v1, v11}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;F)Landroid/animation/ValueAnimator;

    move-result-object v0

    move-object/from16 v2, p2

    goto/16 :goto_c0

    .line 674
    :cond_53
    const-string/jumbo v1, "set"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 675
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v6, v1

    .line 677
    .end local v0    # "anim":Landroid/animation/Animator;
    .local v6, "anim":Landroid/animation/Animator;
    const/4 v0, 0x0

    if-eqz v8, :cond_6d

    .line 678
    sget-object v1, Lcom/android/internal/R$styleable;->AnimatorSet:[I

    invoke-virtual {v8, v9, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    move-object v5, v1

    .local v1, "a":Landroid/content/res/TypedArray;
    goto :goto_74

    .line 680
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_6d
    sget-object v1, Lcom/android/internal/R$styleable;->AnimatorSet:[I

    invoke-virtual {v7, v9, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    move-object v5, v1

    .line 682
    .local v5, "a":Landroid/content/res/TypedArray;
    :goto_74
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/animation/Animator;->appendChangingConfigurations(I)V

    .line 683
    invoke-virtual {v5, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    .line 684
    .local v17, "ordering":I
    move-object v4, v6

    check-cast v4, Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v18, v5

    .end local v5    # "a":Landroid/content/res/TypedArray;
    .local v18, "a":Landroid/content/res/TypedArray;
    move/from16 v5, v17

    move-object/from16 v19, v6

    .end local v6    # "anim":Landroid/animation/Animator;
    .local v19, "anim":Landroid/animation/Animator;
    move/from16 v6, p6

    invoke-static/range {v0 .. v6}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    .line 686
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/TypedArray;->recycle()V

    .line 687
    .end local v17    # "ordering":I
    .end local v18    # "a":Landroid/content/res/TypedArray;
    move-object/from16 v0, v19

    goto :goto_c0

    .end local v19    # "anim":Landroid/animation/Animator;
    .restart local v0    # "anim":Landroid/animation/Animator;
    :cond_9b
    const-string/jumbo v1, "propertyValuesHolder"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d1

    .line 688
    nop

    .line 689
    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 688
    move-object/from16 v2, p2

    invoke-static {v7, v8, v2, v1}, Landroid/animation/AnimatorInflater;->loadValues(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 690
    .local v1, "values":[Landroid/animation/PropertyValuesHolder;
    if-eqz v1, :cond_bd

    if-eqz v0, :cond_bd

    instance-of v3, v0, Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_bd

    .line 691
    move-object v3, v0

    check-cast v3, Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 693
    :cond_bd
    const/16 v16, 0x1

    .line 694
    .end local v1    # "values":[Landroid/animation/PropertyValuesHolder;
    nop

    .line 698
    :goto_c0
    if-eqz v10, :cond_cf

    if-nez v16, :cond_cf

    .line 699
    if-nez v13, :cond_cc

    .line 700
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v1

    .line 702
    :cond_cc
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "gotValues":Z
    :cond_cf
    goto/16 :goto_11

    .line 695
    .restart local v15    # "name":Ljava/lang/String;
    .restart local v16    # "gotValues":Z
    :cond_d1
    move-object/from16 v2, p2

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown animator name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 660
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "gotValues":Z
    :cond_f0
    move-object/from16 v2, p2

    .line 705
    :goto_f2
    if-eqz v10, :cond_11c

    if-eqz v13, :cond_11c

    .line 706
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/animation/Animator;

    .line 707
    .local v1, "animsArray":[Landroid/animation/Animator;
    const/4 v3, 0x0

    .line 708
    .local v3, "index":I
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_101
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_113

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    .line 709
    .local v5, "a":Landroid/animation/Animator;
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "index":I
    .local v6, "index":I
    aput-object v5, v1, v3

    .line 710
    .end local v5    # "a":Landroid/animation/Animator;
    move v3, v6

    goto :goto_101

    .line 711
    .end local v6    # "index":I
    .restart local v3    # "index":I
    :cond_113
    if-nez p5, :cond_119

    .line 712
    invoke-virtual {v10, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_11c

    .line 714
    :cond_119
    invoke-virtual {v10, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 717
    .end local v1    # "animsArray":[Landroid/animation/Animator;
    .end local v3    # "index":I
    :cond_11c
    :goto_11c
    return-object v0
.end method

.method private static greylist-max-o createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;
    .registers 4
    .param p0, "sampleKeyframe"    # Landroid/animation/Keyframe;
    .param p1, "fraction"    # F

    .line 923
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_d

    .line 924
    invoke-static {p1}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v0

    goto :goto_1e

    .line 925
    :cond_d
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1a

    .line 926
    invoke-static {p1}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v0

    goto :goto_1e

    .line 927
    :cond_1a
    invoke-static {p1}, Landroid/animation/Keyframe;->ofObject(F)Landroid/animation/Keyframe;

    move-result-object v0

    .line 923
    :goto_1e
    return-object v0
.end method

.method private static greylist-max-o createStateListAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/animation/StateListAnimator;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 209
    new-instance v0, Landroid/animation/StateListAnimator;

    invoke-direct {v0}, Landroid/animation/StateListAnimator;-><init>()V

    .line 212
    .local v0, "stateListAnimator":Landroid/animation/StateListAnimator;
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 213
    .local v1, "type":I
    packed-switch v1, :pswitch_data_6e

    goto :goto_6c

    .line 220
    :pswitch_d
    const/4 v2, 0x0

    .line 221
    .local v2, "animator":Landroid/animation/Animator;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "item"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 222
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    .line 223
    .local v3, "attributeCount":I
    new-array v4, v3, [I

    .line 224
    .local v4, "states":[I
    const/4 v5, 0x0

    .line 225
    .local v5, "stateIndex":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_22
    if-ge v6, v3, :cond_48

    .line 226
    invoke-interface {p2, v6}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v7

    .line 227
    .local v7, "attrName":I
    const v8, 0x10101cd

    const/4 v9, 0x0

    if-ne v7, v8, :cond_37

    .line 228
    invoke-interface {p2, v6, v9}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v8

    .line 229
    .local v8, "animId":I
    invoke-static {p0, v8}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    .line 230
    .end local v8    # "animId":I
    goto :goto_45

    .line 231
    :cond_37
    add-int/lit8 v8, v5, 0x1

    .line 232
    .end local v5    # "stateIndex":I
    .local v8, "stateIndex":I
    invoke-interface {p2, v6, v9}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v9

    if-eqz v9, :cond_41

    .line 233
    move v9, v7

    goto :goto_42

    :cond_41
    neg-int v9, v7

    :goto_42
    aput v9, v4, v5

    move v5, v8

    .line 225
    .end local v7    # "attrName":I
    .end local v8    # "stateIndex":I
    .restart local v5    # "stateIndex":I
    :goto_45
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 236
    .end local v6    # "i":I
    :cond_48
    if-nez v2, :cond_58

    .line 237
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 238
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const/high16 v8, 0x3f800000    # 1.0f

    .line 237
    invoke-static {v6, v7, p1, v8}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;

    move-result-object v2

    .line 241
    :cond_58
    if-eqz v2, :cond_63

    .line 245
    nop

    .line 246
    invoke-static {v4, v5}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v6

    invoke-virtual {v0, v6, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    goto :goto_6c

    .line 242
    :cond_63
    new-instance v6, Landroid/content/res/Resources$NotFoundException;

    const-string v7, "animation state item must have a valid animation"

    invoke-direct {v6, v7}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 216
    .end local v2    # "animator":Landroid/animation/Animator;
    .end local v3    # "attributeCount":I
    .end local v4    # "states":[I
    .end local v5    # "stateIndex":I
    :pswitch_6b
    return-object v0

    .line 248
    :cond_6c
    :goto_6c
    goto :goto_5

    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_d
        :pswitch_6b
    .end packed-switch
.end method

.method private static greylist-max-o distributeKeyframes([Landroid/animation/Keyframe;FII)V
    .registers 9
    .param p0, "keyframes"    # [Landroid/animation/Keyframe;
    .param p1, "gap"    # F
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 950
    sub-int v0, p3, p2

    add-int/lit8 v0, v0, 0x2

    .line 951
    .local v0, "count":I
    int-to-float v1, v0

    div-float v1, p1, v1

    .line 952
    .local v1, "increment":F
    move v2, p2

    .local v2, "i":I
    :goto_8
    if-gt v2, p3, :cond_1b

    .line 953
    aget-object v3, p0, v2

    add-int/lit8 v4, v2, -0x1

    aget-object v4, p0, v4

    invoke-virtual {v4}, Landroid/animation/Keyframe;->getFraction()F

    move-result v4

    add-float/2addr v4, v1

    invoke-virtual {v3, v4}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 952
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 955
    .end local v2    # "i":I
    :cond_1b
    return-void
.end method

.method private static greylist-max-o dumpKeyframes([Ljava/lang/Object;Ljava/lang/String;)V
    .registers 9
    .param p0, "keyframes"    # [Ljava/lang/Object;
    .param p1, "header"    # Ljava/lang/String;

    .line 820
    if-eqz p0, :cond_61

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_61

    .line 823
    :cond_6
    const-string v0, "AnimatorInflater"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    array-length v1, p0

    .line 825
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v1, :cond_60

    .line 826
    aget-object v3, p0, v2

    check-cast v3, Landroid/animation/Keyframe;

    .line 827
    .local v3, "keyframe":Landroid/animation/Keyframe;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Keyframe "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": fraction "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 828
    invoke-virtual {v3}, Landroid/animation/Keyframe;->getFraction()F

    move-result v5

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    const-string/jumbo v6, "null"

    if-gez v5, :cond_36

    move-object v5, v6

    goto :goto_3e

    :cond_36
    invoke-virtual {v3}, Landroid/animation/Keyframe;->getFraction()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    :goto_3e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", , value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 829
    invoke-virtual {v3}, Landroid/animation/Keyframe;->hasValue()Z

    move-result v5

    if-eqz v5, :cond_52

    invoke-virtual {v3}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v6

    :cond_52
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 827
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    .end local v3    # "keyframe":Landroid/animation/Keyframe;
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 831
    .end local v2    # "i":I
    :cond_60
    return-void

    .line 821
    .end local v1    # "count":I
    :cond_61
    :goto_61
    return-void
.end method

.method private static greylist-max-o getChangingConfigs(Landroid/content/res/Resources;I)I
    .registers 4
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .line 1077
    sget-object v0, Landroid/animation/AnimatorInflater;->sTmpTypedValue:Landroid/util/TypedValue;

    monitor-enter v0

    .line 1078
    const/4 v1, 0x1

    :try_start_4
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1079
    iget v1, v0, Landroid/util/TypedValue;->changingConfigurations:I

    monitor-exit v0

    return v1

    .line 1080
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private static greylist-max-o getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;
    .registers 28
    .param p0, "styledAttributes"    # Landroid/content/res/TypedArray;
    .param p1, "valueType"    # I
    .param p2, "valueFromId"    # I
    .param p3, "valueToId"    # I
    .param p4, "propertyName"    # Ljava/lang/String;

    .line 279
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    .line 280
    .local v4, "tvFrom":Landroid/util/TypedValue;
    if-eqz v4, :cond_10

    const/4 v7, 0x1

    goto :goto_11

    :cond_10
    const/4 v7, 0x0

    .line 281
    .local v7, "hasFrom":Z
    :goto_11
    if-eqz v7, :cond_16

    iget v8, v4, Landroid/util/TypedValue;->type:I

    goto :goto_17

    :cond_16
    const/4 v8, 0x0

    .line 282
    .local v8, "fromType":I
    :goto_17
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v9

    .line 283
    .local v9, "tvTo":Landroid/util/TypedValue;
    if-eqz v9, :cond_1f

    const/4 v10, 0x1

    goto :goto_20

    :cond_1f
    const/4 v10, 0x0

    .line 284
    .local v10, "hasTo":Z
    :goto_20
    if-eqz v10, :cond_25

    iget v11, v9, Landroid/util/TypedValue;->type:I

    goto :goto_26

    :cond_25
    const/4 v11, 0x0

    .line 286
    .local v11, "toType":I
    :goto_26
    const/4 v12, 0x4

    move/from16 v13, p1

    if-ne v13, v12, :cond_3f

    .line 288
    if-eqz v7, :cond_33

    invoke-static {v8}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v12

    if-nez v12, :cond_3b

    :cond_33
    if-eqz v10, :cond_3d

    invoke-static {v11}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v12

    if-eqz v12, :cond_3d

    .line 289
    :cond_3b
    const/4 v12, 0x3

    .end local p1    # "valueType":I
    .local v12, "valueType":I
    goto :goto_40

    .line 291
    .end local v12    # "valueType":I
    .restart local p1    # "valueType":I
    :cond_3d
    const/4 v12, 0x0

    .end local p1    # "valueType":I
    .restart local v12    # "valueType":I
    goto :goto_40

    .line 286
    .end local v12    # "valueType":I
    .restart local p1    # "valueType":I
    :cond_3f
    move v12, v13

    .line 295
    .end local p1    # "valueType":I
    .restart local v12    # "valueType":I
    :goto_40
    if-nez v12, :cond_44

    const/4 v13, 0x1

    goto :goto_45

    :cond_44
    const/4 v13, 0x0

    .line 297
    .local v13, "getFloats":Z
    :goto_45
    const/4 v14, 0x0

    .line 299
    .local v14, "returnValue":Landroid/animation/PropertyValuesHolder;
    const/4 v15, 0x2

    if-ne v12, v15, :cond_103

    .line 300
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 301
    .local v5, "fromString":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 302
    .local v6, "toString":Ljava/lang/String;
    const/16 v18, 0x0

    if-nez v5, :cond_58

    .line 303
    move-object/from16 v15, v18

    goto :goto_5d

    :cond_58
    new-instance v15, Landroid/util/PathParser$PathData;

    invoke-direct {v15, v5}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    .line 304
    .local v15, "nodesFrom":Landroid/util/PathParser$PathData;
    :goto_5d
    if-nez v6, :cond_66

    .line 305
    move-object/from16 v22, v18

    move-object/from16 v18, v4

    move-object/from16 v4, v22

    goto :goto_6d

    :cond_66
    move-object/from16 v18, v4

    .end local v4    # "tvFrom":Landroid/util/TypedValue;
    .local v18, "tvFrom":Landroid/util/TypedValue;
    new-instance v4, Landroid/util/PathParser$PathData;

    invoke-direct {v4, v6}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    .line 307
    .local v4, "nodesTo":Landroid/util/PathParser$PathData;
    :goto_6d
    if-nez v15, :cond_7a

    if-eqz v4, :cond_72

    goto :goto_7a

    :cond_72
    move-object/from16 v19, v9

    move/from16 v20, v11

    move-object/from16 v21, v14

    goto/16 :goto_fb

    .line 308
    :cond_7a
    :goto_7a
    if-eqz v15, :cond_e3

    .line 309
    new-instance v19, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    invoke-direct/range {v19 .. v19}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>()V

    move-object/from16 v20, v19

    .line 310
    .local v20, "evaluator":Landroid/animation/TypeEvaluator;
    if-eqz v4, :cond_cf

    .line 311
    invoke-static {v15, v4}, Landroid/util/PathParser;->canMorph(Landroid/util/PathParser$PathData;Landroid/util/PathParser$PathData;)Z

    move-result v19

    if-eqz v19, :cond_a4

    .line 315
    move-object/from16 v19, v9

    const/4 v9, 0x2

    .end local v9    # "tvTo":Landroid/util/TypedValue;
    .local v19, "tvTo":Landroid/util/TypedValue;
    new-array v9, v9, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v15, v9, v17

    const/16 v16, 0x1

    aput-object v4, v9, v16

    move-object/from16 v21, v14

    move-object/from16 v14, v20

    .end local v20    # "evaluator":Landroid/animation/TypeEvaluator;
    .local v14, "evaluator":Landroid/animation/TypeEvaluator;
    .local v21, "returnValue":Landroid/animation/PropertyValuesHolder;
    invoke-static {v3, v14, v9}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    move-object v14, v9

    move/from16 v20, v11

    .end local v21    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .local v9, "returnValue":Landroid/animation/PropertyValuesHolder;
    goto :goto_e2

    .line 312
    .end local v19    # "tvTo":Landroid/util/TypedValue;
    .local v9, "tvTo":Landroid/util/TypedValue;
    .local v14, "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v20    # "evaluator":Landroid/animation/TypeEvaluator;
    :cond_a4
    move-object/from16 v19, v9

    move-object/from16 v21, v14

    move-object/from16 v14, v20

    .end local v9    # "tvTo":Landroid/util/TypedValue;
    .end local v20    # "evaluator":Landroid/animation/TypeEvaluator;
    .local v14, "evaluator":Landroid/animation/TypeEvaluator;
    .restart local v19    # "tvTo":Landroid/util/TypedValue;
    .restart local v21    # "returnValue":Landroid/animation/PropertyValuesHolder;
    new-instance v9, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v11

    .end local v11    # "toType":I
    .local v20, "toType":I
    const-string v11, " Can\'t morph from "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, " to "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 318
    .end local v19    # "tvTo":Landroid/util/TypedValue;
    .end local v21    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v9    # "tvTo":Landroid/util/TypedValue;
    .restart local v11    # "toType":I
    .local v14, "returnValue":Landroid/animation/PropertyValuesHolder;
    .local v20, "evaluator":Landroid/animation/TypeEvaluator;
    :cond_cf
    move-object/from16 v19, v9

    move-object/from16 v21, v14

    move-object/from16 v14, v20

    move/from16 v20, v11

    .end local v9    # "tvTo":Landroid/util/TypedValue;
    .end local v11    # "toType":I
    .local v14, "evaluator":Landroid/animation/TypeEvaluator;
    .restart local v19    # "tvTo":Landroid/util/TypedValue;
    .local v20, "toType":I
    .restart local v21    # "returnValue":Landroid/animation/PropertyValuesHolder;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v15, v2, v9

    invoke-static {v3, v14, v2}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    move-object v14, v2

    .line 321
    .end local v21    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .local v14, "returnValue":Landroid/animation/PropertyValuesHolder;
    :goto_e2
    goto :goto_fd

    .end local v19    # "tvTo":Landroid/util/TypedValue;
    .end local v20    # "toType":I
    .restart local v9    # "tvTo":Landroid/util/TypedValue;
    .restart local v11    # "toType":I
    :cond_e3
    move-object/from16 v19, v9

    move/from16 v20, v11

    move-object/from16 v21, v14

    .end local v9    # "tvTo":Landroid/util/TypedValue;
    .end local v11    # "toType":I
    .end local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v19    # "tvTo":Landroid/util/TypedValue;
    .restart local v20    # "toType":I
    .restart local v21    # "returnValue":Landroid/animation/PropertyValuesHolder;
    if-eqz v4, :cond_fb

    .line 322
    new-instance v2, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    invoke-direct {v2}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>()V

    .line 323
    .local v2, "evaluator":Landroid/animation/TypeEvaluator;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v9, v11

    invoke-static {v3, v2, v9}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .end local v21    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    goto :goto_fd

    .line 327
    .end local v2    # "evaluator":Landroid/animation/TypeEvaluator;
    .end local v4    # "nodesTo":Landroid/util/PathParser$PathData;
    .end local v5    # "fromString":Ljava/lang/String;
    .end local v6    # "toString":Ljava/lang/String;
    .end local v15    # "nodesFrom":Landroid/util/PathParser$PathData;
    .end local v19    # "tvTo":Landroid/util/TypedValue;
    .end local v20    # "toType":I
    .restart local v9    # "tvTo":Landroid/util/TypedValue;
    .restart local v11    # "toType":I
    :cond_fb
    :goto_fb
    move-object/from16 v14, v21

    .end local v9    # "tvTo":Landroid/util/TypedValue;
    .end local v11    # "toType":I
    .restart local v19    # "tvTo":Landroid/util/TypedValue;
    .restart local v20    # "toType":I
    :goto_fd
    move/from16 v11, p3

    move/from16 v9, v20

    goto/16 :goto_1f8

    .line 328
    .end local v18    # "tvFrom":Landroid/util/TypedValue;
    .end local v19    # "tvTo":Landroid/util/TypedValue;
    .end local v20    # "toType":I
    .local v4, "tvFrom":Landroid/util/TypedValue;
    .restart local v9    # "tvTo":Landroid/util/TypedValue;
    .restart local v11    # "toType":I
    :cond_103
    move-object/from16 v18, v4

    move-object/from16 v19, v9

    move/from16 v20, v11

    move-object/from16 v21, v14

    .end local v4    # "tvFrom":Landroid/util/TypedValue;
    .end local v9    # "tvTo":Landroid/util/TypedValue;
    .end local v11    # "toType":I
    .end local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v18    # "tvFrom":Landroid/util/TypedValue;
    .restart local v19    # "tvTo":Landroid/util/TypedValue;
    .restart local v20    # "toType":I
    .restart local v21    # "returnValue":Landroid/animation/PropertyValuesHolder;
    const/4 v2, 0x0

    .line 330
    .restart local v2    # "evaluator":Landroid/animation/TypeEvaluator;
    const/4 v4, 0x3

    if-ne v12, v4, :cond_113

    .line 332
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v2

    .line 334
    :cond_113
    const/4 v4, 0x5

    const/4 v5, 0x0

    if-eqz v13, :cond_172

    .line 337
    if-eqz v7, :cond_156

    .line 338
    if-ne v8, v4, :cond_120

    .line 339
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    .local v6, "valueFrom":F
    goto :goto_124

    .line 341
    .end local v6    # "valueFrom":F
    :cond_120
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    .line 343
    .restart local v6    # "valueFrom":F
    :goto_124
    if-eqz v10, :cond_146

    .line 344
    move/from16 v9, v20

    .end local v20    # "toType":I
    .local v9, "toType":I
    if-ne v9, v4, :cond_131

    .line 345
    move/from16 v11, p3

    invoke-virtual {v0, v11, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .local v4, "valueTo":F
    goto :goto_137

    .line 347
    .end local v4    # "valueTo":F
    :cond_131
    move/from16 v11, p3

    invoke-virtual {v0, v11, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 349
    .restart local v4    # "valueTo":F
    :goto_137
    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v14, 0x0

    aput v6, v5, v14

    const/4 v15, 0x1

    aput v4, v5, v15

    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    move-object v14, v5

    .end local v21    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .local v5, "returnValue":Landroid/animation/PropertyValuesHolder;
    goto :goto_170

    .line 352
    .end local v4    # "valueTo":F
    .end local v5    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .end local v9    # "toType":I
    .restart local v20    # "toType":I
    .restart local v21    # "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_146
    move/from16 v11, p3

    move/from16 v9, v20

    const/4 v14, 0x0

    const/4 v15, 0x1

    .end local v20    # "toType":I
    .restart local v9    # "toType":I
    new-array v4, v15, [F

    aput v6, v4, v14

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    move-object v14, v4

    .end local v21    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .local v4, "returnValue":Landroid/animation/PropertyValuesHolder;
    goto :goto_170

    .line 355
    .end local v4    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .end local v6    # "valueFrom":F
    .end local v9    # "toType":I
    .restart local v20    # "toType":I
    .restart local v21    # "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_156
    move/from16 v11, p3

    move/from16 v9, v20

    .end local v20    # "toType":I
    .restart local v9    # "toType":I
    if-ne v9, v4, :cond_161

    .line 356
    invoke-virtual {v0, v11, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .local v4, "valueTo":F
    goto :goto_165

    .line 358
    .end local v4    # "valueTo":F
    :cond_161
    invoke-virtual {v0, v11, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 360
    .restart local v4    # "valueTo":F
    :goto_165
    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v4, v5, v6

    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    move-object v14, v5

    .line 362
    .end local v4    # "valueTo":F
    .end local v21    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    :goto_170
    goto/16 :goto_1f1

    .line 365
    .end local v9    # "toType":I
    .end local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v20    # "toType":I
    .restart local v21    # "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_172
    move/from16 v11, p3

    move/from16 v9, v20

    .end local v20    # "toType":I
    .restart local v9    # "toType":I
    if-eqz v7, :cond_1c8

    .line 366
    if-ne v8, v4, :cond_180

    .line 367
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    float-to-int v6, v6

    .local v6, "valueFrom":I
    goto :goto_193

    .line 368
    .end local v6    # "valueFrom":I
    :cond_180
    invoke-static {v8}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v6

    if-eqz v6, :cond_18d

    .line 369
    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    move v6, v14

    .local v14, "valueFrom":I
    goto :goto_193

    .line 371
    .end local v14    # "valueFrom":I
    :cond_18d
    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    move v6, v14

    .line 373
    .restart local v6    # "valueFrom":I
    :goto_193
    if-eqz v10, :cond_1bd

    .line 374
    if-ne v9, v4, :cond_19f

    .line 375
    invoke-virtual {v0, v11, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    move v5, v4

    const/4 v4, 0x0

    .local v4, "valueTo":I
    goto :goto_1b0

    .line 376
    .end local v4    # "valueTo":I
    :cond_19f
    invoke-static {v9}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v4

    if-eqz v4, :cond_1ab

    .line 377
    const/4 v4, 0x0

    invoke-virtual {v0, v11, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .local v5, "valueTo":I
    goto :goto_1b0

    .line 379
    .end local v5    # "valueTo":I
    :cond_1ab
    const/4 v4, 0x0

    invoke-virtual {v0, v11, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 381
    .restart local v5    # "valueTo":I
    :goto_1b0
    const/4 v14, 0x2

    new-array v14, v14, [I

    aput v6, v14, v4

    const/4 v15, 0x1

    aput v5, v14, v15

    invoke-static {v3, v14}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .end local v21    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .local v14, "returnValue":Landroid/animation/PropertyValuesHolder;
    goto :goto_1f1

    .line 383
    .end local v5    # "valueTo":I
    .end local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v21    # "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_1bd
    const/4 v4, 0x0

    const/4 v15, 0x1

    new-array v5, v15, [I

    aput v6, v5, v4

    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .end local v21    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    goto :goto_1f1

    .line 386
    .end local v6    # "valueFrom":I
    .end local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v21    # "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_1c8
    if-eqz v10, :cond_1ef

    .line 387
    if-ne v9, v4, :cond_1d4

    .line 388
    invoke-virtual {v0, v11, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    move v5, v4

    const/4 v4, 0x0

    .restart local v4    # "valueTo":I
    goto :goto_1e5

    .line 389
    .end local v4    # "valueTo":I
    :cond_1d4
    invoke-static {v9}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v4

    if-eqz v4, :cond_1e0

    .line 390
    const/4 v4, 0x0

    invoke-virtual {v0, v11, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .restart local v5    # "valueTo":I
    goto :goto_1e5

    .line 392
    .end local v5    # "valueTo":I
    :cond_1e0
    const/4 v4, 0x0

    invoke-virtual {v0, v11, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 394
    .restart local v5    # "valueTo":I
    :goto_1e5
    const/4 v6, 0x1

    new-array v6, v6, [I

    aput v5, v6, v4

    invoke-static {v3, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .end local v21    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    goto :goto_1f1

    .line 386
    .end local v5    # "valueTo":I
    .end local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v21    # "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_1ef
    move-object/from16 v14, v21

    .line 398
    .end local v21    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    :goto_1f1
    if-eqz v14, :cond_1f8

    if-eqz v2, :cond_1f8

    .line 399
    invoke-virtual {v14, v2}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 403
    .end local v2    # "evaluator":Landroid/animation/TypeEvaluator;
    :cond_1f8
    :goto_1f8
    return-object v14
.end method

.method private static greylist-max-o inferValueTypeFromValues(Landroid/content/res/TypedArray;II)I
    .registers 10
    .param p0, "styledAttributes"    # Landroid/content/res/TypedArray;
    .param p1, "valueFromId"    # I
    .param p2, "valueToId"    # I

    .line 802
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 803
    .local v0, "tvFrom":Landroid/util/TypedValue;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    move v3, v1

    goto :goto_b

    :cond_a
    move v3, v2

    .line 804
    .local v3, "hasFrom":Z
    :goto_b
    if-eqz v3, :cond_10

    iget v4, v0, Landroid/util/TypedValue;->type:I

    goto :goto_11

    :cond_10
    move v4, v2

    .line 805
    .local v4, "fromType":I
    :goto_11
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    .line 806
    .local v5, "tvTo":Landroid/util/TypedValue;
    if-eqz v5, :cond_18

    goto :goto_19

    :cond_18
    move v1, v2

    .line 807
    .local v1, "hasTo":Z
    :goto_19
    if-eqz v1, :cond_1d

    iget v2, v5, Landroid/util/TypedValue;->type:I

    .line 811
    .local v2, "toType":I
    :cond_1d
    if-eqz v3, :cond_25

    invoke-static {v4}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v6

    if-nez v6, :cond_2d

    :cond_25
    if-eqz v1, :cond_2f

    invoke-static {v2}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 812
    :cond_2d
    const/4 v6, 0x3

    .local v6, "valueType":I
    goto :goto_30

    .line 814
    .end local v6    # "valueType":I
    :cond_2f
    const/4 v6, 0x0

    .line 816
    .restart local v6    # "valueType":I
    :goto_30
    return v6
.end method

.method private static greylist-max-o inferValueTypeOfKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)I
    .registers 7
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 781
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 782
    sget-object v1, Lcom/android/internal/R$styleable;->Keyframe:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .local v1, "a":Landroid/content/res/TypedArray;
    goto :goto_10

    .line 784
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_a
    sget-object v1, Lcom/android/internal/R$styleable;->Keyframe:[I

    invoke-virtual {p0, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 787
    .restart local v1    # "a":Landroid/content/res/TypedArray;
    :goto_10
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 788
    .local v2, "keyframeValue":Landroid/util/TypedValue;
    if-eqz v2, :cond_17

    const/4 v0, 0x1

    .line 791
    .local v0, "hasValue":Z
    :cond_17
    if-eqz v0, :cond_23

    iget v3, v2, Landroid/util/TypedValue;->type:I

    invoke-static {v3}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 792
    const/4 v3, 0x3

    .local v3, "valueType":I
    goto :goto_24

    .line 794
    .end local v3    # "valueType":I
    :cond_23
    const/4 v3, 0x0

    .line 796
    .restart local v3    # "valueType":I
    :goto_24
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 797
    return v3
.end method

.method private static greylist-max-o isColorType(I)Z
    .registers 2
    .param p0, "type"    # I

    .line 1084
    const/16 v0, 0x1c

    if-lt p0, v0, :cond_a

    const/16 v0, 0x1f

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static whitelist loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;
    .registers 4
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 106
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, p2, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;
    .registers 11
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "id"    # I
    .param p3, "pathErrorScale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 112
    const-string v0, "Can\'t load animation resource ID #0x"

    .line 113
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;

    move-result-object v1

    .line 114
    .local v1, "animatorCache":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<Landroid/animation/Animator;>;"
    int-to-long v2, p2

    invoke-virtual {v1, v2, v3, p0, p1}, Landroid/content/res/ConfigurationBoundResourceCache;->getInstance(JLandroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 115
    .local v2, "animator":Landroid/animation/Animator;
    if-eqz v2, :cond_10

    .line 119
    return-object v2

    .line 123
    :cond_10
    const/4 v3, 0x0

    .line 125
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_11
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    move-object v3, v4

    .line 126
    invoke-static {p0, p1, v3, p3}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;

    move-result-object v4

    move-object v2, v4

    .line 127
    if-eqz v2, :cond_35

    .line 128
    invoke-static {p0, p2}, Landroid/animation/AnimatorInflater;->getChangingConfigs(Landroid/content/res/Resources;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/animation/Animator;->appendChangingConfigurations(I)V

    .line 129
    invoke-virtual {v2}, Landroid/animation/Animator;->createConstantState()Landroid/content/res/ConstantState;

    move-result-object v4

    .line 130
    .local v4, "constantState":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/animation/Animator;>;"
    if-eqz v4, :cond_35

    .line 134
    int-to-long v5, p2

    invoke-virtual {v1, v5, v6, p1, v4}, Landroid/content/res/ConfigurationBoundResourceCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;)V

    .line 136
    invoke-virtual {v4, p0, p1}, Landroid/content/res/ConstantState;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;
    :try_end_34
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_34} :catch_5f
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_34} :catch_3e
    .catchall {:try_start_11 .. :try_end_34} :catchall_3c

    move-object v2, v5

    .line 139
    .end local v4    # "constantState":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/animation/Animator;>;"
    :cond_35
    nop

    .line 153
    if-eqz v3, :cond_3b

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 139
    :cond_3b
    return-object v2

    .line 153
    :catchall_3c
    move-exception v0

    goto :goto_80

    .line 146
    :catch_3e
    move-exception v4

    .line 147
    .local v4, "ex":Ljava/io/IOException;
    :try_start_3f
    new-instance v5, Landroid/content/res/Resources$NotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 149
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    .line 150
    .local v0, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0, v4}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 151
    nop

    .end local v1    # "animatorCache":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<Landroid/animation/Animator;>;"
    .end local v2    # "animator":Landroid/animation/Animator;
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "resources":Landroid/content/res/Resources;
    .end local p1    # "theme":Landroid/content/res/Resources$Theme;
    .end local p2    # "id":I
    .end local p3    # "pathErrorScale":F
    throw v0

    .line 140
    .end local v0    # "rnf":Landroid/content/res/Resources$NotFoundException;
    .end local v4    # "ex":Ljava/io/IOException;
    .restart local v1    # "animatorCache":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<Landroid/animation/Animator;>;"
    .restart local v2    # "animator":Landroid/animation/Animator;
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "resources":Landroid/content/res/Resources;
    .restart local p1    # "theme":Landroid/content/res/Resources$Theme;
    .restart local p2    # "id":I
    .restart local p3    # "pathErrorScale":F
    :catch_5f
    move-exception v4

    .line 141
    .local v4, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v5, Landroid/content/res/Resources$NotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 143
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    .line 144
    .restart local v0    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0, v4}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 145
    nop

    .end local v1    # "animatorCache":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<Landroid/animation/Animator;>;"
    .end local v2    # "animator":Landroid/animation/Animator;
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "resources":Landroid/content/res/Resources;
    .end local p1    # "theme":Landroid/content/res/Resources$Theme;
    .end local p2    # "id":I
    .end local p3    # "pathErrorScale":F
    throw v0
    :try_end_80
    .catchall {:try_start_3f .. :try_end_80} :catchall_3c

    .line 153
    .end local v0    # "rnf":Landroid/content/res/Resources$NotFoundException;
    .end local v4    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1    # "animatorCache":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<Landroid/animation/Animator;>;"
    .restart local v2    # "animator":Landroid/animation/Animator;
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "resources":Landroid/content/res/Resources;
    .restart local p1    # "theme":Landroid/content/res/Resources$Theme;
    .restart local p2    # "id":I
    .restart local p3    # "pathErrorScale":F
    :goto_80
    if-eqz v3, :cond_85

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 154
    :cond_85
    throw v0
.end method

.method private static greylist-max-o loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;F)Landroid/animation/ValueAnimator;
    .registers 10
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "anim"    # Landroid/animation/ValueAnimator;
    .param p4, "pathErrorScale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1032
    const/4 v0, 0x0

    .line 1033
    .local v0, "arrayAnimator":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .line 1035
    .local v1, "arrayObjectAnimator":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    if-eqz p1, :cond_c

    .line 1036
    sget-object v3, Lcom/android/internal/R$styleable;->Animator:[I

    invoke-virtual {p1, p2, v3, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_12

    .line 1038
    :cond_c
    sget-object v3, Lcom/android/internal/R$styleable;->Animator:[I

    invoke-virtual {p0, p2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1042
    :goto_12
    if-eqz p3, :cond_2a

    .line 1043
    if-eqz p1, :cond_1d

    .line 1044
    sget-object v3, Lcom/android/internal/R$styleable;->PropertyAnimator:[I

    invoke-virtual {p1, p2, v3, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    goto :goto_23

    .line 1047
    :cond_1d
    sget-object v3, Lcom/android/internal/R$styleable;->PropertyAnimator:[I

    invoke-virtual {p0, p2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1049
    :goto_23
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/animation/ValueAnimator;->appendChangingConfigurations(I)V

    .line 1052
    :cond_2a
    if-nez p3, :cond_32

    .line 1053
    new-instance v3, Landroid/animation/ValueAnimator;

    invoke-direct {v3}, Landroid/animation/ValueAnimator;-><init>()V

    move-object p3, v3

    .line 1055
    :cond_32
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/animation/ValueAnimator;->appendChangingConfigurations(I)V

    .line 1057
    invoke-static {p3, v0, v1, p4}, Landroid/animation/AnimatorInflater;->parseAnimatorFromTypeArray(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;F)V

    .line 1059
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 1060
    .local v2, "resID":I
    if-lez v2, :cond_57

    .line 1061
    invoke-static {p0, p1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    .line 1062
    .local v3, "interpolator":Landroid/view/animation/Interpolator;
    instance-of v4, v3, Landroid/view/animation/BaseInterpolator;

    if-eqz v4, :cond_54

    .line 1063
    move-object v4, v3

    check-cast v4, Landroid/view/animation/BaseInterpolator;

    .line 1064
    invoke-virtual {v4}, Landroid/view/animation/BaseInterpolator;->getChangingConfiguration()I

    move-result v4

    .line 1063
    invoke-virtual {p3, v4}, Landroid/animation/ValueAnimator;->appendChangingConfigurations(I)V

    .line 1066
    :cond_54
    invoke-virtual {p3, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1069
    .end local v3    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_57
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1070
    if-eqz v1, :cond_5f

    .line 1071
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1073
    :cond_5f
    return-object p3
.end method

.method private static greylist-max-o loadKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;I)Landroid/animation/Keyframe;
    .registers 12
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "valueType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 962
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 963
    sget-object v1, Lcom/android/internal/R$styleable;->Keyframe:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .local v1, "a":Landroid/content/res/TypedArray;
    goto :goto_10

    .line 965
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_a
    sget-object v1, Lcom/android/internal/R$styleable;->Keyframe:[I

    invoke-virtual {p0, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 968
    .restart local v1    # "a":Landroid/content/res/TypedArray;
    :goto_10
    const/4 v2, 0x0

    .line 970
    .local v2, "keyframe":Landroid/animation/Keyframe;
    const/4 v3, 0x3

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 972
    .local v3, "fraction":F
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    .line 973
    .local v4, "keyframeValue":Landroid/util/TypedValue;
    const/4 v5, 0x1

    if-eqz v4, :cond_21

    move v6, v5

    goto :goto_22

    :cond_21
    move v6, v0

    .line 974
    .local v6, "hasValue":Z
    :goto_22
    const/4 v7, 0x4

    if-ne p3, v7, :cond_32

    .line 977
    if-eqz v6, :cond_31

    iget v7, v4, Landroid/util/TypedValue;->type:I

    invoke-static {v7}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 978
    const/4 p3, 0x3

    goto :goto_32

    .line 980
    :cond_31
    const/4 p3, 0x0

    .line 984
    :cond_32
    :goto_32
    if-eqz v6, :cond_4c

    .line 985
    packed-switch p3, :pswitch_data_6a

    :pswitch_37
    goto :goto_4b

    .line 992
    :pswitch_38
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 993
    .local v7, "intValue":I
    invoke-static {v3, v7}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v2

    goto :goto_4b

    .line 987
    .end local v7    # "intValue":I
    :pswitch_41
    const/4 v7, 0x0

    invoke-virtual {v1, v0, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 988
    .local v7, "value":F
    invoke-static {v3, v7}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    .line 989
    nop

    .line 994
    .end local v7    # "value":F
    :goto_4b
    goto :goto_58

    .line 997
    :cond_4c
    if-nez p3, :cond_53

    invoke-static {v3}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v7

    goto :goto_57

    .line 998
    :cond_53
    invoke-static {v3}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v7

    :goto_57
    move-object v2, v7

    .line 1001
    :goto_58
    invoke-virtual {v1, v5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 1002
    .local v0, "resID":I
    if-lez v0, :cond_65

    .line 1003
    invoke-static {p0, p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    .line 1004
    .local v5, "interpolator":Landroid/view/animation/Interpolator;
    invoke-virtual {v2, v5}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1006
    .end local v5    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_65
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1008
    return-object v2

    nop

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_41
        :pswitch_38
        :pswitch_37
        :pswitch_38
    .end packed-switch
.end method

.method private static greylist-max-o loadObjectAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;F)Landroid/animation/ObjectAnimator;
    .registers 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "pathErrorScale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1013
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 1015
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-static {p0, p1, p2, v0, p3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;F)Landroid/animation/ValueAnimator;

    .line 1017
    return-object v0
.end method

.method private static greylist-max-o loadPvh(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/animation/PropertyValuesHolder;
    .registers 24
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "propertyName"    # Ljava/lang/String;
    .param p4, "valueType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 838
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 839
    .local v2, "value":Landroid/animation/PropertyValuesHolder;
    const/4 v3, 0x0

    move-object v4, v3

    move/from16 v3, p4

    .line 842
    .end local p4    # "valueType":I
    .local v3, "valueType":I
    .local v4, "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    :goto_9
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v6, v5

    .local v6, "type":I
    const/4 v7, 0x3

    if-eq v5, v7, :cond_44

    const/4 v5, 0x1

    if-eq v6, v5, :cond_44

    .line 844
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 845
    .local v5, "name":Ljava/lang/String;
    const-string v7, "keyframe"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_43

    .line 846
    const/4 v7, 0x4

    if-ne v3, v7, :cond_2b

    .line 847
    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    invoke-static {v0, v1, v7}, Landroid/animation/AnimatorInflater;->inferValueTypeOfKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)I

    move-result v3

    .line 849
    :cond_2b
    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    invoke-static {v0, v1, v7, v3}, Landroid/animation/AnimatorInflater;->loadKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;I)Landroid/animation/Keyframe;

    move-result-object v7

    .line 850
    .local v7, "keyframe":Landroid/animation/Keyframe;
    if-eqz v7, :cond_40

    .line 851
    if-nez v4, :cond_3d

    .line 852
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v8

    .line 854
    :cond_3d
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 856
    :cond_40
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 858
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "keyframe":Landroid/animation/Keyframe;
    :cond_43
    goto :goto_9

    .line 861
    :cond_44
    if-eqz v4, :cond_112

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v8, v5

    .local v8, "count":I
    if-lez v5, :cond_10f

    .line 867
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/Keyframe;

    .line 868
    .local v9, "firstKeyframe":Landroid/animation/Keyframe;
    add-int/lit8 v10, v8, -0x1

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/Keyframe;

    .line 869
    .local v10, "lastKeyframe":Landroid/animation/Keyframe;
    invoke-virtual {v10}, Landroid/animation/Keyframe;->getFraction()F

    move-result v11

    .line 870
    .local v11, "endFraction":F
    const/high16 v12, 0x3f800000    # 1.0f

    cmpg-float v13, v11, v12

    const/4 v14, 0x0

    if-gez v13, :cond_7c

    .line 871
    cmpg-float v13, v11, v14

    if-gez v13, :cond_6f

    .line 872
    invoke-virtual {v10, v12}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_7c

    .line 874
    :cond_6f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-static {v10, v12}, Landroid/animation/AnimatorInflater;->createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    move-result-object v15

    invoke-virtual {v4, v13, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 875
    add-int/lit8 v8, v8, 0x1

    .line 878
    :cond_7c
    :goto_7c
    invoke-virtual {v9}, Landroid/animation/Keyframe;->getFraction()F

    move-result v13

    .line 879
    .local v13, "startFraction":F
    cmpl-float v15, v13, v14

    if-eqz v15, :cond_95

    .line 880
    cmpg-float v15, v13, v14

    if-gez v15, :cond_8c

    .line 881
    invoke-virtual {v9, v14}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_95

    .line 883
    :cond_8c
    invoke-static {v9, v14}, Landroid/animation/AnimatorInflater;->createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    move-result-object v15

    invoke-virtual {v4, v5, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 884
    add-int/lit8 v8, v8, 0x1

    .line 887
    :cond_95
    :goto_95
    new-array v5, v8, [Landroid/animation/Keyframe;

    .line 888
    .local v5, "keyframeArray":[Landroid/animation/Keyframe;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 889
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_9b
    if-ge v15, v8, :cond_fe

    .line 890
    aget-object v7, v5, v15

    .line 891
    .restart local v7    # "keyframe":Landroid/animation/Keyframe;
    invoke-virtual {v7}, Landroid/animation/Keyframe;->getFraction()F

    move-result v16

    cmpg-float v16, v16, v14

    if-gez v16, :cond_f0

    .line 892
    if-nez v15, :cond_af

    .line 893
    invoke-virtual {v7, v14}, Landroid/animation/Keyframe;->setFraction(F)V

    move/from16 v16, v14

    goto :goto_f2

    .line 894
    :cond_af
    add-int/lit8 v14, v8, -0x1

    if-ne v15, v14, :cond_b9

    .line 895
    invoke-virtual {v7, v12}, Landroid/animation/Keyframe;->setFraction(F)V

    const/16 v16, 0x0

    goto :goto_f2

    .line 899
    :cond_b9
    move v14, v15

    .line 900
    .local v14, "startIndex":I
    move/from16 v17, v15

    .line 901
    .local v17, "endIndex":I
    add-int/lit8 v18, v14, 0x1

    move/from16 v12, v17

    move/from16 v0, v18

    .end local v17    # "endIndex":I
    .local v0, "j":I
    .local v12, "endIndex":I
    :goto_c2
    add-int/lit8 v1, v8, -0x1

    if-ge v0, v1, :cond_d9

    .line 902
    aget-object v1, v5, v0

    invoke-virtual {v1}, Landroid/animation/Keyframe;->getFraction()F

    move-result v1

    const/16 v16, 0x0

    cmpl-float v1, v1, v16

    if-ltz v1, :cond_d3

    .line 903
    goto :goto_db

    .line 905
    :cond_d3
    move v12, v0

    .line 901
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, p1

    goto :goto_c2

    :cond_d9
    const/16 v16, 0x0

    .line 907
    .end local v0    # "j":I
    :goto_db
    add-int/lit8 v0, v12, 0x1

    aget-object v0, v5, v0

    invoke-virtual {v0}, Landroid/animation/Keyframe;->getFraction()F

    move-result v0

    add-int/lit8 v1, v14, -0x1

    aget-object v1, v5, v1

    .line 908
    invoke-virtual {v1}, Landroid/animation/Keyframe;->getFraction()F

    move-result v1

    sub-float/2addr v0, v1

    .line 909
    .local v0, "gap":F
    invoke-static {v5, v0, v14, v12}, Landroid/animation/AnimatorInflater;->distributeKeyframes([Landroid/animation/Keyframe;FII)V

    goto :goto_f2

    .line 891
    .end local v0    # "gap":F
    .end local v12    # "endIndex":I
    .end local v14    # "startIndex":I
    :cond_f0
    move/from16 v16, v14

    .line 889
    .end local v7    # "keyframe":Landroid/animation/Keyframe;
    :goto_f2
    add-int/lit8 v15, v15, 0x1

    const/4 v7, 0x3

    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v14, v16

    goto :goto_9b

    .line 913
    .end local v15    # "i":I
    :cond_fe
    move-object/from16 v0, p3

    invoke-static {v0, v5}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 914
    const/4 v1, 0x3

    if-ne v3, v1, :cond_114

    .line 915
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    goto :goto_114

    .line 861
    .end local v5    # "keyframeArray":[Landroid/animation/Keyframe;
    .end local v9    # "firstKeyframe":Landroid/animation/Keyframe;
    .end local v10    # "lastKeyframe":Landroid/animation/Keyframe;
    .end local v11    # "endFraction":F
    .end local v13    # "startFraction":F
    :cond_10f
    move-object/from16 v0, p3

    goto :goto_114

    .end local v8    # "count":I
    :cond_112
    move-object/from16 v0, p3

    .line 919
    :cond_114
    :goto_114
    return-object v2
.end method

.method public static whitelist loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 159
    const-string v0, "Can\'t load state list animator resource ID #0x"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 160
    .local v1, "resources":Landroid/content/res/Resources;
    nop

    .line 161
    invoke-virtual {v1}, Landroid/content/res/Resources;->getStateListAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;

    move-result-object v2

    .line 162
    .local v2, "cache":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<Landroid/animation/StateListAnimator;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 163
    .local v3, "theme":Landroid/content/res/Resources$Theme;
    int-to-long v4, p1

    invoke-virtual {v2, v4, v5, v1, v3}, Landroid/content/res/ConfigurationBoundResourceCache;->getInstance(JLandroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/StateListAnimator;

    .line 164
    .local v4, "animator":Landroid/animation/StateListAnimator;
    if-eqz v4, :cond_19

    .line 165
    return-object v4

    .line 167
    :cond_19
    const/4 v5, 0x0

    .line 169
    .local v5, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1a
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    move-object v5, v6

    .line 170
    invoke-static {v5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    invoke-static {p0, v5, v6}, Landroid/animation/AnimatorInflater;->createStateListAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/animation/StateListAnimator;

    move-result-object v6

    move-object v4, v6

    .line 171
    if-eqz v4, :cond_43

    .line 172
    invoke-static {v1, p1}, Landroid/animation/AnimatorInflater;->getChangingConfigs(Landroid/content/res/Resources;I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/animation/StateListAnimator;->appendChangingConfigurations(I)V

    .line 173
    nop

    .line 174
    invoke-virtual {v4}, Landroid/animation/StateListAnimator;->createConstantState()Landroid/content/res/ConstantState;

    move-result-object v6

    .line 175
    .local v6, "constantState":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/animation/StateListAnimator;>;"
    if-eqz v6, :cond_43

    .line 176
    int-to-long v7, p1

    invoke-virtual {v2, v7, v8, v3, v6}, Landroid/content/res/ConfigurationBoundResourceCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;)V

    .line 178
    invoke-virtual {v6, v1, v3}, Landroid/content/res/ConstantState;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/StateListAnimator;
    :try_end_42
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_42} :catch_6d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_42} :catch_4c
    .catchall {:try_start_1a .. :try_end_42} :catchall_4a

    move-object v4, v7

    .line 181
    .end local v6    # "constantState":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/animation/StateListAnimator;>;"
    :cond_43
    nop

    .line 199
    if-eqz v5, :cond_49

    .line 200
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    .line 181
    :cond_49
    return-object v4

    .line 199
    :catchall_4a
    move-exception v0

    goto :goto_8e

    .line 190
    :catch_4c
    move-exception v6

    .line 191
    .local v6, "ex":Ljava/io/IOException;
    :try_start_4d
    new-instance v7, Landroid/content/res/Resources$NotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 194
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    move-object v0, v7

    .line 196
    .local v0, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0, v6}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 197
    nop

    .end local v1    # "resources":Landroid/content/res/Resources;
    .end local v2    # "cache":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<Landroid/animation/StateListAnimator;>;"
    .end local v3    # "theme":Landroid/content/res/Resources$Theme;
    .end local v4    # "animator":Landroid/animation/StateListAnimator;
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "id":I
    throw v0

    .line 182
    .end local v0    # "rnf":Landroid/content/res/Resources$NotFoundException;
    .end local v6    # "ex":Ljava/io/IOException;
    .restart local v1    # "resources":Landroid/content/res/Resources;
    .restart local v2    # "cache":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<Landroid/animation/StateListAnimator;>;"
    .restart local v3    # "theme":Landroid/content/res/Resources$Theme;
    .restart local v4    # "animator":Landroid/animation/StateListAnimator;
    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "id":I
    :catch_6d
    move-exception v6

    .line 183
    .local v6, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v7, Landroid/content/res/Resources$NotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 186
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    move-object v0, v7

    .line 188
    .restart local v0    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0, v6}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 189
    nop

    .end local v1    # "resources":Landroid/content/res/Resources;
    .end local v2    # "cache":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<Landroid/animation/StateListAnimator;>;"
    .end local v3    # "theme":Landroid/content/res/Resources$Theme;
    .end local v4    # "animator":Landroid/animation/StateListAnimator;
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "id":I
    throw v0
    :try_end_8e
    .catchall {:try_start_4d .. :try_end_8e} :catchall_4a

    .line 199
    .end local v0    # "rnf":Landroid/content/res/Resources$NotFoundException;
    .end local v6    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1    # "resources":Landroid/content/res/Resources;
    .restart local v2    # "cache":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<Landroid/animation/StateListAnimator;>;"
    .restart local v3    # "theme":Landroid/content/res/Resources$Theme;
    .restart local v4    # "animator":Landroid/animation/StateListAnimator;
    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "id":I
    :goto_8e
    if-eqz v5, :cond_93

    .line 200
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    .line 202
    :cond_93
    throw v0
.end method

.method private static greylist-max-o loadValues(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;
    .registers 13
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 722
    const/4 v0, 0x0

    .line 725
    .local v0, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/PropertyValuesHolder;>;"
    :goto_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x3

    if-eq v1, v3, :cond_57

    const/4 v1, 0x1

    if-eq v2, v1, :cond_57

    .line 728
    const/4 v4, 0x2

    if-eq v2, v4, :cond_13

    .line 729
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 730
    goto :goto_1

    .line 733
    :cond_13
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 735
    .local v5, "name":Ljava/lang/String;
    const-string/jumbo v6, "propertyValuesHolder"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    .line 737
    const/4 v6, 0x0

    if-eqz p1, :cond_2a

    .line 738
    sget-object v7, Lcom/android/internal/R$styleable;->PropertyValuesHolder:[I

    invoke-virtual {p1, p3, v7, v6, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .local v7, "a":Landroid/content/res/TypedArray;
    goto :goto_30

    .line 740
    .end local v7    # "a":Landroid/content/res/TypedArray;
    :cond_2a
    sget-object v7, Lcom/android/internal/R$styleable;->PropertyValuesHolder:[I

    invoke-virtual {p0, p3, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 742
    .restart local v7    # "a":Landroid/content/res/TypedArray;
    :goto_30
    invoke-virtual {v7, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 743
    .local v3, "propertyName":Ljava/lang/String;
    const/4 v8, 0x4

    invoke-virtual {v7, v4, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 746
    .local v4, "valueType":I
    invoke-static {p0, p1, p2, v3, v4}, Landroid/animation/AnimatorInflater;->loadPvh(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 747
    .local v8, "pvh":Landroid/animation/PropertyValuesHolder;
    if-nez v8, :cond_43

    .line 748
    invoke-static {v7, v4, v6, v1, v3}, Landroid/animation/AnimatorInflater;->getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 752
    :cond_43
    if-eqz v8, :cond_50

    .line 753
    if-nez v0, :cond_4d

    .line 754
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 756
    :cond_4d
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    :cond_50
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 761
    .end local v3    # "propertyName":Ljava/lang/String;
    .end local v4    # "valueType":I
    .end local v7    # "a":Landroid/content/res/TypedArray;
    .end local v8    # "pvh":Landroid/animation/PropertyValuesHolder;
    :cond_53
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 762
    .end local v5    # "name":Ljava/lang/String;
    goto :goto_1

    .line 764
    :cond_57
    const/4 v1, 0x0

    .line 765
    .local v1, "valuesArray":[Landroid/animation/PropertyValuesHolder;
    if-eqz v0, :cond_6e

    .line 766
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 767
    .local v3, "count":I
    new-array v1, v3, [Landroid/animation/PropertyValuesHolder;

    .line 768
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_61
    if-ge v4, v3, :cond_6e

    .line 769
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/PropertyValuesHolder;

    aput-object v5, v1, v4

    .line 768
    add-int/lit8 v4, v4, 0x1

    goto :goto_61

    .line 772
    .end local v3    # "count":I
    .end local v4    # "i":I
    :cond_6e
    return-object v1
.end method

.method private static greylist-max-o parseAnimatorFromTypeArray(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;F)V
    .registers 15
    .param p0, "anim"    # Landroid/animation/ValueAnimator;
    .param p1, "arrayAnimator"    # Landroid/content/res/TypedArray;
    .param p2, "arrayObjectAnimator"    # Landroid/content/res/TypedArray;
    .param p3, "pixelSize"    # F

    .line 416
    const/4 v0, 0x1

    const/16 v1, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    int-to-long v1, v1

    .line 418
    .local v1, "duration":J
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    int-to-long v5, v3

    .line 420
    .local v5, "startDelay":J
    const/4 v3, 0x7

    const/4 v7, 0x4

    invoke-virtual {p1, v3, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 422
    .local v3, "valueType":I
    const/4 v8, 0x6

    const/4 v9, 0x5

    if-ne v3, v7, :cond_1d

    .line 423
    invoke-static {p1, v9, v8}, Landroid/animation/AnimatorInflater;->inferValueTypeFromValues(Landroid/content/res/TypedArray;II)I

    move-result v3

    .line 426
    :cond_1d
    const-string v10, ""

    invoke-static {p1, v3, v9, v8, v10}, Landroid/animation/AnimatorInflater;->getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 428
    .local v8, "pvh":Landroid/animation/PropertyValuesHolder;
    if-eqz v8, :cond_2c

    .line 429
    new-array v9, v0, [Landroid/animation/PropertyValuesHolder;

    aput-object v8, v9, v4

    invoke-virtual {p0, v9}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 432
    :cond_2c
    invoke-virtual {p0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 433
    invoke-virtual {p0, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 435
    const/4 v9, 0x3

    invoke-virtual {p1, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_41

    .line 436
    nop

    .line 437
    invoke-virtual {p1, v9, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 436
    invoke-virtual {p0, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 439
    :cond_41
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 440
    nop

    .line 441
    invoke-virtual {p1, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 440
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 445
    :cond_4f
    if-eqz p2, :cond_54

    .line 446
    invoke-static {p0, p2, v3, p3}, Landroid/animation/AnimatorInflater;->setupObjectAnimator(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;IF)V

    .line 448
    :cond_54
    return-void
.end method

.method private static greylist-max-o setupAnimatorForPath(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;)Landroid/animation/TypeEvaluator;
    .registers 10
    .param p0, "anim"    # Landroid/animation/ValueAnimator;
    .param p1, "arrayAnimator"    # Landroid/content/res/TypedArray;

    .line 459
    const/4 v0, 0x0

    .line 460
    .local v0, "evaluator":Landroid/animation/TypeEvaluator;
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 461
    .local v1, "fromString":Ljava/lang/String;
    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 462
    .local v2, "toString":Ljava/lang/String;
    const/4 v3, 0x0

    if-nez v1, :cond_10

    .line 463
    move-object v4, v3

    goto :goto_15

    :cond_10
    new-instance v4, Landroid/util/PathParser$PathData;

    invoke-direct {v4, v1}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    .line 464
    .local v4, "pathDataFrom":Landroid/util/PathParser$PathData;
    :goto_15
    if-nez v2, :cond_18

    .line 465
    goto :goto_1d

    :cond_18
    new-instance v3, Landroid/util/PathParser$PathData;

    invoke-direct {v3, v2}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    .line 467
    .local v3, "pathDataTo":Landroid/util/PathParser$PathData;
    :goto_1d
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_6d

    .line 468
    if-eqz v3, :cond_5f

    .line 469
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v5

    aput-object v3, v7, v6

    invoke-virtual {p0, v7}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 470
    invoke-static {v4, v3}, Landroid/util/PathParser;->canMorph(Landroid/util/PathParser$PathData;Landroid/util/PathParser$PathData;)Z

    move-result v5

    if-eqz v5, :cond_34

    goto :goto_66

    .line 471
    :cond_34
    new-instance v5, Landroid/view/InflateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Can\'t morph from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 475
    :cond_5f
    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v5

    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 477
    :goto_66
    new-instance v5, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    invoke-direct {v5}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>()V

    move-object v0, v5

    goto :goto_7c

    .line 478
    :cond_6d
    if-eqz v3, :cond_7c

    .line 479
    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v5

    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 480
    new-instance v5, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    invoke-direct {v5}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>()V

    move-object v0, v5

    .line 487
    :cond_7c
    :goto_7c
    return-object v0
.end method

.method private static greylist-max-o setupObjectAnimator(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;IF)V
    .registers 20
    .param p0, "anim"    # Landroid/animation/ValueAnimator;
    .param p1, "arrayObjectAnimator"    # Landroid/content/res/TypedArray;
    .param p2, "valueType"    # I
    .param p3, "pixelSize"    # F

    .line 501
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p0

    check-cast v2, Landroid/animation/ObjectAnimator;

    .line 502
    .local v2, "oa":Landroid/animation/ObjectAnimator;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 512
    .local v4, "pathData":Ljava/lang/String;
    const/4 v5, 0x0

    if-eqz v4, :cond_8e

    .line 513
    nop

    .line 514
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 515
    .local v7, "propertyXName":Ljava/lang/String;
    const/4 v8, 0x3

    .line 516
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 518
    .local v8, "propertyYName":Ljava/lang/String;
    if-eq v1, v6, :cond_20

    const/4 v9, 0x4

    if-ne v1, v9, :cond_21

    .line 521
    :cond_20
    const/4 v1, 0x0

    .line 523
    .end local p2    # "valueType":I
    .local v1, "valueType":I
    :cond_21
    if-nez v7, :cond_43

    if-eqz v8, :cond_26

    goto :goto_43

    .line 524
    :cond_26
    new-instance v3, Landroid/view/InflateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " propertyXName or propertyYName is needed for PathData"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 527
    :cond_43
    :goto_43
    invoke-static {v4}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v9

    .line 528
    .local v9, "path":Landroid/graphics/Path;
    const/high16 v10, 0x3f000000    # 0.5f

    mul-float v10, v10, p3

    .line 529
    .local v10, "error":F
    invoke-static {v9, v10}, Landroid/animation/KeyframeSet;->ofPath(Landroid/graphics/Path;F)Landroid/animation/PathKeyframes;

    move-result-object v11

    .line 532
    .local v11, "keyframeSet":Landroid/animation/PathKeyframes;
    if-nez v1, :cond_5a

    .line 533
    invoke-virtual {v11}, Landroid/animation/PathKeyframes;->createXFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;

    move-result-object v12

    .line 534
    .local v12, "xKeyframes":Landroid/animation/Keyframes;
    invoke-virtual {v11}, Landroid/animation/PathKeyframes;->createYFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;

    move-result-object v13

    .local v13, "yKeyframes":Landroid/animation/Keyframes;
    goto :goto_62

    .line 536
    .end local v12    # "xKeyframes":Landroid/animation/Keyframes;
    .end local v13    # "yKeyframes":Landroid/animation/Keyframes;
    :cond_5a
    invoke-virtual {v11}, Landroid/animation/PathKeyframes;->createXIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;

    move-result-object v12

    .line 537
    .restart local v12    # "xKeyframes":Landroid/animation/Keyframes;
    invoke-virtual {v11}, Landroid/animation/PathKeyframes;->createYIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;

    move-result-object v13

    .line 539
    .restart local v13    # "yKeyframes":Landroid/animation/Keyframes;
    :goto_62
    const/4 v14, 0x0

    .line 540
    .local v14, "x":Landroid/animation/PropertyValuesHolder;
    const/4 v15, 0x0

    .line 541
    .local v15, "y":Landroid/animation/PropertyValuesHolder;
    if-eqz v7, :cond_6a

    .line 542
    invoke-static {v7, v12}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .line 544
    :cond_6a
    if-eqz v8, :cond_70

    .line 545
    invoke-static {v8, v13}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 547
    :cond_70
    if-nez v14, :cond_7a

    .line 548
    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v15, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_8d

    .line 549
    :cond_7a
    if-nez v15, :cond_84

    .line 550
    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v14, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_8d

    .line 552
    :cond_84
    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v14, v6, v5

    aput-object v15, v6, v3

    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 555
    .end local v7    # "propertyXName":Ljava/lang/String;
    .end local v8    # "propertyYName":Ljava/lang/String;
    .end local v9    # "path":Landroid/graphics/Path;
    .end local v10    # "error":F
    .end local v11    # "keyframeSet":Landroid/animation/PathKeyframes;
    .end local v12    # "xKeyframes":Landroid/animation/Keyframes;
    .end local v13    # "yKeyframes":Landroid/animation/Keyframes;
    .end local v14    # "x":Landroid/animation/PropertyValuesHolder;
    .end local v15    # "y":Landroid/animation/PropertyValuesHolder;
    :goto_8d
    goto :goto_96

    .line 556
    .end local v1    # "valueType":I
    .restart local p2    # "valueType":I
    :cond_8e
    nop

    .line 557
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 558
    .local v3, "propertyName":Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 560
    .end local v3    # "propertyName":Ljava/lang/String;
    .end local p2    # "valueType":I
    .restart local v1    # "valueType":I
    :goto_96
    return-void
.end method

.method private static greylist-max-o setupValues(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;ZZIZI)V
    .registers 15
    .param p0, "anim"    # Landroid/animation/ValueAnimator;
    .param p1, "arrayAnimator"    # Landroid/content/res/TypedArray;
    .param p2, "getFloats"    # Z
    .param p3, "hasFrom"    # Z
    .param p4, "fromType"    # I
    .param p5, "hasTo"    # Z
    .param p6, "toType"    # I

    .line 576
    const/4 v0, 0x5

    .line 577
    .local v0, "valueFromIndex":I
    const/4 v1, 0x6

    .line 578
    .local v1, "valueToIndex":I
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz p2, :cond_49

    .line 581
    if-eqz p3, :cond_35

    .line 582
    if-ne p4, v4, :cond_12

    .line 583
    invoke-virtual {p1, v0, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    .local v7, "valueFrom":F
    goto :goto_16

    .line 585
    .end local v7    # "valueFrom":F
    :cond_12
    invoke-virtual {p1, v0, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 587
    .restart local v7    # "valueFrom":F
    :goto_16
    if-eqz p5, :cond_2d

    .line 588
    if-ne p6, v4, :cond_1f

    .line 589
    invoke-virtual {p1, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .local v4, "valueTo":F
    goto :goto_23

    .line 591
    .end local v4    # "valueTo":F
    :cond_1f
    invoke-virtual {p1, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 593
    .restart local v4    # "valueTo":F
    :goto_23
    new-array v2, v2, [F

    aput v7, v2, v6

    aput v4, v2, v3

    invoke-virtual {p0, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_47

    .line 595
    .end local v4    # "valueTo":F
    :cond_2d
    new-array v2, v3, [F

    aput v7, v2, v6

    invoke-virtual {p0, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_47

    .line 598
    .end local v7    # "valueFrom":F
    :cond_35
    if-ne p6, v4, :cond_3c

    .line 599
    invoke-virtual {p1, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .local v2, "valueTo":F
    goto :goto_40

    .line 601
    .end local v2    # "valueTo":F
    :cond_3c
    invoke-virtual {p1, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 603
    .restart local v2    # "valueTo":F
    :goto_40
    new-array v3, v3, [F

    aput v2, v3, v6

    invoke-virtual {p0, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 605
    .end local v2    # "valueTo":F
    :goto_47
    goto/16 :goto_ad

    .line 608
    :cond_49
    if-eqz p3, :cond_8d

    .line 609
    if-ne p4, v4, :cond_53

    .line 610
    invoke-virtual {p1, v0, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    float-to-int v7, v7

    .local v7, "valueFrom":I
    goto :goto_62

    .line 611
    .end local v7    # "valueFrom":I
    :cond_53
    invoke-static {p4}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v7

    if-eqz v7, :cond_5e

    .line 612
    invoke-virtual {p1, v0, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    .restart local v7    # "valueFrom":I
    goto :goto_62

    .line 614
    .end local v7    # "valueFrom":I
    :cond_5e
    invoke-virtual {p1, v0, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 616
    .restart local v7    # "valueFrom":I
    :goto_62
    if-eqz p5, :cond_85

    .line 617
    if-ne p6, v4, :cond_6c

    .line 618
    invoke-virtual {p1, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    .local v4, "valueTo":I
    goto :goto_7b

    .line 619
    .end local v4    # "valueTo":I
    :cond_6c
    invoke-static {p6}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v4

    if-eqz v4, :cond_77

    .line 620
    invoke-virtual {p1, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .restart local v4    # "valueTo":I
    goto :goto_7b

    .line 622
    .end local v4    # "valueTo":I
    :cond_77
    invoke-virtual {p1, v1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 624
    .restart local v4    # "valueTo":I
    :goto_7b
    new-array v2, v2, [I

    aput v7, v2, v6

    aput v4, v2, v3

    invoke-virtual {p0, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_ad

    .line 626
    .end local v4    # "valueTo":I
    :cond_85
    new-array v2, v3, [I

    aput v7, v2, v6

    invoke-virtual {p0, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_ad

    .line 629
    .end local v7    # "valueFrom":I
    :cond_8d
    if-eqz p5, :cond_ad

    .line 630
    if-ne p6, v4, :cond_97

    .line 631
    invoke-virtual {p1, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    .local v2, "valueTo":I
    goto :goto_a6

    .line 632
    .end local v2    # "valueTo":I
    :cond_97
    invoke-static {p6}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 633
    invoke-virtual {p1, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .restart local v2    # "valueTo":I
    goto :goto_a6

    .line 635
    .end local v2    # "valueTo":I
    :cond_a2
    invoke-virtual {p1, v1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 637
    .restart local v2    # "valueTo":I
    :goto_a6
    new-array v3, v3, [I

    aput v2, v3, v6

    invoke-virtual {p0, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 641
    .end local v2    # "valueTo":I
    :cond_ad
    :goto_ad
    return-void
.end method
