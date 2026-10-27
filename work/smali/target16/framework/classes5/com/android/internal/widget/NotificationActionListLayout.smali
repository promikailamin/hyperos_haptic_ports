.class public Lcom/android/internal/widget/NotificationActionListLayout;
.super Landroid/widget/LinearLayout;
.source "NotificationActionListLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;
    }
.end annotation


# static fields
.field public static final blacklist MEASURE_ORDER_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "NotificationActionListLayout"


# instance fields
.field private blacklist mCollapsibleIndentDimen:I

.field private blacklist mDefaultPaddingBottom:I

.field private blacklist mDefaultPaddingTop:I

.field private blacklist mEmphasizedHeight:I

.field private blacklist mEmphasizedMode:Z

.field private blacklist mEmphasizedPaddingBottom:I

.field private blacklist mEmphasizedPaddingTop:I

.field private blacklist mEvenlyDividedMode:Z

.field private blacklist mExtraStartPadding:I

.field private final blacklist mGravity:I

.field private blacklist mMeasureOrderOther:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMeasureOrderTextViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mNumNotGoneChildren:I

.field blacklist mNumPriorityChildren:I

.field private blacklist mRegularHeight:I

.field private blacklist mTotalWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smisPriority(Landroid/view/View;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->isPriority(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 475
    new-instance v0, Lcom/android/internal/widget/NotificationActionListLayout$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/widget/NotificationActionListLayout$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/internal/widget/NotificationActionListLayout;->MEASURE_ORDER_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/NotificationActionListLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/NotificationActionListLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 72
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7

    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mTotalWidth:I

    .line 51
    iput v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mExtraStartPadding:I

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    .line 77
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 78
    const v1, 0x1050286

    goto :goto_23

    .line 79
    :cond_20
    const v1, 0x10502b4

    :goto_23
    iput v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mCollapsibleIndentDimen:I

    .line 81
    const v1, 0x10100af

    filled-new-array {v1}, [I

    move-result-object v1

    .line 82
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 83
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mGravity:I

    .line 84
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    return-void
.end method

.method private blacklist clearMeasureOrder()V
    .registers 2

    .line 290
    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 291
    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 292
    return-void
.end method

.method private blacklist countAndRebuildMeasureOrder()V
    .registers 10

    .line 93
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildCount()I

    move-result v0

    .line 94
    nop

    .line 95
    nop

    .line 96
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mNumNotGoneChildren:I

    .line 97
    iput v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mNumPriorityChildren:I

    .line 99
    move v2, v1

    move v3, v2

    move v4, v3

    :goto_e
    const/4 v5, 0x1

    if-ge v2, v0, :cond_39

    .line 100
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 101
    instance-of v7, v6, Landroid/widget/TextView;

    if-eqz v7, :cond_1c

    .line 102
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 104
    :cond_1c
    add-int/lit8 v4, v4, 0x1

    .line 106
    :goto_1e
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_36

    .line 107
    iget v7, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mNumNotGoneChildren:I

    add-int/2addr v7, v5

    iput v7, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mNumNotGoneChildren:I

    .line 108
    invoke-static {v6}, Lcom/android/internal/widget/NotificationActionListLayout;->isPriority(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 109
    iget v6, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mNumPriorityChildren:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mNumPriorityChildren:I

    .line 99
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 116
    :cond_39
    nop

    .line 117
    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v3, v0, :cond_4d

    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    .line 118
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v4, v0, :cond_4b

    goto :goto_4d

    :cond_4b
    move v0, v1

    goto :goto_4e

    .line 119
    :cond_4d
    :goto_4d
    move v0, v5

    .line 121
    :goto_4e
    if-nez v0, :cond_6c

    .line 122
    iget-object v2, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 123
    nop

    :goto_57
    if-ge v1, v2, :cond_6c

    .line 124
    iget-object v6, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;

    invoke-virtual {v6}, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;->needsRebuild()Z

    move-result v6

    if-eqz v6, :cond_69

    .line 125
    nop

    .line 126
    goto :goto_6d

    .line 123
    :cond_69
    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    .line 131
    :cond_6c
    move v5, v0

    :goto_6d
    if-eqz v5, :cond_72

    .line 132
    invoke-direct {p0, v3, v4}, Lcom/android/internal/widget/NotificationActionListLayout;->rebuildMeasureOrder(II)V

    .line 134
    :cond_72
    return-void
.end method

.method private static blacklist isPriority(Landroid/view/View;)Z
    .registers 2

    .line 88
    instance-of v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;

    if-eqz v0, :cond_e

    check-cast p0, Lcom/android/internal/widget/EmphasizedNotificationButton;

    .line 89
    invoke-virtual {p0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->isPriority()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    .line 88
    :goto_f
    return p0
.end method

.method static synthetic blacklist lambda$static$0(Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;)I
    .registers 4

    .line 476
    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;->mIsPriority:Z

    iget-boolean v1, p1, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;->mIsPriority:Z

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    neg-int v0, v0

    .line 477
    if-eqz v0, :cond_c

    .line 478
    goto :goto_14

    .line 479
    :cond_c
    iget p0, p0, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;->mTextLength:I

    iget p1, p1, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;->mTextLength:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 477
    :goto_14
    return v0
.end method

.method private blacklist measureAndGetUsedWidth(IIIZ)I
    .registers 22

    .line 174
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildCount()I

    move-result v6

    .line 175
    nop

    .line 176
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/4 v7, 0x0

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    move v8, v1

    goto :goto_12

    :cond_11
    move v8, v7

    .line 177
    :goto_12
    iget-object v1, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 178
    nop

    .line 180
    nop

    .line 181
    nop

    .line 182
    nop

    .line 183
    move v1, v7

    move v10, v1

    move v11, v10

    move v12, v11

    move v13, v12

    :goto_21
    if-ge v10, v6, :cond_aa

    .line 188
    if-ge v10, v9, :cond_2f

    .line 189
    iget-object v2, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 190
    move v14, v7

    goto :goto_3f

    .line 192
    :cond_2f
    iget-object v2, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    sub-int v3, v10, v9

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;

    .line 193
    iget-object v3, v2, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;->mTextView:Landroid/widget/TextView;

    .line 194
    iget-boolean v2, v2, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;->mIsPriority:Z

    move v14, v2

    move-object v2, v3

    .line 196
    :goto_3f
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_48

    .line 197
    goto :goto_a6

    .line 199
    :cond_48
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 201
    nop

    .line 202
    if-eqz v8, :cond_84

    .line 207
    sub-int v3, p3, v11

    .line 208
    iget v4, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mNumNotGoneChildren:I

    sub-int/2addr v4, v12

    .line 209
    div-int v5, v3, v4

    .line 210
    if-eqz v14, :cond_72

    if-eqz p4, :cond_72

    .line 212
    if-nez v1, :cond_6a

    .line 213
    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationActionListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10502b1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 216
    :cond_6a
    iget v3, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v1

    iget v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v5, v3, v4

    goto :goto_7f

    .line 217
    :cond_72
    if-eqz v14, :cond_7f

    .line 220
    iget v5, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mNumPriorityChildren:I

    sub-int/2addr v5, v13

    .line 222
    sub-int/2addr v4, v5

    .line 223
    mul-int v4, v4, p3

    div-int/lit8 v4, v4, 0x4

    .line 225
    sub-int/2addr v3, v4

    .line 226
    div-int v5, v3, v5

    .line 229
    :cond_7f
    :goto_7f
    sub-int v3, p3, v5

    move/from16 v16, v1

    goto :goto_87

    .line 202
    :cond_84
    move v3, v11

    move/from16 v16, v1

    .line 232
    :goto_87
    const/4 v5, 0x0

    move/from16 v4, p2

    move-object v1, v2

    move/from16 v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/NotificationActionListLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 235
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    iget v2, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    add-int/2addr v11, v1

    .line 236
    add-int/lit8 v12, v12, 0x1

    .line 237
    if-eqz v14, :cond_a4

    .line 238
    add-int/lit8 v13, v13, 0x1

    move/from16 v1, v16

    goto :goto_a6

    .line 237
    :cond_a4
    move/from16 v1, v16

    .line 183
    :goto_a6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_21

    .line 242
    :cond_aa
    iget v1, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mCollapsibleIndentDimen:I

    if-nez v1, :cond_b0

    move v1, v7

    goto :goto_ba

    .line 243
    :cond_b0
    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationActionListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mCollapsibleIndentDimen:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 244
    :goto_ba
    sub-int v2, p3, v11

    if-le v2, v1, :cond_c1

    .line 245
    iput v1, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mExtraStartPadding:I

    goto :goto_c3

    .line 247
    :cond_c1
    iput v7, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mExtraStartPadding:I

    .line 249
    :goto_c3
    return v11
.end method

.method private blacklist measureAndReturnEvenlyDividedWidth(II)I
    .registers 12

    .line 137
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildCount()I

    move-result v0

    .line 138
    nop

    .line 139
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_8
    const/16 v4, 0x8

    if-ge v2, v0, :cond_25

    .line 140
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 141
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v4, :cond_22

    .line 142
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 143
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v5, v4

    add-int/2addr v3, v5

    .line 139
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 147
    :cond_25
    sub-int v2, p2, v3

    .line 148
    iget v5, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mNumNotGoneChildren:I

    div-int v5, v2, v5

    .line 149
    nop

    .line 150
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 153
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "measuring evenly divided width: numChildren = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", innerWidth = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "px, childMarginSum = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, "px, innerWidthMinusChildMargins = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "px, childWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "px, childWidthMeasureSpec = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 159
    invoke-static {v6}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 153
    const-string v3, "NotificationActionListLayout"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    nop

    :goto_85
    if-ge v1, v0, :cond_97

    .line 163
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 164
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_94

    .line 165
    invoke-virtual {v2, v6, p1}, Landroid/view/View;->measure(II)V

    .line 162
    :cond_94
    add-int/lit8 v1, v1, 0x1

    goto :goto_85

    .line 169
    :cond_97
    return p2
.end method

.method private blacklist rebuildMeasureOrder(II)V
    .registers 6

    .line 274
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->clearMeasureOrder()V

    .line 275
    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 276
    iget-object p1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 277
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildCount()I

    move-result p1

    .line 278
    const/4 p2, 0x0

    :goto_12
    if-ge p2, p1, :cond_3c

    .line 279
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 280
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_34

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_34

    .line 281
    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;

    invoke-direct {v2, v1}, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 283
    :cond_34
    iget-object v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    :goto_39
    add-int/lit8 p2, p2, 0x1

    goto :goto_12

    .line 286
    :cond_3c
    iget-object p1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    sget-object p2, Lcom/android/internal/widget/NotificationActionListLayout;->MEASURE_ORDER_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 287
    return-void
.end method

.method private blacklist updateHeights()V
    .registers 4

    .line 379
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 380
    return-void

    .line 382
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 384
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10502c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedPaddingTop:I

    .line 387
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10502c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedPaddingBottom:I

    .line 389
    iget v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedPaddingTop:I

    iget v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedPaddingBottom:I

    add-int/2addr v0, v1

    .line 390
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10502ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedHeight:I

    .line 392
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mRegularHeight:I

    .line 394
    return-void
.end method


# virtual methods
.method public blacklist getExtraMeasureHeight()I
    .registers 3

    .line 469
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedMode:Z

    if-eqz v0, :cond_10

    .line 470
    iget v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedHeight:I

    iget v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mRegularHeight:I

    sub-int/2addr v0, v1

    return v0

    .line 472
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist onFinishInflate()V
    .registers 2

    .line 370
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 371
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-nez v0, :cond_18

    .line 372
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mDefaultPaddingBottom:I

    .line 373
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mDefaultPaddingTop:I

    .line 374
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->updateHeights()V

    .line 376
    :cond_18
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 14

    .line 313
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->isLayoutRtl()Z

    move-result p1

    .line 314
    iget v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingTop:I

    .line 315
    iget v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mGravity:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_f

    move v1, v2

    goto :goto_10

    :cond_f
    move v1, v3

    .line 319
    :goto_10
    if-eqz v1, :cond_1f

    .line 320
    iget v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingLeft:I

    add-int/2addr v1, p2

    sub-int/2addr p4, p2

    div-int/lit8 p4, p4, 0x2

    add-int/2addr v1, p4

    iget p2, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mTotalWidth:I

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr v1, p2

    goto :goto_38

    .line 322
    :cond_1f
    iget v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingLeft:I

    .line 323
    const v4, 0x800003

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getLayoutDirection()I

    move-result v5

    invoke-static {v4, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    .line 324
    const/4 v5, 0x5

    if-ne v4, v5, :cond_35

    .line 325
    sub-int/2addr p4, p2

    iget p2, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mTotalWidth:I

    sub-int/2addr p4, p2

    add-int/2addr v1, p4

    goto :goto_38

    .line 328
    :cond_35
    iget p2, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mExtraStartPadding:I

    add-int/2addr v1, p2

    .line 334
    :goto_38
    sub-int/2addr p5, p3

    .line 337
    sub-int/2addr p5, v0

    iget p2, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingBottom:I

    sub-int/2addr p5, p2

    .line 339
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildCount()I

    move-result p2

    .line 341
    nop

    .line 342
    nop

    .line 344
    if-eqz p1, :cond_49

    .line 345
    add-int/lit8 p1, p2, -0x1

    .line 346
    const/4 v2, -0x1

    goto :goto_4a

    .line 344
    :cond_49
    move p1, v3

    .line 349
    :goto_4a
    nop

    :goto_4b
    if-ge v3, p2, :cond_85

    .line 350
    mul-int p3, v2, v3

    add-int/2addr p3, p1

    .line 351
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 352
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p4

    const/16 v4, 0x8

    if-eq p4, v4, :cond_82

    .line 353
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    .line 354
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 356
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 358
    sub-int v6, p5, v4

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v0

    iget v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v6, v7

    iget v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v6, v7

    .line 361
    iget v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v7

    .line 362
    add-int v7, v1, p4

    add-int/2addr v4, v6

    invoke-virtual {p3, v1, v6, v7, v4}, Landroid/view/View;->layout(IIII)V

    .line 363
    iget p3, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p4, p3

    add-int/2addr v1, p4

    .line 349
    :cond_82
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    .line 366
    :cond_85
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 6

    .line 254
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->countAndRebuildMeasureOrder()V

    .line 255
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingRight:I

    sub-int/2addr v0, v1

    .line 257
    iget-boolean v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEvenlyDividedMode:Z

    if-eqz v1, :cond_16

    .line 258
    invoke-direct {p0, p2, v0}, Lcom/android/internal/widget/NotificationActionListLayout;->measureAndReturnEvenlyDividedWidth(II)I

    move-result v0

    goto :goto_28

    .line 260
    :cond_16
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/widget/NotificationActionListLayout;->measureAndGetUsedWidth(IIIZ)I

    move-result v1

    .line 262
    iget v2, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mNumPriorityChildren:I

    if-eqz v2, :cond_27

    if-lt v1, v0, :cond_27

    .line 263
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/widget/NotificationActionListLayout;->measureAndGetUsedWidth(IIIZ)I

    move-result v0

    goto :goto_28

    .line 268
    :cond_27
    move v0, v1

    :goto_28
    iget v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingRight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingLeft:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mExtraStartPadding:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mTotalWidth:I

    .line 269
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/internal/widget/NotificationActionListLayout;->resolveSize(II)I

    move-result p1

    .line 270
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Lcom/android/internal/widget/NotificationActionListLayout;->resolveSize(II)I

    move-result p2

    .line 269
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/NotificationActionListLayout;->setMeasuredDimension(II)V

    .line 271
    return-void
.end method

.method public whitelist onViewAdded(Landroid/view/View;)V
    .registers 3

    .line 296
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewAdded(Landroid/view/View;)V

    .line 297
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->clearMeasureOrder()V

    .line 300
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_18

    .line 301
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/RippleDrawable;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/RippleDrawable;->setForceSoftware(Z)V

    .line 303
    :cond_18
    return-void
.end method

.method public whitelist onViewRemoved(Landroid/view/View;)V
    .registers 2

    .line 307
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewRemoved(Landroid/view/View;)V

    .line 308
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->clearMeasureOrder()V

    .line 309
    return-void
.end method

.method public blacklist setCollapsibleIndentDimen(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 403
    iget v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mCollapsibleIndentDimen:I

    if-eq v0, p1, :cond_9

    .line 404
    iput p1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mCollapsibleIndentDimen:I

    .line 405
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->requestLayout()V

    .line 407
    :cond_9
    return-void
.end method

.method public blacklist setEmphasizedMode(Z)V
    .registers 5
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 442
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 443
    return-void

    .line 445
    :cond_7
    iput-boolean p1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedMode:Z

    .line 447
    if-eqz p1, :cond_21

    .line 448
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getPaddingStart()I

    move-result p1

    iget v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedPaddingTop:I

    .line 450
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getPaddingEnd()I

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedPaddingBottom:I

    .line 448
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/internal/widget/NotificationActionListLayout;->setPaddingRelative(IIII)V

    .line 452
    iget p1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedHeight:I

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/NotificationActionListLayout;->setMinimumHeight(I)V

    .line 453
    const/4 p1, -0x2

    goto :goto_32

    .line 455
    :cond_21
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getPaddingStart()I

    move-result p1

    iget v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mDefaultPaddingTop:I

    .line 457
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getPaddingEnd()I

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mDefaultPaddingBottom:I

    .line 455
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/internal/widget/NotificationActionListLayout;->setPaddingRelative(IIII)V

    .line 459
    iget p1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mRegularHeight:I

    .line 461
    :goto_32
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 462
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 463
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationActionListLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 464
    return-void
.end method

.method public blacklist setEvenlyDividedMode(Z)V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 423
    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEvenlyDividedMode:Z

    if-ne p1, v0, :cond_5

    .line 424
    return-void

    .line 428
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "evenlyDividedMode changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; requesting layout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationActionListLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iput-boolean p1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEvenlyDividedMode:Z

    .line 432
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->requestLayout()V

    .line 433
    return-void
.end method
