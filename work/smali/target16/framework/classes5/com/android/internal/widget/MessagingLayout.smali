.class public Lcom/android/internal/widget/MessagingLayout;
.super Landroid/widget/FrameLayout;
.source "MessagingLayout.java"

# interfaces
.implements Lcom/android/internal/widget/ImageMessageConsumer;
.implements Lcom/android/internal/widget/IMessagingLayout;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field public static final blacklist FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

.field public static final blacklist FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field public static final blacklist LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field private static final blacklist MAX_SUMMARIZATION_LINES:I = 0x3

.field public static final blacklist MESSAGING_PROPERTY_ANIMATOR:Landroid/view/View$OnLayoutChangeListener;

.field private static final blacklist TAG:Ljava/lang/String; = "MessagingLayout"


# instance fields
.field private final blacklist mAddedGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAvatarReplacement:Landroid/graphics/drawable/Icon;

.field private blacklist mConversationTitle:Ljava/lang/CharSequence;

.field private final blacklist mGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHistoricMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

.field private blacklist mImageResolver:Lcom/android/internal/widget/ImageResolver;

.field private blacklist mIsCollapsed:Z

.field private blacklist mIsOneToOne:Z

.field private blacklist mLayoutColor:I

.field private blacklist mMessageContentView:Landroid/widget/LinearLayout;

.field private blacklist mMessageTextColor:I

.field private blacklist mMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMessagingClipRect:Landroid/graphics/Rect;

.field private blacklist mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

.field private blacklist mNameReplacement:Ljava/lang/CharSequence;

.field private final blacklist mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

.field private blacklist mPrecomputedTextEnabled:Z

.field private blacklist mRightIconView:Landroid/widget/ImageView;

.field private blacklist mSenderTextColor:I

.field private blacklist mShowHistoricMessages:Z

.field private blacklist mSpacingForExpander:I

.field private blacklist mSpacingForImage:I

.field private blacklist mSummarizationStartMargin:I

.field private blacklist mSummarizedContent:Ljava/lang/CharSequence;

.field private final blacklist mToRecycle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTopLine:Landroid/view/NotificationTopLineView;

.field private blacklist mUser:Landroid/app/Person;


# direct methods
.method public static synthetic blacklist $r8$lambda$248fl5uqIjPq-VF87Aq8LbUGTVg(Lcom/android/internal/widget/MessagingLayout;Lcom/android/internal/widget/MessagingGroup;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/MessagingLayout;->lambda$createGroupViews$11(Lcom/android/internal/widget/MessagingGroup;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$2IQiR5jlqUQ2crHAMR5gMW2Elto(Lcom/android/internal/widget/MessagingLayout;Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/MessagingLayout;->lambda$setDataAsync$4(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$War0eaoA5eHkVDhSMCji9RudPPw(Lcom/android/internal/widget/MessagingLayout;Lcom/android/internal/widget/MessagingData;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/MessagingLayout;->lambda$setDataAsync$5(Lcom/android/internal/widget/MessagingData;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$isLf-hDmp9snEpE2jDJ6mNvzQuM(Lcom/android/internal/widget/MessagingLayout;Lcom/android/internal/widget/MessagingGroup;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/MessagingLayout;->lambda$removeGroups$6(Lcom/android/internal/widget/MessagingGroup;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAddedGroups(Lcom/android/internal/widget/MessagingLayout;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/MessagingLayout;->mAddedGroups:Ljava/util/ArrayList;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 67
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/widget/MessagingLayout;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 68
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v4, v1, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/widget/MessagingLayout;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    .line 69
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/widget/MessagingLayout;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 72
    new-instance v0, Lcom/android/internal/widget/MessagingPropertyAnimator;

    invoke-direct {v0}, Lcom/android/internal/widget/MessagingPropertyAnimator;-><init>()V

    sput-object v0, Lcom/android/internal/widget/MessagingLayout;->MESSAGING_PROPERTY_ANIMATOR:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2

    .line 104
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 74
    new-instance p1, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {p1}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 75
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mMessages:Ljava/util/List;

    .line 76
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mHistoricMessages:Ljava/util/List;

    .line 79
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    .line 89
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mAddedGroups:Ljava/util/ArrayList;

    .line 95
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mToRecycle:Ljava/util/ArrayList;

    .line 96
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingLayout;->mPrecomputedTextEnabled:Z

    .line 105
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 108
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    new-instance p1, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {p1}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 75
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mMessages:Ljava/util/List;

    .line 76
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mHistoricMessages:Ljava/util/List;

    .line 79
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    .line 89
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mAddedGroups:Ljava/util/ArrayList;

    .line 95
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mToRecycle:Ljava/util/ArrayList;

    .line 96
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingLayout;->mPrecomputedTextEnabled:Z

    .line 109
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 113
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    new-instance p1, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {p1}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 75
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mMessages:Ljava/util/List;

    .line 76
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mHistoricMessages:Ljava/util/List;

    .line 79
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    .line 89
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mAddedGroups:Ljava/util/ArrayList;

    .line 95
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mToRecycle:Ljava/util/ArrayList;

    .line 96
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingLayout;->mPrecomputedTextEnabled:Z

    .line 114
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 118
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 74
    new-instance p1, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {p1}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 75
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mMessages:Ljava/util/List;

    .line 76
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mHistoricMessages:Ljava/util/List;

    .line 79
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    .line 89
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mAddedGroups:Ljava/util/ArrayList;

    .line 95
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mToRecycle:Ljava/util/ArrayList;

    .line 96
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingLayout;->mPrecomputedTextEnabled:Z

    .line 119
    return-void
.end method

.method private blacklist addRemoteInputHistoryToMessages(Ljava/util/List;[Landroid/app/RemoteInputHistoryItem;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;[",
            "Landroid/app/RemoteInputHistoryItem;",
            ")V"
        }
    .end annotation

    .line 336
    if-eqz p2, :cond_32

    array-length v0, p2

    if-nez v0, :cond_6

    goto :goto_32

    .line 339
    :cond_6
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_31

    .line 340
    aget-object v1, p2, v0

    .line 341
    new-instance v2, Landroid/app/Notification$MessagingStyle$Message;

    .line 342
    invoke-virtual {v1}, Landroid/app/RemoteInputHistoryItem;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-wide/16 v4, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroid/app/Person;Z)V

    .line 343
    invoke-virtual {v1}, Landroid/app/RemoteInputHistoryItem;->getUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 344
    invoke-virtual {v1}, Landroid/app/RemoteInputHistoryItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/RemoteInputHistoryItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/app/Notification$MessagingStyle$Message;->setData(Ljava/lang/String;Landroid/net/Uri;)Landroid/app/Notification$MessagingStyle$Message;

    .line 346
    :cond_2b
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 348
    :cond_31
    return-void

    .line 337
    :cond_32
    :goto_32
    return-void
.end method

.method private blacklist adjustSpacingForImage()V
    .registers 4

    .line 447
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 448
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    iget v1, p0, Lcom/android/internal/widget/MessagingLayout;->mSpacingForExpander:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/MessagingLayout;->updateMarginEnd(Landroid/view/ViewGroup;I)V

    .line 450
    invoke-direct {p0}, Lcom/android/internal/widget/MessagingLayout;->getSpacingForImage()I

    move-result v0

    .line 451
    iget v1, p0, Lcom/android/internal/widget/MessagingLayout;->mSpacingForExpander:I

    add-int/2addr v1, v0

    .line 452
    iget-object v2, p0, Lcom/android/internal/widget/MessagingLayout;->mTopLine:Landroid/view/NotificationTopLineView;

    invoke-direct {p0, v2, v1}, Lcom/android/internal/widget/MessagingLayout;->updateMarginEnd(Landroid/view/ViewGroup;I)V

    .line 455
    if-lez v0, :cond_20

    .line 456
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/MessagingLayout;->updateMarginEnd(Landroid/view/ViewGroup;I)V

    .line 459
    :cond_20
    return-void
.end method

.method private blacklist bind(Lcom/android/internal/widget/MessagingData;)V
    .registers 6

    .line 377
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getUser()Landroid/app/Person;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingLayout;->setUser(Landroid/app/Person;)V

    .line 379
    invoke-direct {p0}, Lcom/android/internal/widget/MessagingLayout;->updateViewsForSummarization()V

    .line 382
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 383
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getGroups()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getSenders()Ljava/util/List;

    move-result-object v2

    .line 384
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getShowSpinner()Z

    move-result v3

    .line 383
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/MessagingLayout;->createGroupViews(Ljava/util/List;Ljava/util/List;Z)V

    .line 387
    invoke-direct {p0, v0}, Lcom/android/internal/widget/MessagingLayout;->removeGroups(Ljava/util/ArrayList;)V

    .line 390
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MessagingMessage;

    .line 391
    iget-object v2, p0, Lcom/android/internal/widget/MessagingLayout;->mToRecycle:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/android/internal/widget/MessagingMessage;->removeMessage(Ljava/util/ArrayList;)V

    .line 392
    goto :goto_29

    .line 393
    :cond_3b
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MessagingMessage;

    .line 394
    iget-object v2, p0, Lcom/android/internal/widget/MessagingLayout;->mToRecycle:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/android/internal/widget/MessagingMessage;->removeMessage(Ljava/util/ArrayList;)V

    .line 395
    goto :goto_41

    .line 397
    :cond_53
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getNewMessagingMessages()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mMessages:Ljava/util/List;

    .line 398
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getHistoricMessagingMessages()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mHistoricMessages:Ljava/util/List;

    .line 400
    invoke-direct {p0}, Lcom/android/internal/widget/MessagingLayout;->updateHistoricMessageVisibility()V

    .line 401
    invoke-direct {p0}, Lcom/android/internal/widget/MessagingLayout;->updateTitleAndNamesDisplay()V

    .line 403
    iget-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    iget-boolean v1, p0, Lcom/android/internal/widget/MessagingLayout;->mIsOneToOne:Z

    iget-object v2, p0, Lcom/android/internal/widget/MessagingLayout;->mConversationTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/widget/PeopleHelper;->maybeHideFirstSenderName(Ljava/util/List;ZLjava/lang/CharSequence;)V

    .line 404
    invoke-direct {p0}, Lcom/android/internal/widget/MessagingLayout;->updateImageMessages()V

    .line 407
    iget-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mToRecycle:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_79
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    .line 408
    invoke-interface {v0}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->recycle()V

    .line 409
    goto :goto_79

    .line 410
    :cond_89
    iget-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mToRecycle:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 411
    return-void
.end method

.method private blacklist createGroupViews(Ljava/util/List;Ljava/util/List;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;>;",
            "Ljava/util/List<",
            "Landroid/app/Person;",
            ">;Z)V"
        }
    .end annotation

    .line 642
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 643
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_ef

    .line 644
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 645
    nop

    .line 647
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/4 v5, 0x0

    move-object v6, v5

    :goto_1c
    if-ltz v3, :cond_2e

    .line 648
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/MessagingMessage;

    .line 649
    invoke-interface {v6}, Lcom/android/internal/widget/MessagingMessage;->getGroup()Lcom/android/internal/widget/MessagingGroup;

    move-result-object v6

    .line 650
    if-eqz v6, :cond_2b

    .line 651
    goto :goto_2e

    .line 647
    :cond_2b
    add-int/lit8 v3, v3, -0x1

    goto :goto_1c

    .line 654
    :cond_2e
    :goto_2e
    if-nez v6, :cond_3c

    .line 655
    iget-object v3, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-static {v3}, Lcom/android/internal/widget/MessagingGroup;->createGroup(Lcom/android/internal/widget/MessagingLinearLayout;)Lcom/android/internal/widget/MessagingGroup;

    move-result-object v6

    .line 656
    iget-object v3, p0, Lcom/android/internal/widget/MessagingLayout;->mAddedGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_44

    .line 657
    :cond_3c
    invoke-virtual {v6}, Lcom/android/internal/widget/MessagingGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    iget-object v7, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    if-ne v3, v7, :cond_c6

    .line 662
    :goto_44
    iget-boolean v3, p0, Lcom/android/internal/widget/MessagingLayout;->mIsCollapsed:Z

    if-eqz v3, :cond_4a

    .line 663
    const/4 v3, 0x2

    goto :goto_4b

    .line 664
    :cond_4a
    move v3, v0

    .line 662
    :goto_4b
    invoke-virtual {v6, v3}, Lcom/android/internal/widget/MessagingGroup;->setImageDisplayLocation(I)V

    .line 665
    invoke-virtual {v6, v0}, Lcom/android/internal/widget/MessagingGroup;->setIsInConversation(Z)V

    .line 666
    iget v3, p0, Lcom/android/internal/widget/MessagingLayout;->mLayoutColor:I

    invoke-virtual {v6, v3}, Lcom/android/internal/widget/MessagingGroup;->setLayoutColor(I)V

    .line 667
    iget v3, p0, Lcom/android/internal/widget/MessagingLayout;->mSenderTextColor:I

    iget v7, p0, Lcom/android/internal/widget/MessagingLayout;->mMessageTextColor:I

    invoke-virtual {v6, v3, v7}, Lcom/android/internal/widget/MessagingGroup;->setTextColors(II)V

    .line 668
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Person;

    .line 669
    nop

    .line 670
    iget-object v7, p0, Lcom/android/internal/widget/MessagingLayout;->mUser:Landroid/app/Person;

    if-eq v3, v7, :cond_6e

    iget-object v7, p0, Lcom/android/internal/widget/MessagingLayout;->mNameReplacement:Ljava/lang/CharSequence;

    if-eqz v7, :cond_6e

    .line 671
    iget-object v5, p0, Lcom/android/internal/widget/MessagingLayout;->mNameReplacement:Ljava/lang/CharSequence;

    .line 673
    :cond_6e
    iget-boolean v7, p0, Lcom/android/internal/widget/MessagingLayout;->mIsCollapsed:Z

    if-eqz v7, :cond_84

    .line 674
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->nmCollapsedLines()Z

    move-result v7

    if-nez v7, :cond_82

    iget-object v7, p0, Lcom/android/internal/widget/MessagingLayout;->mSummarizedContent:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_82

    move v7, v4

    goto :goto_85

    :cond_82
    move v7, v0

    goto :goto_85

    .line 675
    :cond_84
    move v7, v0

    .line 673
    :goto_85
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/MessagingGroup;->setSingleLine(Z)V

    .line 676
    iget-boolean v7, p0, Lcom/android/internal/widget/MessagingLayout;->mIsCollapsed:Z

    xor-int/2addr v7, v4

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/MessagingGroup;->setShowingAvatar(Z)V

    .line 677
    iget-boolean v7, p0, Lcom/android/internal/widget/MessagingLayout;->mIsCollapsed:Z

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/MessagingGroup;->setIsCollapsed(Z)V

    .line 678
    invoke-virtual {v6, v3, v5}, Lcom/android/internal/widget/MessagingGroup;->setSender(Landroid/app/Person;Ljava/lang/CharSequence;)V

    .line 679
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    if-ne v1, v3, :cond_a0

    if-eqz p3, :cond_a0

    goto :goto_a1

    :cond_a0
    move v4, v0

    :goto_a1
    invoke-virtual {v6, v4}, Lcom/android/internal/widget/MessagingGroup;->setSending(Z)V

    .line 680
    iget-object v3, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    iget-object v3, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/MessagingLinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    if-eq v3, v1, :cond_bb

    .line 683
    iget-object v3, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/MessagingLinearLayout;->removeView(Landroid/view/View;)V

    .line 684
    iget-object v3, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v3, v6, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->addView(Landroid/view/View;I)V

    .line 686
    :cond_bb
    invoke-direct {p0}, Lcom/android/internal/widget/MessagingLayout;->isShowingSummarization()Z

    move-result v3

    invoke-virtual {v6, v2, v3}, Lcom/android/internal/widget/MessagingGroup;->setMessages(Ljava/util/List;Z)V

    .line 643
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_7

    .line 658
    :cond_c6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "group parent was "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 659
    invoke-virtual {v6}, Lcom/android/internal/widget/MessagingGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " but expected "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 690
    :cond_ef
    iget-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mAddedGroups:Ljava/util/ArrayList;

    new-instance p2, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/widget/MessagingLayout;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 691
    return-void
.end method

.method private blacklist createMessages(Ljava/util/List;ZZZ)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;ZZZ)",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;"
        }
    .end annotation

    .line 733
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 734
    const/4 v1, 0x0

    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 735
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$MessagingStyle$Message;

    .line 736
    invoke-direct {p0, v2}, Lcom/android/internal/widget/MessagingLayout;->findAndRemoveMatchingMessage(Landroid/app/Notification$MessagingStyle$Message;)Lcom/android/internal/widget/MessagingMessage;

    move-result-object v3

    .line 737
    if-nez v3, :cond_1e

    .line 738
    iget-object v3, p0, Lcom/android/internal/widget/MessagingLayout;->mImageResolver:Lcom/android/internal/widget/ImageResolver;

    invoke-static {p0, v2, v3, p3, p4}, Lcom/android/internal/widget/MessagingMessage;->createMessage(Lcom/android/internal/widget/IMessagingLayout;Landroid/app/Notification$MessagingStyle$Message;Lcom/android/internal/widget/ImageResolver;ZZ)Lcom/android/internal/widget/MessagingMessage;

    move-result-object v3

    .line 741
    :cond_1e
    invoke-interface {v3, p2}, Lcom/android/internal/widget/MessagingMessage;->setIsHistoric(Z)V

    .line 742
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 734
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 744
    :cond_27
    return-object v0
.end method

.method private blacklist finalizeInflate(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;)V"
        }
    .end annotation

    .line 323
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingMessage;

    .line 324
    invoke-interface {v0}, Lcom/android/internal/widget/MessagingMessage;->finalizeInflate()V

    .line 325
    goto :goto_4

    .line 326
    :cond_14
    return-void
.end method

.method private blacklist findAndRemoveMatchingMessage(Landroid/app/Notification$MessagingStyle$Message;)Lcom/android/internal/widget/MessagingMessage;
    .registers 6

    .line 748
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/internal/widget/MessagingLayout;->mMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 749
    iget-object v2, p0, Lcom/android/internal/widget/MessagingLayout;->mMessages:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/MessagingMessage;

    .line 750
    invoke-interface {v2, p1}, Lcom/android/internal/widget/MessagingMessage;->sameAs(Landroid/app/Notification$MessagingStyle$Message;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 751
    iget-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mMessages:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 752
    return-object v2

    .line 748
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 755
    :cond_21
    nop

    :goto_22
    iget-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_41

    .line 756
    iget-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MessagingMessage;

    .line 757
    invoke-interface {v1, p1}, Lcom/android/internal/widget/MessagingMessage;->sameAs(Landroid/app/Notification$MessagingStyle$Message;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 758
    iget-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 759
    return-object v1

    .line 755
    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 762
    :cond_41
    const/4 p1, 0x0

    return-object p1
.end method

.method private blacklist findGroups(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;>;",
            "Ljava/util/List<",
            "Landroid/app/Person;",
            ">;)V"
        }
    .end annotation

    .line 696
    nop

    .line 697
    nop

    .line 698
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 699
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v1

    move-object v5, v4

    move v3, v2

    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v6, v0

    if-ge v3, v6, :cond_71

    .line 701
    if-ge v3, v0, :cond_1b

    .line 702
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/MessagingMessage;

    goto :goto_23

    .line 704
    :cond_1b
    sub-int v6, v3, v0

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/MessagingMessage;

    .line 706
    :goto_23
    const/4 v7, 0x1

    if-nez v4, :cond_28

    move v8, v7

    goto :goto_29

    :cond_28
    move v8, v2

    .line 708
    :goto_29
    invoke-interface {v6}, Lcom/android/internal/widget/MessagingMessage;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v9

    if-nez v9, :cond_31

    move-object v9, v1

    goto :goto_39

    :cond_31
    invoke-interface {v6}, Lcom/android/internal/widget/MessagingMessage;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v9

    .line 709
    :goto_39
    if-nez v9, :cond_3d

    move-object v10, v1

    goto :goto_4c

    .line 710
    :cond_3d
    invoke-virtual {v9}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_48

    invoke-virtual {v9}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v10

    goto :goto_4c

    :cond_48
    invoke-virtual {v9}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v10

    .line 711
    :goto_4c
    invoke-static {v10, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    xor-int/2addr v7, v11

    or-int/2addr v7, v8

    .line 712
    if-eqz v7, :cond_68

    .line 713
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 714
    move-object v7, p3

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 715
    if-nez v9, :cond_61

    .line 716
    iget-object v9, p0, Lcom/android/internal/widget/MessagingLayout;->mUser:Landroid/app/Person;

    .line 718
    :cond_61
    move-object/from16 v8, p4

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 719
    move-object v5, v10

    goto :goto_6b

    .line 712
    :cond_68
    move-object v7, p3

    move-object/from16 v8, p4

    .line 721
    :goto_6b
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 699
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 723
    :cond_71
    return-void
.end method

.method private blacklist getNewImageMessage()Landroid/view/View;
    .registers 2

    .line 486
    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingLayout;->mIsCollapsed:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 489
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingGroup;

    .line 490
    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingGroup;->getIsolatedMessage()Lcom/android/internal/widget/MessagingImageMessage;

    move-result-object v0

    .line 491
    if-eqz v0, :cond_1f

    .line 492
    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingImageMessage;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 495
    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getSpacingForImage()I
    .registers 2

    .line 465
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    .line 466
    iget v0, p0, Lcom/android/internal/widget/MessagingLayout;->mSpacingForImage:I

    return v0

    .line 468
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isShowingSummarization()Z
    .registers 2

    .line 373
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mSummarizedContent:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingLayout;->mIsCollapsed:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private synthetic blacklist lambda$createGroupViews$11(Lcom/android/internal/widget/MessagingGroup;)Z
    .registers 3

    .line 690
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private synthetic blacklist lambda$removeGroups$6(Lcom/android/internal/widget/MessagingGroup;)V
    .registers 3

    .line 510
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MessagingLinearLayout;->removeTransientView(Landroid/view/View;)V

    .line 511
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingGroup;->recycle()V

    .line 512
    return-void
.end method

.method static synthetic blacklist lambda$setAvatarReplacementAsync$0()V
    .registers 0

    .line 177
    return-void
.end method

.method static synthetic blacklist lambda$setConversationTitleAsync$3()V
    .registers 0

    .line 232
    return-void
.end method

.method private synthetic blacklist lambda$setDataAsync$4(Landroid/os/Bundle;)V
    .registers 2

    .line 300
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingLayout;->setData(Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$setDataAsync$5(Lcom/android/internal/widget/MessagingData;)V
    .registers 3

    .line 307
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getHistoricMessagingMessages()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MessagingLayout;->finalizeInflate(Ljava/util/List;)V

    .line 308
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getNewMessagingMessages()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MessagingLayout;->finalizeInflate(Ljava/util/List;)V

    .line 309
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MessagingLayout;->bind(Lcom/android/internal/widget/MessagingData;)V

    .line 310
    return-void
.end method

.method static synthetic blacklist lambda$setIsCollapsedAsync$2()V
    .registers 0

    .line 209
    return-void
.end method

.method static synthetic blacklist lambda$setIsOneToOneAsync$8()V
    .registers 0

    .line 593
    return-void
.end method

.method static synthetic blacklist lambda$setLayoutColorAsync$7()V
    .registers 0

    .line 580
    return-void
.end method

.method static synthetic blacklist lambda$setMessageTextColorAsync$10()V
    .registers 0

    .line 627
    return-void
.end method

.method static synthetic blacklist lambda$setNameReplacementAsync$1()V
    .registers 0

    .line 190
    return-void
.end method

.method static synthetic blacklist lambda$setSenderTextColorAsync$9()V
    .registers 0

    .line 606
    return-void
.end method

.method private blacklist parseMessagingData(Landroid/os/Bundle;Z)Lcom/android/internal/widget/MessagingData;
    .registers 14

    .line 247
    const-string v0, "android.messages"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 248
    nop

    .line 249
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v0

    .line 250
    const-string v1, "android.messages.historic"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 251
    nop

    .line 252
    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v1

    .line 253
    const-class v2, Landroid/app/Person;

    const-string v3, "android.messagingUser"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Person;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/MessagingLayout;->setUser(Landroid/app/Person;)V

    .line 255
    const-string v2, "android.remoteInputHistoryItems"

    const-class v4, Landroid/app/RemoteInputHistoryItem;

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/app/RemoteInputHistoryItem;

    .line 257
    invoke-direct {p0, v0, v2}, Lcom/android/internal/widget/MessagingLayout;->addRemoteInputHistoryToMessages(Ljava/util/List;[Landroid/app/RemoteInputHistoryItem;)V

    .line 259
    const-class v2, Landroid/app/Person;

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/app/Person;

    .line 260
    nop

    .line 261
    const-string v2, "android.remoteInputSpinner"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 264
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, p2, v3}, Lcom/android/internal/widget/MessagingLayout;->createMessages(Ljava/util/List;ZZZ)Ljava/util/List;

    move-result-object v6

    .line 267
    const-string v1, "android.summarization"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mSummarizedContent:Ljava/lang/CharSequence;

    .line 268
    invoke-direct {p0}, Lcom/android/internal/widget/MessagingLayout;->isShowingSummarization()Z

    move-result p1

    if-eqz p1, :cond_6a

    .line 269
    new-instance p1, Landroid/app/Notification$MessagingStyle$Message;

    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mSummarizedContent:Ljava/lang/CharSequence;

    const-wide/16 v7, 0x0

    const-string v1, ""

    invoke-direct {p1, v0, v7, v8, v1}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)V

    .line 271
    nop

    .line 272
    invoke-static {p1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, v3, p2, v2}, Lcom/android/internal/widget/MessagingLayout;->createMessages(Ljava/util/List;ZZZ)Ljava/util/List;

    move-result-object p1

    .line 273
    move-object v7, p1

    goto :goto_70

    .line 274
    :cond_6a
    nop

    .line 275
    invoke-direct {p0, v0, v3, p2, v3}, Lcom/android/internal/widget/MessagingLayout;->createMessages(Ljava/util/List;ZZZ)Ljava/util/List;

    move-result-object p1

    move-object v7, p1

    .line 279
    :goto_70
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 280
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 283
    invoke-direct {p0, v6, v7, v8, v9}, Lcom/android/internal/widget/MessagingLayout;->findGroups(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 285
    new-instance v3, Lcom/android/internal/widget/MessagingData;

    iget-object v10, p0, Lcom/android/internal/widget/MessagingLayout;->mSummarizedContent:Ljava/lang/CharSequence;

    invoke-direct/range {v3 .. v10}, Lcom/android/internal/widget/MessagingData;-><init>(Landroid/app/Person;ZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)V

    return-object v3
.end method

.method private blacklist removeGroups(Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;)V"
        }
    .end annotation

    .line 499
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 500
    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_4b

    .line 501
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MessagingGroup;

    .line 502
    iget-object v4, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_48

    .line 503
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getMessages()Ljava/util/List;

    move-result-object v4

    .line 505
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->isShown()Z

    move-result v5

    .line 506
    iget-object v6, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v6, v3}, Lcom/android/internal/widget/MessagingLinearLayout;->removeView(Landroid/view/View;)V

    .line 507
    if-eqz v5, :cond_39

    invoke-static {v3}, Lcom/android/internal/widget/MessagingLinearLayout;->isGone(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_39

    .line 508
    iget-object v5, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v5, v3, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->addTransientView(Landroid/view/View;I)V

    .line 509
    new-instance v5, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0, v3}, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/widget/MessagingLayout;Lcom/android/internal/widget/MessagingGroup;)V

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/MessagingGroup;->removeGroupAnimated(Ljava/lang/Runnable;)V

    goto :goto_3e

    .line 514
    :cond_39
    iget-object v5, p0, Lcom/android/internal/widget/MessagingLayout;->mToRecycle:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    :goto_3e
    iget-object v3, p0, Lcom/android/internal/widget/MessagingLayout;->mMessages:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 517
    iget-object v3, p0, Lcom/android/internal/widget/MessagingLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 500
    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 520
    :cond_4b
    return-void
.end method

.method private blacklist updateHistoricMessageVisibility()V
    .registers 11

    .line 771
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 772
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    const/16 v3, 0x8

    if-ge v2, v0, :cond_1f

    .line 773
    iget-object v4, p0, Lcom/android/internal/widget/MessagingLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/MessagingMessage;

    .line 774
    iget-boolean v5, p0, Lcom/android/internal/widget/MessagingLayout;->mShowHistoricMessages:Z

    if-eqz v5, :cond_19

    move v3, v1

    :cond_19
    invoke-interface {v4, v3}, Lcom/android/internal/widget/MessagingMessage;->setVisibility(I)V

    .line 772
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 776
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 777
    move v2, v1

    :goto_26
    if-ge v2, v0, :cond_68

    .line 778
    iget-object v4, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/MessagingGroup;

    .line 779
    nop

    .line 780
    invoke-virtual {v4}, Lcom/android/internal/widget/MessagingGroup;->getMessages()Ljava/util/List;

    move-result-object v5

    .line 781
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 782
    move v7, v1

    move v8, v7

    :goto_3b
    if-ge v7, v6, :cond_4e

    .line 783
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/MessagingMessage;

    .line 784
    invoke-interface {v9}, Lcom/android/internal/widget/MessagingMessage;->getVisibility()I

    move-result v9

    if-eq v9, v3, :cond_4b

    .line 785
    add-int/lit8 v8, v8, 0x1

    .line 782
    :cond_4b
    add-int/lit8 v7, v7, 0x1

    goto :goto_3b

    .line 788
    :cond_4e
    if-lez v8, :cond_5a

    invoke-virtual {v4}, Lcom/android/internal/widget/MessagingGroup;->getVisibility()I

    move-result v5

    if-ne v5, v3, :cond_5a

    .line 789
    invoke-virtual {v4, v1}, Lcom/android/internal/widget/MessagingGroup;->setVisibility(I)V

    goto :goto_65

    .line 790
    :cond_5a
    if-nez v8, :cond_65

    invoke-virtual {v4}, Lcom/android/internal/widget/MessagingGroup;->getVisibility()I

    move-result v5

    if-eq v5, v3, :cond_65

    .line 791
    invoke-virtual {v4, v3}, Lcom/android/internal/widget/MessagingGroup;->setVisibility(I)V

    .line 777
    :cond_65
    :goto_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 794
    :cond_68
    return-void
.end method

.method private blacklist updateImageMessages()V
    .registers 6

    .line 414
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    if-nez v0, :cond_5

    .line 415
    return-void

    .line 417
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/widget/MessagingLayout;->getNewImageMessage()Landroid/view/View;

    move-result-object v0

    .line 419
    iget-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 420
    if-eqz v0, :cond_14

    const/4 v3, 0x1

    goto :goto_15

    :cond_14
    move v3, v2

    .line 421
    :goto_15
    if-eq v1, v0, :cond_23

    .line 422
    iget-object v4, p0, Lcom/android/internal/widget/MessagingLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v4, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->removeView(Landroid/view/View;)V

    .line 423
    if-eqz v3, :cond_23

    .line 424
    iget-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->addView(Landroid/view/View;)V

    .line 427
    :cond_23
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    const/16 v1, 0x8

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v2, v1

    :goto_2b
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->setVisibility(I)V

    .line 429
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mRightIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mRightIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 432
    if-eqz v3, :cond_47

    .line 433
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mRightIconView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 434
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mRightIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 437
    :cond_47
    if-eqz v3, :cond_4c

    .line 438
    invoke-direct {p0}, Lcom/android/internal/widget/MessagingLayout;->adjustSpacingForImage()V

    .line 440
    :cond_4c
    return-void
.end method

.method private blacklist updateMarginEnd(Landroid/view/ViewGroup;I)V
    .registers 5

    .line 472
    if-nez p1, :cond_a

    .line 473
    const-string p1, "MessagingLayout"

    const-string p2, "The view passed to updateMarginEnd should not be null"

    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    return-void

    .line 477
    :cond_a
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 478
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v1

    if-eq v1, p2, :cond_1c

    .line 479
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 480
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    :cond_1c
    return-void
.end method

.method private blacklist updateTitleAndNamesDisplay()V
    .registers 9

    .line 523
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PeopleHelper;->mapUniqueNamesToPrefix(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 526
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 527
    const/4 v2, 0x0

    move v3, v2

    :goto_f
    iget-object v4, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_59

    .line 529
    iget-object v4, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/MessagingGroup;

    .line 530
    invoke-virtual {v4}, Lcom/android/internal/widget/MessagingGroup;->getSender()Landroid/app/Person;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/widget/MessagingLayout;->mUser:Landroid/app/Person;

    if-ne v5, v6, :cond_29

    const/4 v5, 0x1

    goto :goto_2a

    :cond_29
    move v5, v2

    .line 531
    :goto_2a
    invoke-virtual {v4}, Lcom/android/internal/widget/MessagingGroup;->getSenderName()Ljava/lang/CharSequence;

    move-result-object v6

    .line 532
    invoke-virtual {v4}, Lcom/android/internal/widget/MessagingGroup;->needsGeneratedAvatar()Z

    move-result v7

    if-eqz v7, :cond_56

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_56

    iget-boolean v7, p0, Lcom/android/internal/widget/MessagingLayout;->mIsOneToOne:Z

    if-eqz v7, :cond_45

    iget-object v7, p0, Lcom/android/internal/widget/MessagingLayout;->mAvatarReplacement:Landroid/graphics/drawable/Icon;

    if-eqz v7, :cond_45

    if-nez v5, :cond_45

    .line 534
    goto :goto_56

    .line 536
    :cond_45
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 537
    iget v7, p0, Lcom/android/internal/widget/MessagingLayout;->mLayoutColor:I

    invoke-virtual {v4, v6, v5, v7}, Lcom/android/internal/widget/MessagingGroup;->getAvatarSymbolIfMatching(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    .line 539
    if-eqz v4, :cond_56

    .line 540
    invoke-virtual {v1, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    :cond_56
    :goto_56
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 544
    :cond_59
    nop

    :goto_5a
    iget-object v3, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_b6

    .line 546
    iget-object v3, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MessagingGroup;

    .line 547
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSenderName()Ljava/lang/CharSequence;

    move-result-object v4

    .line 548
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->needsGeneratedAvatar()Z

    move-result v5

    if-eqz v5, :cond_b3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 549
    goto :goto_b3

    .line 551
    :cond_7b
    iget-boolean v5, p0, Lcom/android/internal/widget/MessagingLayout;->mIsOneToOne:Z

    if-eqz v5, :cond_91

    iget-object v5, p0, Lcom/android/internal/widget/MessagingLayout;->mAvatarReplacement:Landroid/graphics/drawable/Icon;

    if-eqz v5, :cond_91

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSender()Landroid/app/Person;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/widget/MessagingLayout;->mUser:Landroid/app/Person;

    if-eq v5, v6, :cond_91

    .line 552
    iget-object v4, p0, Lcom/android/internal/widget/MessagingLayout;->mAvatarReplacement:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/MessagingGroup;->setAvatar(Landroid/graphics/drawable/Icon;)V

    goto :goto_b3

    .line 554
    :cond_91
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Icon;

    .line 555
    if-nez v5, :cond_a8

    .line 556
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget v6, p0, Lcom/android/internal/widget/MessagingLayout;->mLayoutColor:I

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/internal/widget/MessagingLayout;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    .line 558
    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    :cond_a8
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget v7, p0, Lcom/android/internal/widget/MessagingLayout;->mLayoutColor:I

    invoke-virtual {v3, v5, v4, v6, v7}, Lcom/android/internal/widget/MessagingGroup;->setCreatedAvatar(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 544
    :cond_b3
    :goto_b3
    add-int/lit8 v2, v2, 0x1

    goto :goto_5a

    .line 564
    :cond_b6
    return-void
.end method

.method private blacklist updateViewsForSummarization()V
    .registers 3

    .line 351
    nop

    .line 352
    invoke-direct {p0}, Lcom/android/internal/widget/MessagingLayout;->isShowingSummarization()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 353
    const/4 v0, 0x3

    goto :goto_1a

    .line 354
    :cond_9
    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingLayout;->mIsCollapsed:Z

    if-eqz v0, :cond_17

    .line 355
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->nmCollapsedLines()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 356
    const/4 v0, 0x2

    goto :goto_1a

    .line 358
    :cond_15
    const/4 v0, 0x1

    goto :goto_1a

    .line 354
    :cond_17
    const v0, 0x7fffffff

    .line 361
    :goto_1a
    iget-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->setMaxDisplayedLines(I)V

    .line 362
    invoke-direct {p0}, Lcom/android/internal/widget/MessagingLayout;->isShowingSummarization()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 363
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mMessageContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 364
    if-eqz v0, :cond_38

    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_38

    .line 365
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 366
    iget v1, p0, Lcom/android/internal/widget/MessagingLayout;->mSummarizationStartMargin:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 370
    :cond_38
    return-void
.end method


# virtual methods
.method public blacklist createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;
    .registers 5

    .line 567
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getImageMessageContainer()Landroid/view/ViewGroup;
    .registers 2

    .line 826
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    return-object v0
.end method

.method public blacklist getMessagingGroups()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;"
        }
    .end annotation

    .line 830
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getMessagingLinearLayout()Lcom/android/internal/widget/MessagingLinearLayout;
    .registers 2

    .line 821
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    return-object v0
.end method

.method protected whitelist onFinishInflate()V
    .registers 4

    .line 123
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 124
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PeopleHelper;->init(Landroid/content/Context;)V

    .line 125
    const v0, 0x1020442

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingLinearLayout;

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    .line 126
    const v0, 0x10202b4

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingLinearLayout;

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    .line 127
    const v0, 0x10204da

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mRightIconView:Landroid/widget/ImageView;

    .line 128
    const v0, 0x1020445

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/NotificationTopLineView;

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mTopLine:Landroid/view/NotificationTopLineView;

    .line 131
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 133
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105029a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 135
    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/MessagingLayout;->mSpacingForExpander:I

    .line 140
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050300

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 142
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10502a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 144
    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/widget/MessagingLayout;->mSpacingForImage:I

    .line 146
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 149
    const v0, 0x10203b8

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 150
    if-eqz v0, :cond_81

    .line 151
    const v1, 0x1080713

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 157
    :cond_81
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 158
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 159
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingClipRect:Landroid/graphics/Rect;

    .line 160
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/MessagingLayout;->setMessagingClippingDisabled(Z)V

    .line 162
    const v0, 0x1020439

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mMessageContentView:Landroid/widget/LinearLayout;

    .line 163
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105028d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MessagingLayout;->mSummarizationStartMargin:I

    .line 165
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 6

    .line 798
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 799
    move-object p1, p0

    iget-object p2, p1, Lcom/android/internal/widget/MessagingLayout;->mAddedGroups:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_18

    .line 800
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance p3, Lcom/android/internal/widget/MessagingLayout$1;

    invoke-direct {p3, p0}, Lcom/android/internal/widget/MessagingLayout$1;-><init>(Lcom/android/internal/widget/MessagingLayout;)V

    invoke-virtual {p2, p3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 818
    :cond_18
    return-void
.end method

.method public blacklist setAvatarReplacement(Landroid/graphics/drawable/Icon;)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setAvatarReplacementAsync"
    .end annotation

    .line 169
    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mAvatarReplacement:Landroid/graphics/drawable/Icon;

    .line 170
    return-void
.end method

.method public blacklist setAvatarReplacementAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;
    .registers 2

    .line 176
    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mAvatarReplacement:Landroid/graphics/drawable/Icon;

    .line 177
    new-instance p1, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda7;

    invoke-direct {p1}, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda7;-><init>()V

    return-object p1
.end method

.method public blacklist setConversationTitle(Ljava/lang/CharSequence;)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setConversationTitleAsync"
    .end annotation

    .line 224
    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mConversationTitle:Ljava/lang/CharSequence;

    .line 225
    return-void
.end method

.method public blacklist setConversationTitleAsync(Ljava/lang/CharSequence;)Ljava/lang/Runnable;
    .registers 2

    .line 231
    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mConversationTitle:Ljava/lang/CharSequence;

    .line 232
    new-instance p1, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda6;-><init>()V

    return-object p1
.end method

.method public blacklist setData(Landroid/os/Bundle;)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setDataAsync"
    .end annotation

    .line 242
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/MessagingLayout;->parseMessagingData(Landroid/os/Bundle;Z)Lcom/android/internal/widget/MessagingData;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/MessagingLayout;->bind(Lcom/android/internal/widget/MessagingData;)V

    .line 243
    return-void
.end method

.method public blacklist setDataAsync(Landroid/os/Bundle;)Ljava/lang/Runnable;
    .registers 3

    .line 299
    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingLayout;->mPrecomputedTextEnabled:Z

    if-nez v0, :cond_a

    .line 300
    new-instance v0, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/MessagingLayout;Landroid/os/Bundle;)V

    return-object v0

    .line 303
    :cond_a
    nop

    .line 304
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/MessagingLayout;->parseMessagingData(Landroid/os/Bundle;Z)Lcom/android/internal/widget/MessagingData;

    move-result-object p1

    .line 306
    new-instance v0, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/widget/MessagingLayout;Lcom/android/internal/widget/MessagingData;)V

    return-object v0
.end method

.method public blacklist setImageResolver(Lcom/android/internal/widget/ImageResolver;)V
    .registers 2

    .line 330
    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mImageResolver:Lcom/android/internal/widget/ImageResolver;

    .line 331
    return-void
.end method

.method public blacklist setIsCollapsed(Z)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setIsCollapsedAsync"
    .end annotation

    .line 200
    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingLayout;->mIsCollapsed:Z

    .line 201
    return-void
.end method

.method public blacklist setIsCollapsedAsync(Z)Ljava/lang/Runnable;
    .registers 2

    .line 208
    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingLayout;->mIsCollapsed:Z

    .line 209
    new-instance p1, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda9;

    invoke-direct {p1}, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda9;-><init>()V

    return-object p1
.end method

.method public blacklist setIsOneToOne(Z)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setIsOneToOneAsync"
    .end annotation

    .line 585
    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingLayout;->mIsOneToOne:Z

    .line 586
    return-void
.end method

.method public blacklist setIsOneToOneAsync(Z)Ljava/lang/Runnable;
    .registers 2

    .line 592
    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingLayout;->mIsOneToOne:Z

    .line 593
    new-instance p1, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda4;-><init>()V

    return-object p1
.end method

.method public blacklist setLargeIcon(Landroid/graphics/drawable/Icon;)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 215
    return-void
.end method

.method public blacklist setLayoutColor(I)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setLayoutColorAsync"
    .end annotation

    .line 572
    iput p1, p0, Lcom/android/internal/widget/MessagingLayout;->mLayoutColor:I

    .line 573
    return-void
.end method

.method public blacklist setLayoutColorAsync(I)Ljava/lang/Runnable;
    .registers 2

    .line 579
    iput p1, p0, Lcom/android/internal/widget/MessagingLayout;->mLayoutColor:I

    .line 580
    new-instance p1, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda0;-><init>()V

    return-object p1
.end method

.method public blacklist setMessageTextColor(I)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setMessageTextColorAsync"
    .end annotation

    .line 619
    iput p1, p0, Lcom/android/internal/widget/MessagingLayout;->mMessageTextColor:I

    .line 620
    return-void
.end method

.method public blacklist setMessageTextColorAsync(I)Ljava/lang/Runnable;
    .registers 2

    .line 626
    iput p1, p0, Lcom/android/internal/widget/MessagingLayout;->mMessageTextColor:I

    .line 627
    new-instance p1, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda8;

    invoke-direct {p1}, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda8;-><init>()V

    return-object p1
.end method

.method public blacklist setMessagingClippingDisabled(Z)V
    .registers 3

    .line 835
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    :cond_6
    iget-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingClipRect:Landroid/graphics/Rect;

    :goto_8
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MessagingLinearLayout;->setClipBounds(Landroid/graphics/Rect;)V

    .line 836
    return-void
.end method

.method public blacklist setNameReplacement(Ljava/lang/CharSequence;)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setNameReplacementAsync"
    .end annotation

    .line 182
    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mNameReplacement:Ljava/lang/CharSequence;

    .line 183
    return-void
.end method

.method public blacklist setNameReplacementAsync(Ljava/lang/CharSequence;)Ljava/lang/Runnable;
    .registers 2

    .line 189
    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mNameReplacement:Ljava/lang/CharSequence;

    .line 190
    new-instance p1, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda10;

    invoke-direct {p1}, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda10;-><init>()V

    return-object p1
.end method

.method public blacklist setNotificationBackgroundColor(I)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 615
    return-void
.end method

.method public blacklist setPrecomputedTextEnabled(Z)V
    .registers 2

    .line 319
    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingLayout;->mPrecomputedTextEnabled:Z

    .line 320
    return-void
.end method

.method public blacklist setSenderTextColor(I)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setSenderTextColorAsync"
    .end annotation

    .line 598
    iput p1, p0, Lcom/android/internal/widget/MessagingLayout;->mSenderTextColor:I

    .line 599
    return-void
.end method

.method public blacklist setSenderTextColorAsync(I)Ljava/lang/Runnable;
    .registers 2

    .line 605
    iput p1, p0, Lcom/android/internal/widget/MessagingLayout;->mSenderTextColor:I

    .line 606
    new-instance p1, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda11;

    invoke-direct {p1}, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda11;-><init>()V

    return-object p1
.end method

.method public blacklist setUser(Landroid/app/Person;)V
    .registers 3

    .line 631
    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mUser:Landroid/app/Person;

    .line 632
    iget-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mUser:Landroid/app/Person;

    invoke-virtual {p1}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    if-nez p1, :cond_2a

    .line 633
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x108070a

    invoke-static {p1, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p1

    .line 635
    iget v0, p0, Lcom/android/internal/widget/MessagingLayout;->mLayoutColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->setTint(I)Landroid/graphics/drawable/Icon;

    .line 636
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mUser:Landroid/app/Person;

    invoke-virtual {v0}, Landroid/app/Person;->toBuilder()Landroid/app/Person$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Person$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Person$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mUser:Landroid/app/Person;

    .line 638
    :cond_2a
    return-void
.end method

.method public blacklist showHistoricMessages(Z)V
    .registers 2

    .line 766
    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingLayout;->mShowHistoricMessages:Z

    .line 767
    invoke-direct {p0}, Lcom/android/internal/widget/MessagingLayout;->updateHistoricMessageVisibility()V

    .line 768
    return-void
.end method
