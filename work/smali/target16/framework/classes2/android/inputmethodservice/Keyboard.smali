.class public Landroid/inputmethodservice/Keyboard;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/Keyboard$Key;,
        Landroid/inputmethodservice/Keyboard$Row;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist EDGE_BOTTOM:I = 0x8

.field public static final whitelist EDGE_LEFT:I = 0x1

.field public static final whitelist EDGE_RIGHT:I = 0x2

.field public static final whitelist EDGE_TOP:I = 0x4

.field private static final greylist-max-o GRID_HEIGHT:I = 0x5

.field private static final greylist-max-o GRID_SIZE:I = 0x32

.field private static final greylist-max-o GRID_WIDTH:I = 0xa

.field public static final whitelist KEYCODE_ALT:I = -0x6

.field public static final whitelist KEYCODE_CANCEL:I = -0x3

.field public static final whitelist KEYCODE_DELETE:I = -0x5

.field public static final whitelist KEYCODE_DONE:I = -0x4

.field public static final whitelist KEYCODE_MODE_CHANGE:I = -0x2

.field public static final whitelist KEYCODE_SHIFT:I = -0x1

.field private static greylist-max-o SEARCH_DISTANCE:F = 0.0f

.field static final greylist-max-o TAG:Ljava/lang/String; = "Keyboard"

.field private static final greylist-max-o TAG_KEY:Ljava/lang/String; = "Key"

.field private static final greylist-max-o TAG_KEYBOARD:Ljava/lang/String; = "Keyboard"

.field private static final greylist-max-o TAG_ROW:Ljava/lang/String; = "Row"


# instance fields
.field private greylist-max-o mCellHeight:I

.field private greylist-max-o mCellWidth:I

.field private greylist-max-o mDefaultHeight:I

.field private greylist-max-o mDefaultHorizontalGap:I

.field private greylist-max-o mDefaultVerticalGap:I

.field private greylist-max-o mDefaultWidth:I

.field private greylist-max-o mDisplayHeight:I

.field private greylist-max-o mDisplayWidth:I

.field private greylist-max-o mGridNeighbors:[[I

.field private greylist-max-o mKeyHeight:I

.field private greylist-max-o mKeyWidth:I

.field private greylist-max-o mKeyboardMode:I

.field private greylist-max-o mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mLabel:Ljava/lang/CharSequence;

.field private greylist mModifierKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mProximityThreshold:I

.field private greylist-max-o mShiftKeyIndices:[I

.field private greylist-max-o mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

.field private greylist-max-o mShifted:Z

.field private greylist mTotalHeight:I

.field private greylist mTotalWidth:I

.field private greylist-max-o rows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/inputmethodservice/Keyboard$Row;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDefaultHeight(Landroid/inputmethodservice/Keyboard;)I
    .registers 1

    iget p0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDefaultHorizontalGap(Landroid/inputmethodservice/Keyboard;)I
    .registers 1

    iget p0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDefaultVerticalGap(Landroid/inputmethodservice/Keyboard;)I
    .registers 1

    iget p0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDefaultWidth(Landroid/inputmethodservice/Keyboard;)I
    .registers 1

    iget p0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayHeight(Landroid/inputmethodservice/Keyboard;)I
    .registers 1

    iget p0, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayWidth(Landroid/inputmethodservice/Keyboard;)I
    .registers 1

    iget p0, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 156
    const v0, 0x3fe66666    # 1.8f

    sput v0, Landroid/inputmethodservice/Keyboard;->SEARCH_DISTANCE:F

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;I)V
    .registers 4

    .line 533
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;II)V

    .line 534
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;II)V
    .registers 8

    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/inputmethodservice/Keyboard$Key;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 111
    const/4 v0, -0x1

    filled-new-array {v0, v0}, [I

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndices:[I

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    .line 568
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 569
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    .line 570
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    .line 573
    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    .line 574
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    .line 575
    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    .line 576
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    iput v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    .line 577
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    .line 578
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    .line 579
    iput p3, p0, Landroid/inputmethodservice/Keyboard;->mKeyboardMode:I

    .line 580
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/Keyboard;->loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 581
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;IIII)V
    .registers 10

    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/inputmethodservice/Keyboard$Key;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 111
    const/4 v0, -0x1

    filled-new-array {v0, v0}, [I

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndices:[I

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    .line 547
    iput p4, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    .line 548
    iput p5, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    .line 550
    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    .line 551
    iget p4, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    div-int/lit8 p4, p4, 0xa

    iput p4, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    .line 552
    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    .line 553
    iget p4, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    iput p4, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    .line 554
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    .line 555
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    .line 556
    iput p3, p0, Landroid/inputmethodservice/Keyboard;->mKeyboardMode:I

    .line 557
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/Keyboard;->loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 558
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V
    .registers 13

    .line 599
    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    .line 600
    nop

    .line 601
    nop

    .line 602
    nop

    .line 603
    const/4 p1, 0x0

    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    .line 605
    new-instance p2, Landroid/inputmethodservice/Keyboard$Row;

    invoke-direct {p2, p0}, Landroid/inputmethodservice/Keyboard$Row;-><init>(Landroid/inputmethodservice/Keyboard;)V

    .line 606
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    iput v0, p2, Landroid/inputmethodservice/Keyboard$Row;->defaultHeight:I

    .line 607
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    iput v0, p2, Landroid/inputmethodservice/Keyboard$Row;->defaultWidth:I

    .line 608
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    iput v0, p2, Landroid/inputmethodservice/Keyboard$Row;->defaultHorizontalGap:I

    .line 609
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    iput v0, p2, Landroid/inputmethodservice/Keyboard$Row;->verticalGap:I

    .line 610
    const/16 v0, 0xc

    iput v0, p2, Landroid/inputmethodservice/Keyboard$Row;->rowEdgeFlags:I

    .line 611
    const/4 v0, -0x1

    if-ne p4, v0, :cond_28

    const p4, 0x7fffffff

    .line 612
    :cond_28
    move v0, p1

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_2c
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v0, v4, :cond_79

    .line 613
    invoke-interface {p3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 614
    if-ge v2, p4, :cond_40

    iget v5, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    add-int/2addr v5, v3

    add-int/2addr v5, p5

    iget v6, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    if-le v5, v6, :cond_49

    .line 616
    :cond_40
    nop

    .line 617
    iget v2, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    iget v3, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 618
    move v2, p1

    move v3, v2

    .line 620
    :cond_49
    new-instance v5, Landroid/inputmethodservice/Keyboard$Key;

    invoke-direct {v5, p2}, Landroid/inputmethodservice/Keyboard$Key;-><init>(Landroid/inputmethodservice/Keyboard$Row;)V

    .line 621
    iput v3, v5, Landroid/inputmethodservice/Keyboard$Key;->x:I

    .line 622
    iput v1, v5, Landroid/inputmethodservice/Keyboard$Key;->y:I

    .line 623
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 624
    filled-new-array {v4}, [I

    move-result-object v4

    iput-object v4, v5, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    .line 625
    add-int/lit8 v2, v2, 0x1

    .line 626
    iget v4, v5, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v6, v5, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    add-int/2addr v4, v6

    add-int/2addr v3, v4

    .line 627
    iget-object v4, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    iget-object v4, p2, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    iget v4, p0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    if-le v3, v4, :cond_76

    .line 630
    iput v3, p0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    .line 612
    :cond_76
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 633
    :cond_79
    iget p1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    add-int/2addr v1, p1

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mTotalHeight:I

    .line 634
    iget-object p1, p0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    return-void
.end method

.method private greylist-max-o computeNearestNeighbors()V
    .registers 12

    .line 751
    invoke-virtual {p0}, Landroid/inputmethodservice/Keyboard;->getMinWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    .line 752
    invoke-virtual {p0}, Landroid/inputmethodservice/Keyboard;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    .line 753
    const/16 v0, 0x32

    new-array v0, v0, [[I

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mGridNeighbors:[[I

    .line 754
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 755
    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    mul-int/lit8 v1, v1, 0xa

    .line 756
    iget v2, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    mul-int/lit8 v2, v2, 0x5

    .line 757
    const/4 v3, 0x0

    move v4, v3

    :goto_30
    if-ge v4, v1, :cond_a0

    .line 758
    move v5, v3

    :goto_33
    if-ge v5, v2, :cond_9c

    .line 759
    nop

    .line 760
    move v6, v3

    move v7, v6

    :goto_38
    iget-object v8, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_84

    .line 761
    iget-object v8, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/inputmethodservice/Keyboard$Key;

    .line 762
    invoke-virtual {v8, v4, v5}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v9

    iget v10, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    if-lt v9, v10, :cond_7c

    iget v9, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    add-int/2addr v9, v4

    add-int/lit8 v9, v9, -0x1

    .line 763
    invoke-virtual {v8, v9, v5}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v9

    iget v10, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    if-lt v9, v10, :cond_7c

    iget v9, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    add-int/2addr v9, v4

    add-int/lit8 v9, v9, -0x1

    iget v10, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    add-int/2addr v10, v5

    add-int/lit8 v10, v10, -0x1

    .line 764
    invoke-virtual {v8, v9, v10}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v9

    iget v10, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    if-lt v9, v10, :cond_7c

    iget v9, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    add-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x1

    .line 766
    invoke-virtual {v8, v4, v9}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v8

    iget v9, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    if-ge v8, v9, :cond_81

    .line 767
    :cond_7c
    add-int/lit8 v8, v7, 0x1

    aput v6, v0, v7

    move v7, v8

    .line 760
    :cond_81
    add-int/lit8 v6, v6, 0x1

    goto :goto_38

    .line 770
    :cond_84
    new-array v6, v7, [I

    .line 771
    invoke-static {v0, v3, v6, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 772
    iget-object v7, p0, Landroid/inputmethodservice/Keyboard;->mGridNeighbors:[[I

    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    div-int v8, v5, v8

    mul-int/lit8 v8, v8, 0xa

    iget v9, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    div-int v9, v4, v9

    add-int/2addr v8, v9

    aput-object v6, v7, v8

    .line 758
    iget v6, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    add-int/2addr v5, v6

    goto :goto_33

    .line 757
    :cond_9c
    iget v5, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    add-int/2addr v4, v5

    goto :goto_30

    .line 775
    :cond_a0
    return-void
.end method

.method static greylist-max-o getDimensionOrFraction(Landroid/content/res/TypedArray;III)I
    .registers 7

    .line 909
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 910
    if-nez v0, :cond_7

    return p3

    .line 911
    :cond_7
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_11

    .line 912
    invoke-virtual {p0, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p0

    return p0

    .line 913
    :cond_11
    iget v0, v0, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_20

    .line 915
    int-to-float p3, p3

    invoke-virtual {p0, p1, p2, p2, p3}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    .line 917
    :cond_20
    return p3
.end method

.method private greylist-max-o loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .registers 15

    .line 805
    const-string v1, "Keyboard"

    .line 806
    nop

    .line 807
    nop

    .line 808
    nop

    .line 809
    nop

    .line 810
    nop

    .line 811
    nop

    .line 812
    nop

    .line 813
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 814
    const/4 p1, 0x0

    const/4 v0, 0x0

    move v2, p1

    move v5, v2

    move v6, v5

    move v8, v6

    move-object v4, v0

    .line 818
    :goto_14
    :try_start_14
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    const/4 v9, 0x1

    if-eq v7, v9, :cond_ef

    .line 819
    const/4 v10, 0x2

    if-ne v7, v10, :cond_c4

    .line 820
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 821
    const-string v10, "Row"

    invoke-virtual {v10, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_28} :catch_f1

    if-eqz v10, :cond_5a

    .line 822
    nop

    .line 823
    nop

    .line 824
    :try_start_2c
    invoke-virtual {p0, v3, p2}, Landroid/inputmethodservice/Keyboard;->createRowFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Row;

    move-result-object v4

    .line 825
    iget-object v5, p0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    iget v5, v4, Landroid/inputmethodservice/Keyboard$Row;->mode:I

    if-eqz v5, :cond_41

    iget v5, v4, Landroid/inputmethodservice/Keyboard$Row;->mode:I

    iget v7, p0, Landroid/inputmethodservice/Keyboard;->mKeyboardMode:I

    if-eq v5, v7, :cond_41

    move v5, v9

    goto :goto_42

    :cond_41
    move v5, p1

    .line 827
    :goto_42
    if-eqz v5, :cond_4e

    .line 828
    invoke-direct {p0, p2}, Landroid/inputmethodservice/Keyboard;->skipToEndOfRow(Landroid/content/res/XmlResourceParser;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_47} :catch_55

    .line 829
    move v5, p1

    move v8, v5

    move-object v10, p2

    move-object v11, v3

    move-object v3, p0

    goto/16 :goto_c0

    .line 827
    :cond_4e
    move v5, p1

    move-object v10, p2

    move-object v11, v3

    move v8, v9

    move-object v3, p0

    goto/16 :goto_c0

    .line 869
    :catch_55
    move-exception v0

    move-object p1, v0

    move-object v3, p0

    goto/16 :goto_f4

    .line 831
    :cond_5a
    :try_start_5a
    const-string v10, "Key"

    invoke-virtual {v10, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_60} :catch_f1

    if-eqz v10, :cond_b4

    .line 832
    nop

    .line 833
    move-object v2, p0

    move-object v7, p2

    :try_start_65
    invoke-virtual/range {v2 .. v7}, Landroid/inputmethodservice/Keyboard;->createKeyFromXml(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Key;

    move-result-object p2
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_69} :catch_b1

    move-object v11, v3

    move-object v10, v7

    move-object v3, v2

    .line 834
    :try_start_6c
    iget-object v0, v3, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 835
    iget-object v0, p2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, p1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_9d

    .line 837
    move v0, p1

    :goto_79
    iget-object v2, v3, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v2, v2

    if-ge v0, v2, :cond_97

    .line 838
    iget-object v2, v3, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v2, v2, v0

    if-nez v2, :cond_94

    .line 839
    iget-object v2, v3, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aput-object p2, v2, v0

    .line 840
    iget-object v2, v3, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndices:[I

    iget-object v7, v3, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v9

    aput v7, v2, v0

    .line 841
    goto :goto_97

    .line 837
    :cond_94
    add-int/lit8 v0, v0, 0x1

    goto :goto_79

    .line 844
    :cond_97
    :goto_97
    iget-object v0, v3, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a9

    .line 845
    :cond_9d
    iget-object v0, p2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, p1

    const/4 v2, -0x6

    if-ne v0, v2, :cond_a9

    .line 846
    iget-object v0, v3, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 848
    :cond_a9
    :goto_a9
    iget-object v0, v4, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, p2

    move v2, v9

    goto :goto_c0

    .line 869
    :catch_b1
    move-exception v0

    move-object v3, v2

    goto :goto_f3

    .line 849
    :cond_b4
    move-object v10, p2

    move-object v11, v3

    move-object v3, p0

    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c0

    .line 850
    invoke-direct {p0, v11, v10}, Landroid/inputmethodservice/Keyboard;->parseKeyboardAttributes(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    .line 852
    :cond_c0
    :goto_c0
    move-object p2, v10

    move-object v3, v11

    goto/16 :goto_14

    :cond_c4
    move-object v10, p2

    move-object v11, v3

    move-object v3, p0

    const/4 p2, 0x3

    if-ne v7, p2, :cond_eb

    .line 853
    if-eqz v2, :cond_dd

    .line 854
    nop

    .line 855
    iget p2, v0, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr p2, v2

    add-int/2addr v5, p2

    .line 856
    iget p2, v3, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    if-le v5, p2, :cond_d9

    .line 857
    iput v5, v3, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    .line 818
    :cond_d9
    move v2, p1

    goto :goto_eb

    .line 869
    :catch_db
    move-exception v0

    goto :goto_f3

    .line 859
    :cond_dd
    if-eqz v8, :cond_eb

    .line 860
    nop

    .line 861
    iget p2, v4, Landroid/inputmethodservice/Keyboard$Row;->verticalGap:I

    add-int/2addr v6, p2

    .line 862
    iget p2, v4, Landroid/inputmethodservice/Keyboard$Row;->defaultHeight:I
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_e5} :catch_db

    add-int/2addr v6, p2

    .line 863
    move v8, p1

    move-object p2, v10

    move-object v3, v11

    goto/16 :goto_14

    .line 818
    :cond_eb
    :goto_eb
    move-object p2, v10

    move-object v3, v11

    goto/16 :goto_14

    .line 872
    :cond_ef
    move-object v3, p0

    goto :goto_10d

    .line 869
    :catch_f1
    move-exception v0

    move-object v3, p0

    :goto_f3
    move-object p1, v0

    .line 870
    :goto_f4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Parse error:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 873
    :goto_10d
    iget p1, v3, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    sub-int/2addr v6, p1

    iput v6, v3, Landroid/inputmethodservice/Keyboard;->mTotalHeight:I

    .line 874
    return-void
.end method

.method private greylist-max-o parseKeyboardAttributes(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .registers 6

    .line 888
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    sget-object v0, Lcom/android/internal/R$styleable;->Keyboard:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 891
    iget p2, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    div-int/lit8 v0, v0, 0xa

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v0}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    .line 894
    iget p2, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    const/16 v0, 0x32

    const/4 v2, 0x1

    invoke-static {p1, v2, p2, v0}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    .line 897
    const/4 p2, 0x2

    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    invoke-static {p1, p2, v0, v1}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    .line 900
    const/4 p2, 0x3

    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    invoke-static {p1, p2, v0, v1}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    .line 903
    iget p2, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    int-to-float p2, p2

    sget v0, Landroid/inputmethodservice/Keyboard;->SEARCH_DISTANCE:F

    mul-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    .line 904
    iget p2, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    mul-int/2addr p2, v0

    iput p2, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    .line 905
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 906
    return-void
.end method

.method private greylist-max-o skipToEndOfRow(Landroid/content/res/XmlResourceParser;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 879
    nop

    :cond_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_18

    .line 880
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 881
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Row"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 882
    nop

    .line 885
    :cond_18
    return-void
.end method


# virtual methods
.method protected whitelist createKeyFromXml(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Key;
    .registers 7

    .line 801
    new-instance v0, Landroid/inputmethodservice/Keyboard$Key;

    move-object p0, v0

    invoke-direct/range {p0 .. p5}, Landroid/inputmethodservice/Keyboard$Key;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    move-object p1, p0

    return-object p1
.end method

.method protected whitelist createRowFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Row;
    .registers 4

    .line 796
    new-instance v0, Landroid/inputmethodservice/Keyboard$Row;

    invoke-direct {v0, p1, p0, p2}, Landroid/inputmethodservice/Keyboard$Row;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard;Landroid/content/res/XmlResourceParser;)V

    return-object v0
.end method

.method public whitelist getHeight()I
    .registers 2

    .line 714
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mTotalHeight:I

    return v0
.end method

.method protected whitelist getHorizontalGap()I
    .registers 2

    .line 678
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    return v0
.end method

.method protected whitelist getKeyHeight()I
    .registers 2

    .line 694
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    return v0
.end method

.method protected whitelist getKeyWidth()I
    .registers 2

    .line 702
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    return v0
.end method

.method public whitelist getKeys()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;"
        }
    .end annotation

    .line 670
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getMinWidth()I
    .registers 2

    .line 718
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    return v0
.end method

.method public whitelist getModifierKeys()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;"
        }
    .end annotation

    .line 674
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getNearestKeys(II)[I
    .registers 4

    .line 785
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mGridNeighbors:[[I

    if-nez v0, :cond_7

    invoke-direct {p0}, Landroid/inputmethodservice/Keyboard;->computeNearestNeighbors()V

    .line 786
    :cond_7
    if-ltz p1, :cond_29

    invoke-virtual {p0}, Landroid/inputmethodservice/Keyboard;->getMinWidth()I

    move-result v0

    if-ge p1, v0, :cond_29

    if-ltz p2, :cond_29

    invoke-virtual {p0}, Landroid/inputmethodservice/Keyboard;->getHeight()I

    move-result v0

    if-ge p2, v0, :cond_29

    .line 787
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    div-int/2addr p2, v0

    mul-int/lit8 p2, p2, 0xa

    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    div-int/2addr p1, v0

    add-int/2addr p2, p1

    .line 788
    const/16 p1, 0x32

    if-ge p2, p1, :cond_29

    .line 789
    iget-object p1, p0, Landroid/inputmethodservice/Keyboard;->mGridNeighbors:[[I

    aget-object p1, p1, p2

    return-object p1

    .line 792
    :cond_29
    const/4 p1, 0x0

    new-array p1, p1, [I

    return-object p1
.end method

.method public whitelist getShiftKeyIndex()I
    .registers 3

    .line 746
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndices:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public greylist-max-o getShiftKeyIndices()[I
    .registers 2

    .line 742
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndices:[I

    return-object v0
.end method

.method protected whitelist getVerticalGap()I
    .registers 2

    .line 686
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    return v0
.end method

.method public whitelist isShifted()Z
    .registers 2

    .line 735
    iget-boolean v0, p0, Landroid/inputmethodservice/Keyboard;->mShifted:Z

    return v0
.end method

.method final greylist-max-p resize(II)V
    .registers 12

    .line 639
    iget-object p2, p0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 640
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, p2, :cond_5d

    .line 641
    iget-object v2, p0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/inputmethodservice/Keyboard$Row;

    .line 642
    iget-object v3, v2, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 643
    nop

    .line 644
    nop

    .line 645
    move v4, v0

    move v5, v4

    move v6, v5

    :goto_1d
    if-ge v4, v3, :cond_32

    .line 646
    iget-object v7, v2, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/inputmethodservice/Keyboard$Key;

    .line 647
    if-lez v4, :cond_2c

    .line 648
    iget v8, v7, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    add-int/2addr v5, v8

    .line 650
    :cond_2c
    iget v7, v7, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v6, v7

    .line 645
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 652
    :cond_32
    add-int v4, v5, v6

    if-le v4, p1, :cond_5a

    .line 653
    nop

    .line 654
    sub-int v4, p1, v5

    int-to-float v4, v4

    int-to-float v5, v6

    div-float/2addr v4, v5

    .line 655
    move v5, v0

    move v6, v5

    :goto_3e
    if-ge v5, v3, :cond_5a

    .line 656
    iget-object v7, v2, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/inputmethodservice/Keyboard$Key;

    .line 657
    iget v8, v7, Landroid/inputmethodservice/Keyboard$Key;->width:I

    int-to-float v8, v8

    mul-float/2addr v8, v4

    float-to-int v8, v8

    iput v8, v7, Landroid/inputmethodservice/Keyboard$Key;->width:I

    .line 658
    iput v6, v7, Landroid/inputmethodservice/Keyboard$Key;->x:I

    .line 659
    iget v8, v7, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v7, v7, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    add-int/2addr v8, v7

    add-int/2addr v6, v8

    .line 655
    add-int/lit8 v5, v5, 0x1

    goto :goto_3e

    .line 640
    :cond_5a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 663
    :cond_5d
    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    .line 667
    return-void
.end method

.method protected whitelist setHorizontalGap(I)V
    .registers 2

    .line 682
    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    .line 683
    return-void
.end method

.method protected whitelist setKeyHeight(I)V
    .registers 2

    .line 698
    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    .line 699
    return-void
.end method

.method protected whitelist setKeyWidth(I)V
    .registers 2

    .line 706
    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    .line 707
    return-void
.end method

.method public whitelist setShifted(Z)Z
    .registers 7

    .line 722
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_10

    aget-object v4, v0, v3

    .line 723
    if-eqz v4, :cond_d

    .line 724
    iput-boolean p1, v4, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    .line 722
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 727
    :cond_10
    iget-boolean v0, p0, Landroid/inputmethodservice/Keyboard;->mShifted:Z

    if-eq v0, p1, :cond_18

    .line 728
    iput-boolean p1, p0, Landroid/inputmethodservice/Keyboard;->mShifted:Z

    .line 729
    const/4 p1, 0x1

    return p1

    .line 731
    :cond_18
    return v2
.end method

.method protected whitelist setVerticalGap(I)V
    .registers 2

    .line 690
    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    .line 691
    return-void
.end method
