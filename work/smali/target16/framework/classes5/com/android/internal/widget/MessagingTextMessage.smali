.class public Lcom/android/internal/widget/MessagingTextMessage;
.super Lcom/android/internal/widget/ImageFloatingTextView;
.source "MessagingTextMessage.java"

# interfaces
.implements Lcom/android/internal/widget/MessagingMessage;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MessagingTextMessage"

.field private static final blacklist sInstancePool:Lcom/android/internal/widget/MessagingPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/MessagingPool<",
            "Lcom/android/internal/widget/MessagingTextMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mPrecomputedText:Landroid/text/PrecomputedText;

.field private final blacklist mState:Lcom/android/internal/widget/MessagingMessageState;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 42
    new-instance v0, Lcom/android/internal/widget/MessagingPool;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/android/internal/widget/MessagingPool;-><init>(I)V

    sput-object v0, Lcom/android/internal/widget/MessagingTextMessage;->sInstancePool:Lcom/android/internal/widget/MessagingPool;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ImageFloatingTextView;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance p1, Lcom/android/internal/widget/MessagingMessageState;

    invoke-direct {p1, p0}, Lcom/android/internal/widget/MessagingMessageState;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/internal/widget/MessagingTextMessage;->mState:Lcom/android/internal/widget/MessagingMessageState;

    .line 46
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/widget/MessagingTextMessage;->mPrecomputedText:Landroid/text/PrecomputedText;

    .line 50
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ImageFloatingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance p1, Lcom/android/internal/widget/MessagingMessageState;

    invoke-direct {p1, p0}, Lcom/android/internal/widget/MessagingMessageState;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/internal/widget/MessagingTextMessage;->mState:Lcom/android/internal/widget/MessagingMessageState;

    .line 46
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/widget/MessagingTextMessage;->mPrecomputedText:Landroid/text/PrecomputedText;

    .line 54
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/ImageFloatingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance p1, Lcom/android/internal/widget/MessagingMessageState;

    invoke-direct {p1, p0}, Lcom/android/internal/widget/MessagingMessageState;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/internal/widget/MessagingTextMessage;->mState:Lcom/android/internal/widget/MessagingMessageState;

    .line 46
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/widget/MessagingTextMessage;->mPrecomputedText:Landroid/text/PrecomputedText;

    .line 59
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/ImageFloatingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    new-instance p1, Lcom/android/internal/widget/MessagingMessageState;

    invoke-direct {p1, p0}, Lcom/android/internal/widget/MessagingMessageState;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/internal/widget/MessagingTextMessage;->mState:Lcom/android/internal/widget/MessagingMessageState;

    .line 46
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/widget/MessagingTextMessage;->mPrecomputedText:Landroid/text/PrecomputedText;

    .line 64
    return-void
.end method

.method static blacklist createMessage(Lcom/android/internal/widget/IMessagingLayout;Landroid/app/Notification$MessagingStyle$Message;ZZ)Lcom/android/internal/widget/MessagingMessage;
    .registers 6

    .line 87
    invoke-interface {p0}, Lcom/android/internal/widget/IMessagingLayout;->getMessagingLinearLayout()Lcom/android/internal/widget/MessagingLinearLayout;

    move-result-object p3

    .line 88
    sget-object v0, Lcom/android/internal/widget/MessagingTextMessage;->sInstancePool:Lcom/android/internal/widget/MessagingPool;

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingPool;->acquire()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingTextMessage;

    .line 89
    if-nez v0, :cond_27

    .line 90
    nop

    .line 91
    invoke-interface {p0}, Lcom/android/internal/widget/IMessagingLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 90
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 91
    const v0, 0x10900f2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/internal/widget/MessagingTextMessage;

    .line 95
    sget-object p0, Lcom/android/internal/widget/MessagingLayout;->MESSAGING_PROPERTY_ANIMATOR:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/MessagingTextMessage;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 97
    :cond_27
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/MessagingTextMessage;->setMessage(Landroid/app/Notification$MessagingStyle$Message;Z)Z

    .line 98
    return-object v0
.end method

.method public static blacklist dropCache()V
    .registers 1

    .line 107
    sget-object v0, Lcom/android/internal/widget/MessagingTextMessage;->sInstancePool:Lcom/android/internal/widget/MessagingPool;

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingPool;->clear()V

    .line 108
    return-void
.end method


# virtual methods
.method public blacklist finalizeInflate()V
    .registers 4

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/widget/MessagingTextMessage;->mPrecomputedText:Landroid/text/PrecomputedText;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/widget/MessagingTextMessage;->mPrecomputedText:Landroid/text/PrecomputedText;

    goto :goto_13

    .line 175
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getState()Lcom/android/internal/widget/MessagingMessageState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingMessageState;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 174
    :goto_13
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingTextMessage;->setText(Ljava/lang/CharSequence;)V
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_16} :catch_17

    .line 184
    goto :goto_42

    .line 176
    :catch_17
    move-exception v0

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PrecomputedText setText failed for TextView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MessagingTextMessage"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MessagingTextMessage;->mPrecomputedText:Landroid/text/PrecomputedText;

    .line 183
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getState()Lcom/android/internal/widget/MessagingMessageState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingMessageState;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingTextMessage;->setText(Ljava/lang/CharSequence;)V

    .line 185
    :goto_42
    return-void
.end method

.method public blacklist getConsumedLines()I
    .registers 2

    .line 136
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getLineCount()I

    move-result v0

    return v0
.end method

.method public blacklist getLayoutHeight()I
    .registers 2

    .line 140
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 141
    if-nez v0, :cond_8

    .line 142
    const/4 v0, 0x0

    return v0

    .line 144
    :cond_8
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    return v0
.end method

.method public blacklist getMeasuredType()I
    .registers 5

    .line 112
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getMeasuredHeight()I

    move-result v0

    .line 113
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getLayoutHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_18

    move v0, v3

    goto :goto_19

    :cond_18
    move v0, v2

    .line 114
    :goto_19
    const/4 v1, 0x2

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getLineCount()I

    move-result v0

    if-gt v0, v3, :cond_23

    .line 115
    return v1

    .line 117
    :cond_23
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 118
    if-nez v0, :cond_2a

    .line 119
    return v1

    .line 121
    :cond_2a
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    if-lez v0, :cond_36

    .line 122
    return v3

    .line 124
    :cond_36
    return v2
.end method

.method public blacklist getState()Lcom/android/internal/widget/MessagingMessageState;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/android/internal/widget/MessagingTextMessage;->mState:Lcom/android/internal/widget/MessagingMessageState;

    return-object v0
.end method

.method public blacklist recycle()V
    .registers 2

    .line 102
    invoke-super {p0}, Lcom/android/internal/widget/MessagingMessage;->recycle()V

    .line 103
    sget-object v0, Lcom/android/internal/widget/MessagingTextMessage;->sInstancePool:Lcom/android/internal/widget/MessagingPool;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/MessagingPool;->release(Landroid/view/View;)Z

    .line 104
    return-void
.end method

.method public blacklist setColor(I)V
    .registers 2

    .line 149
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingTextMessage;->setTextColor(I)V

    .line 150
    return-void
.end method

.method public blacklist setMaxDisplayedLines(I)V
    .registers 2

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingTextMessage;->setMaxLines(I)V

    .line 132
    return-void
.end method

.method public blacklist setMessage(Landroid/app/Notification$MessagingStyle$Message;Z)Z
    .registers 3

    .line 74
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/MessagingMessage;->setMessage(Landroid/app/Notification$MessagingStyle$Message;Z)Z

    .line 75
    if-eqz p2, :cond_14

    .line 76
    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getTextMetricsParams()Landroid/text/PrecomputedText$Params;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/PrecomputedText;->create(Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;)Landroid/text/PrecomputedText;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/widget/MessagingTextMessage;->mPrecomputedText:Landroid/text/PrecomputedText;

    goto :goto_1e

    .line 78
    :cond_14
    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingTextMessage;->setText(Ljava/lang/CharSequence;)V

    .line 79
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/widget/MessagingTextMessage;->mPrecomputedText:Landroid/text/PrecomputedText;

    .line 82
    :goto_1e
    const/4 p1, 0x1

    return p1
.end method

.method public blacklist updateViewForSummarization(Z)V
    .registers 7

    .line 154
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_31

    .line 157
    iget-object p1, p0, Lcom/android/internal/widget/MessagingTextMessage;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x1050309

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 159
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getPaddingEnd()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getPaddingBottom()I

    move-result v4

    .line 157
    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/android/internal/widget/MessagingTextMessage;->setPaddingRelative(IIII)V

    .line 160
    const-string/jumbo p1, "variable-body-medium"

    const/4 v2, 0x2

    invoke-static {p1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingTextMessage;->setTypeface(Landroid/graphics/Typeface;)V

    .line 161
    const/high16 p1, 0x41c80000    # 25.0f

    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/android/internal/widget/MessagingTextMessage;->setShadowLayer(FFFI)V

    goto :goto_56

    .line 163
    :cond_31
    iget-object p1, p0, Lcom/android/internal/widget/MessagingTextMessage;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x1050308

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 165
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getPaddingEnd()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getPaddingBottom()I

    move-result v4

    .line 163
    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/android/internal/widget/MessagingTextMessage;->setPaddingRelative(IIII)V

    .line 166
    const p1, 0x1030399

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingTextMessage;->setTextAppearance(I)V

    .line 167
    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/android/internal/widget/MessagingTextMessage;->setShadowLayer(FFFI)V

    .line 169
    :goto_56
    return-void
.end method
