.class public Lcom/android/internal/widget/ConversationLayout;
.super Landroid/widget/FrameLayout;
.source "ConversationLayout.java"

# interfaces
.implements Lcom/android/internal/widget/ImageMessageConsumer;
.implements Lcom/android/internal/widget/IMessagingLayout;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;
    }
.end annotation


# static fields
.field public static final blacklist FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

.field public static final blacklist FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field public static final blacklist IMPORTANCE_ANIM_GROW_DURATION:I = 0xfa

.field public static final blacklist IMPORTANCE_ANIM_SHRINK_DELAY:I = 0x19

.field public static final blacklist IMPORTANCE_ANIM_SHRINK_DURATION:I = 0xc8

.field public static final blacklist LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field private static final blacklist MAX_SUMMARIZATION_LINES:I = 0x3

.field public static final blacklist OVERSHOOT:Landroid/view/animation/Interpolator;

.field private static final blacklist TAG:Ljava/lang/String; = "ConversationLayout"


# instance fields
.field private blacklist mActions:Lcom/android/internal/widget/NotificationActionListLayout;

.field private final blacklist mAddedGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAppName:Lcom/android/internal/widget/ObservableTextView;

.field private blacklist mAppNameDivider:Landroid/view/View;

.field private blacklist mAppNameGone:Z

.field private blacklist mAvatarReplacement:Landroid/graphics/drawable/Icon;

.field private blacklist mBadgeProtrusion:I

.field private blacklist mContentContainer:Landroid/view/View;

.field private blacklist mContentMarginEnd:I

.field private blacklist mConversationAvatarSize:I

.field private blacklist mConversationAvatarSizeExpanded:I

.field private blacklist mConversationContentView:Landroid/widget/LinearLayout;

.field private blacklist mConversationFacePile:Landroid/view/View;

.field private blacklist mConversationHeader:Landroid/view/View;

.field private blacklist mConversationHeaderData:Lcom/android/internal/widget/ConversationHeaderData;

.field private blacklist mConversationIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mConversationIconBadge:Landroid/view/View;

.field private blacklist mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

.field private blacklist mConversationIconContainer:Landroid/view/View;

.field private blacklist mConversationIconTopPadding:I

.field private blacklist mConversationIconTopPaddingExpandedGroup:I

.field private blacklist mConversationIconView:Lcom/android/internal/widget/CachingIconView;

.field private blacklist mConversationText:Landroid/widget/TextView;

.field private blacklist mConversationTitle:Ljava/lang/CharSequence;

.field private blacklist mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

.field private blacklist mExpandButtonAndContentContainer:Landroid/view/ViewGroup;

.field private blacklist mExpandButtonContainer:Landroid/view/View;

.field private blacklist mExpandButtonContainerA11yContainer:Landroid/view/ViewGroup;

.field private blacklist mExpandable:Z

.field private blacklist mExpandedGroupBadgeProtrusion:I

.field private blacklist mExpandedGroupBadgeProtrusionFacePile:I

.field private blacklist mExpandedGroupMessagePadding:I

.field private blacklist mFacePileAvatarSize:I

.field private blacklist mFacePileAvatarSizeExpandedGroup:I

.field private blacklist mFacePileProtectionWidth:I

.field private blacklist mFacePileProtectionWidthExpanded:I

.field private blacklist mFallbackChatName:Ljava/lang/CharSequence;

.field private blacklist mFallbackGroupChatName:Ljava/lang/CharSequence;

.field private blacklist mFeedbackIcon:Landroid/view/View;

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

.field private blacklist mIcon:Lcom/android/internal/widget/CachingIconView;

.field private blacklist mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

.field private blacklist mImageResolver:Lcom/android/internal/widget/ImageResolver;

.field private blacklist mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

.field private blacklist mImportantConversation:Z

.field private blacklist mIsCollapsed:Z

.field private blacklist mIsOneToOne:Z

.field private blacklist mLargeIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mLayoutColor:I

.field private blacklist mMessageSpacingGroup:I

.field private blacklist mMessageSpacingStandard:I

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

.field private blacklist mMinTouchSize:F

.field private blacklist mNameReplacement:Ljava/lang/CharSequence;

.field private blacklist mNotificationBackgroundColor:I

.field private blacklist mNotificationHeaderExpandedPadding:I

.field private final blacklist mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

.field private blacklist mPrecomputedTextEnabled:Z

.field private blacklist mRightIconView:Landroid/widget/ImageView;

.field private blacklist mSenderTextColor:I

.field private blacklist mShortcutIcon:Landroid/graphics/drawable/Icon;

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

.field private final blacklist mTouchDelegate:Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

.field private blacklist mUser:Landroid/app/Person;


# direct methods
.method public static synthetic blacklist $r8$lambda$BNjQhXP-5aUYoQz14QmKl9PDSp4(Lcom/android/internal/widget/ConversationLayout;Ljava/lang/Integer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->lambda$onFinishInflate$3(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$RRECZr-Ja0GiiVpYH-bfuM7k_w0(Lcom/android/internal/widget/ConversationLayout;Lcom/android/internal/widget/MessagingData;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->lambda$setDataAsync$7(Lcom/android/internal/widget/MessagingData;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$S_9z6spairVf2ABxvBIpqs1dF4k(Lcom/android/internal/widget/ConversationLayout;Landroid/graphics/drawable/GradientDrawable;IILandroid/animation/ValueAnimator;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/ConversationLayout;->lambda$setIsImportantConversation$4(Landroid/graphics/drawable/GradientDrawable;IILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$WzkgrNjBzjRkFbT2s60Ni0YZvfI(Lcom/android/internal/widget/ConversationLayout;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->lambda$onFinishInflate$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$YYTcqhw1rqwhgagW8GhxVF_ROo8(Lcom/android/internal/widget/ConversationLayout;Lcom/android/internal/widget/MessagingGroup;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->lambda$createGroupViews$9(Lcom/android/internal/widget/MessagingGroup;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$itoNd3hDm44wQVysLeFna0aKNcg(Lcom/android/internal/widget/ConversationLayout;Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->lambda$setDataAsync$6(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$j0YyZfMYEZhzQ8Y9Hi49y98b3Ic(Lcom/android/internal/widget/ConversationLayout;Lcom/android/internal/widget/MessagingGroup;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->lambda$removeGroups$8(Lcom/android/internal/widget/MessagingGroup;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$kjfdbUt03rnmGgKDl1Q8gXF02A0(Lcom/android/internal/widget/ConversationLayout;Ljava/lang/Integer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->lambda$onFinishInflate$0(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$m-6GV39jvtHC9VSXgbIKWmV1q5g(Lcom/android/internal/widget/ConversationLayout;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->lambda$onFinishInflate$2(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$soZpOqaqXl-AcA4VGnk9iLD9Nso(Lcom/android/internal/widget/ConversationLayout;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->lambda$setIsCollapsedAsync$5(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAddedGroups(Lcom/android/internal/widget/ConversationLayout;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/ConversationLayout;->mAddedGroups:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConversationIconBadgeBg(Lcom/android/internal/widget/ConversationLayout;)Lcom/android/internal/widget/CachingIconView;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 86
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/widget/ConversationLayout;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 87
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v4, v1, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/widget/ConversationLayout;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    .line 88
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/widget/ConversationLayout;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 89
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3fb33333    # 1.4f

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/widget/ConversationLayout;->OVERSHOOT:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 180
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 95
    new-instance p1, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {p1}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 96
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    .line 97
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    .line 100
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    .line 106
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mAddedGroups:Ljava/util/ArrayList;

    .line 153
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandable:Z

    .line 169
    new-instance p1, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;-><init>(Landroid/view/View;Lcom/android/internal/widget/ConversationLayout-IA;)V

    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mTouchDelegate:Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    .line 170
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mToRecycle:Ljava/util/ArrayList;

    .line 171
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/widget/ConversationLayout;->mPrecomputedTextEnabled:Z

    .line 181
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 184
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    new-instance p1, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {p1}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 96
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    .line 97
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    .line 100
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    .line 106
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mAddedGroups:Ljava/util/ArrayList;

    .line 153
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandable:Z

    .line 169
    new-instance p1, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;-><init>(Landroid/view/View;Lcom/android/internal/widget/ConversationLayout-IA;)V

    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mTouchDelegate:Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    .line 170
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mToRecycle:Ljava/util/ArrayList;

    .line 171
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/widget/ConversationLayout;->mPrecomputedTextEnabled:Z

    .line 185
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 189
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    new-instance p1, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {p1}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 96
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    .line 97
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    .line 100
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    .line 106
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mAddedGroups:Ljava/util/ArrayList;

    .line 153
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandable:Z

    .line 169
    new-instance p1, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;-><init>(Landroid/view/View;Lcom/android/internal/widget/ConversationLayout-IA;)V

    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mTouchDelegate:Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    .line 170
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mToRecycle:Ljava/util/ArrayList;

    .line 171
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/widget/ConversationLayout;->mPrecomputedTextEnabled:Z

    .line 190
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 194
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 95
    new-instance p1, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {p1}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 96
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    .line 97
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    .line 100
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    .line 106
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mAddedGroups:Ljava/util/ArrayList;

    .line 153
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandable:Z

    .line 169
    new-instance p1, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;-><init>(Landroid/view/View;Lcom/android/internal/widget/ConversationLayout-IA;)V

    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mTouchDelegate:Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    .line 170
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mToRecycle:Ljava/util/ArrayList;

    .line 171
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/widget/ConversationLayout;->mPrecomputedTextEnabled:Z

    .line 195
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

    .line 599
    if-eqz p2, :cond_32

    array-length v0, p2

    if-nez v0, :cond_6

    goto :goto_32

    .line 602
    :cond_6
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_31

    .line 603
    aget-object v1, p2, v0

    .line 604
    new-instance v2, Landroid/app/Notification$MessagingStyle$Message;

    .line 605
    invoke-virtual {v1}, Landroid/app/RemoteInputHistoryItem;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-wide/16 v4, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroid/app/Person;Z)V

    .line 606
    invoke-virtual {v1}, Landroid/app/RemoteInputHistoryItem;->getUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 607
    invoke-virtual {v1}, Landroid/app/RemoteInputHistoryItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/RemoteInputHistoryItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/app/Notification$MessagingStyle$Message;->setData(Ljava/lang/String;Landroid/net/Uri;)Landroid/app/Notification$MessagingStyle$Message;

    .line 609
    :cond_2b
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 602
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 611
    :cond_31
    return-void

    .line 600
    :cond_32
    :goto_32
    return-void
.end method

.method private blacklist adjustSpacingForImage()V
    .registers 4

    .line 752
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 753
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    iget v1, p0, Lcom/android/internal/widget/ConversationLayout;->mSpacingForExpander:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/ConversationLayout;->updateMarginEnd(Landroid/view/ViewGroup;I)V

    .line 755
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->getSpacingForImage()I

    move-result v0

    .line 756
    iget v1, p0, Lcom/android/internal/widget/ConversationLayout;->mSpacingForExpander:I

    add-int/2addr v1, v0

    .line 757
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mTopLine:Landroid/view/NotificationTopLineView;

    invoke-direct {p0, v2, v1}, Lcom/android/internal/widget/ConversationLayout;->updateMarginEnd(Landroid/view/ViewGroup;I)V

    .line 760
    if-lez v0, :cond_20

    .line 761
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/ConversationLayout;->updateMarginEnd(Landroid/view/ViewGroup;I)V

    .line 764
    :cond_20
    return-void
.end method

.method private blacklist applyNotificationBackgroundColor(Landroid/widget/ImageView;)V
    .registers 3

    .line 1165
    nop

    .line 1166
    invoke-static {}, Lcom/android/internal/widget/ConversationLayout;->transparentBadgeRingEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    const v0, 0x106000d

    goto :goto_d

    .line 1167
    :cond_b
    iget v0, p0, Lcom/android/internal/widget/ConversationLayout;->mNotificationBackgroundColor:I

    .line 1165
    :goto_d
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 1168
    return-void
.end method

.method private blacklist bind(Lcom/android/internal/widget/MessagingData;)V
    .registers 6

    .line 614
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getUser()Landroid/app/Person;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->setUser(Landroid/app/Person;)V

    .line 615
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getUnreadCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->setUnreadCount(I)V

    .line 617
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateViewsForSummarization()V

    .line 620
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 624
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getGroups()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getSenders()Ljava/util/List;

    move-result-object v2

    .line 625
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getShowSpinner()Z

    move-result v3

    .line 624
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/ConversationLayout;->createGroupViews(Ljava/util/List;Ljava/util/List;Z)V

    .line 628
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->removeGroups(Ljava/util/ArrayList;)V

    .line 631
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MessagingMessage;

    .line 632
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mToRecycle:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/android/internal/widget/MessagingMessage;->removeMessage(Ljava/util/ArrayList;)V

    .line 633
    goto :goto_30

    .line 634
    :cond_42
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_48
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MessagingMessage;

    .line 635
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mToRecycle:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/android/internal/widget/MessagingMessage;->removeMessage(Ljava/util/ArrayList;)V

    .line 636
    goto :goto_48

    .line 638
    :cond_5a
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getNewMessagingMessages()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    .line 639
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getHistoricMessagingMessages()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    .line 640
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateHistoricMessageVisibility()V

    .line 641
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateTitleAndNamesDisplay()V

    .line 643
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->updateConversationLayout(Lcom/android/internal/widget/MessagingData;)V

    .line 646
    iget-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mToRecycle:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_75
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    .line 647
    invoke-interface {v0}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->recycle()V

    .line 648
    goto :goto_75

    .line 649
    :cond_85
    iget-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mToRecycle:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 650
    return-void
.end method

.method private blacklist bindFacePile()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 840
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->bindFacePile(Lcom/android/internal/widget/ConversationAvatarData$GroupConversationAvatarData;)V

    .line 841
    return-void
.end method

.method private blacklist bindFacePile(Lcom/android/internal/widget/ConversationAvatarData$GroupConversationAvatarData;)V
    .registers 8

    .line 844
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    const v1, 0x10202ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 846
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    const v2, 0x10202ab

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 848
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    const v3, 0x10202ad

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 851
    if-nez p1, :cond_27

    .line 852
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/ConversationLayout;->bindFacePile(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    goto :goto_2a

    .line 854
    :cond_27
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/internal/widget/ConversationLayout;->bindFacePileWithDrawable(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/android/internal/widget/ConversationAvatarData$GroupConversationAvatarData;)V

    .line 859
    :goto_2a
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result p1

    if-nez p1, :cond_7f

    .line 864
    iget-boolean p1, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-eqz p1, :cond_3e

    .line 865
    iget p1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationAvatarSize:I

    .line 866
    iget v3, p0, Lcom/android/internal/widget/ConversationLayout;->mFacePileAvatarSize:I

    .line 867
    iget v4, p0, Lcom/android/internal/widget/ConversationLayout;->mFacePileProtectionWidth:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v3

    goto :goto_47

    .line 869
    :cond_3e
    iget p1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationAvatarSizeExpanded:I

    .line 870
    iget v3, p0, Lcom/android/internal/widget/ConversationLayout;->mFacePileAvatarSizeExpandedGroup:I

    .line 871
    iget v4, p0, Lcom/android/internal/widget/ConversationLayout;->mFacePileProtectionWidthExpanded:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v3

    .line 873
    :goto_47
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 874
    iput p1, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 875
    iput p1, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 876
    iget-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 878
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 879
    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 880
    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 881
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 883
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 884
    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 885
    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 886
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 888
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 889
    iput v4, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 890
    iput v4, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 891
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 893
    :cond_7f
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

    .line 1187
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1188
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_f7

    .line 1189
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1190
    nop

    .line 1192
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/4 v5, 0x0

    move-object v6, v5

    :goto_1c
    if-ltz v3, :cond_2e

    .line 1193
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/MessagingMessage;

    .line 1194
    invoke-interface {v6}, Lcom/android/internal/widget/MessagingMessage;->getGroup()Lcom/android/internal/widget/MessagingGroup;

    move-result-object v6

    .line 1195
    if-eqz v6, :cond_2b

    .line 1196
    goto :goto_2e

    .line 1192
    :cond_2b
    add-int/lit8 v3, v3, -0x1

    goto :goto_1c

    .line 1200
    :cond_2e
    :goto_2e
    if-nez v6, :cond_3c

    .line 1201
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-static {v3}, Lcom/android/internal/widget/MessagingGroup;->createGroup(Lcom/android/internal/widget/MessagingLinearLayout;)Lcom/android/internal/widget/MessagingGroup;

    move-result-object v6

    .line 1202
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mAddedGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_44

    .line 1203
    :cond_3c
    invoke-virtual {v6}, Lcom/android/internal/widget/MessagingGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    iget-object v7, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    if-ne v3, v7, :cond_ce

    .line 1208
    :goto_44
    iget-boolean v3, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-eqz v3, :cond_4a

    .line 1209
    const/4 v3, 0x2

    goto :goto_4b

    .line 1210
    :cond_4a
    move v3, v0

    .line 1208
    :goto_4b
    invoke-virtual {v6, v3}, Lcom/android/internal/widget/MessagingGroup;->setImageDisplayLocation(I)V

    .line 1211
    invoke-virtual {v6, v4}, Lcom/android/internal/widget/MessagingGroup;->setIsInConversation(Z)V

    .line 1212
    iget v3, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    invoke-virtual {v6, v3}, Lcom/android/internal/widget/MessagingGroup;->setLayoutColor(I)V

    .line 1213
    iget v3, p0, Lcom/android/internal/widget/ConversationLayout;->mSenderTextColor:I

    iget v7, p0, Lcom/android/internal/widget/ConversationLayout;->mMessageTextColor:I

    invoke-virtual {v6, v3, v7}, Lcom/android/internal/widget/MessagingGroup;->setTextColors(II)V

    .line 1214
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Person;

    .line 1215
    nop

    .line 1216
    iget-object v7, p0, Lcom/android/internal/widget/ConversationLayout;->mUser:Landroid/app/Person;

    if-eq v3, v7, :cond_6e

    iget-object v7, p0, Lcom/android/internal/widget/ConversationLayout;->mNameReplacement:Ljava/lang/CharSequence;

    if-eqz v7, :cond_6e

    .line 1217
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mNameReplacement:Ljava/lang/CharSequence;

    .line 1219
    :cond_6e
    iget-boolean v7, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    if-nez v7, :cond_78

    iget-boolean v7, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-nez v7, :cond_78

    move v7, v4

    goto :goto_79

    :cond_78
    move v7, v0

    :goto_79
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/MessagingGroup;->setShowingAvatar(Z)V

    .line 1220
    iget-boolean v7, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-eqz v7, :cond_92

    .line 1221
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->nmCollapsedLines()Z

    move-result v7

    if-nez v7, :cond_90

    iget-object v7, p0, Lcom/android/internal/widget/ConversationLayout;->mSummarizedContent:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_90

    move v7, v4

    goto :goto_93

    :cond_90
    move v7, v0

    goto :goto_93

    .line 1222
    :cond_92
    move v7, v0

    .line 1220
    :goto_93
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/MessagingGroup;->setSingleLine(Z)V

    .line 1223
    iget-boolean v7, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/MessagingGroup;->setIsCollapsed(Z)V

    .line 1224
    invoke-virtual {v6, v3, v5}, Lcom/android/internal/widget/MessagingGroup;->setSender(Landroid/app/Person;Ljava/lang/CharSequence;)V

    .line 1225
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    if-ne v1, v3, :cond_a8

    if-eqz p3, :cond_a8

    goto :goto_a9

    :cond_a8
    move v4, v0

    :goto_a9
    invoke-virtual {v6, v4}, Lcom/android/internal/widget/MessagingGroup;->setSending(Z)V

    .line 1226
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1229
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/MessagingLinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    if-eq v3, v1, :cond_c3

    .line 1230
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/MessagingLinearLayout;->removeView(Landroid/view/View;)V

    .line 1231
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v3, v6, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->addView(Landroid/view/View;I)V

    .line 1233
    :cond_c3
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->isShowingSummarization()Z

    move-result v3

    invoke-virtual {v6, v2, v3}, Lcom/android/internal/widget/MessagingGroup;->setMessages(Ljava/util/List;Z)V

    .line 1188
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_7

    .line 1204
    :cond_ce
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "group parent was "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1205
    invoke-virtual {v6}, Lcom/android/internal/widget/MessagingGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " but expected "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1237
    :cond_f7
    iget-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mAddedGroups:Ljava/util/ArrayList;

    new-instance p2, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/ConversationLayout;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1238
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

    .line 1439
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1440
    const/4 v1, 0x0

    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 1441
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$MessagingStyle$Message;

    .line 1442
    invoke-direct {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findAndRemoveMatchingMessage(Landroid/app/Notification$MessagingStyle$Message;)Lcom/android/internal/widget/MessagingMessage;

    move-result-object v3

    .line 1443
    if-nez v3, :cond_1e

    .line 1444
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mImageResolver:Lcom/android/internal/widget/ImageResolver;

    invoke-static {p0, v2, v3, p3, p4}, Lcom/android/internal/widget/MessagingMessage;->createMessage(Lcom/android/internal/widget/IMessagingLayout;Landroid/app/Notification$MessagingStyle$Message;Lcom/android/internal/widget/ImageResolver;ZZ)Lcom/android/internal/widget/MessagingMessage;

    move-result-object v3

    .line 1447
    :cond_1e
    invoke-interface {v3, p2}, Lcom/android/internal/widget/MessagingMessage;->setIsHistoric(Z)V

    .line 1448
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1440
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1450
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

    .line 579
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingMessage;

    .line 580
    invoke-interface {v0}, Lcom/android/internal/widget/MessagingMessage;->finalizeInflate()V

    .line 581
    goto :goto_4

    .line 582
    :cond_14
    return-void
.end method

.method private blacklist findAndRemoveMatchingMessage(Landroid/app/Notification$MessagingStyle$Message;)Lcom/android/internal/widget/MessagingMessage;
    .registers 6

    .line 1454
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 1455
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/MessagingMessage;

    .line 1456
    invoke-interface {v2, p1}, Lcom/android/internal/widget/MessagingMessage;->sameAs(Landroid/app/Notification$MessagingStyle$Message;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1457
    iget-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1458
    return-object v2

    .line 1454
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1461
    :cond_21
    nop

    :goto_22
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_41

    .line 1462
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MessagingMessage;

    .line 1463
    invoke-interface {v1, p1}, Lcom/android/internal/widget/MessagingMessage;->sameAs(Landroid/app/Notification$MessagingStyle$Message;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 1464
    iget-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1465
    return-object v1

    .line 1461
    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 1468
    :cond_41
    const/4 p1, 0x0

    return-object p1
.end method

.method private blacklist findGroups(Ljava/util/List;Ljava/util/List;Landroid/app/Person;Ljava/util/List;Ljava/util/List;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;",
            "Landroid/app/Person;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;>;",
            "Ljava/util/List<",
            "Landroid/app/Person;",
            ">;)V"
        }
    .end annotation

    .line 1246
    nop

    .line 1247
    nop

    .line 1248
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1249
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v1

    move-object v5, v4

    move v3, v2

    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v6, v0

    if-ge v3, v6, :cond_78

    .line 1251
    if-ge v3, v0, :cond_1b

    .line 1252
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/MessagingMessage;

    goto :goto_23

    .line 1254
    :cond_1b
    sub-int v6, v3, v0

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/MessagingMessage;

    .line 1256
    :goto_23
    const/4 v7, 0x1

    if-nez v4, :cond_28

    move v8, v7

    goto :goto_29

    :cond_28
    move v8, v2

    .line 1258
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

    .line 1259
    :goto_39
    invoke-direct {p0, v9}, Lcom/android/internal/widget/ConversationLayout;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 1260
    invoke-static {v10, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    xor-int/2addr v7, v11

    or-int/2addr v7, v8

    .line 1261
    if-eqz v7, :cond_6e

    .line 1262
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1263
    move-object/from16 v7, p4

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1264
    if-nez v9, :cond_53

    .line 1265
    move-object v5, p3

    goto :goto_67

    .line 1268
    :cond_53
    invoke-virtual {v9}, Landroid/app/Person;->toBuilder()Landroid/app/Person$Builder;

    move-result-object v5

    invoke-virtual {v9}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v5

    .line 1270
    :goto_67
    move-object/from16 v8, p5

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1271
    move-object v5, v10

    goto :goto_72

    .line 1261
    :cond_6e
    move-object/from16 v7, p4

    move-object/from16 v8, p5

    .line 1273
    :goto_72
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1249
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1275
    :cond_78
    return-void
.end method

.method private blacklist getKey(Landroid/app/Person;)Ljava/lang/CharSequence;
    .registers 3

    .line 1278
    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_13

    :cond_4
    invoke-virtual {p1}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_13

    :cond_f
    invoke-virtual {p1}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object p1

    :goto_13
    return-object p1
.end method

.method private blacklist getNewImageMessage()Landroid/view/View;
    .registers 2

    .line 791
    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 794
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingGroup;

    .line 795
    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingGroup;->getIsolatedMessage()Lcom/android/internal/widget/MessagingImageMessage;

    move-result-object v0

    .line 796
    if-eqz v0, :cond_1f

    .line 797
    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingImageMessage;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 800
    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getRelativeTouchRect(Landroid/graphics/Rect;Landroid/view/View;)V
    .registers 5

    .line 1573
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 1574
    :goto_6
    if-eq p2, p0, :cond_1a

    .line 1575
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1576
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    goto :goto_6

    .line 1578
    :cond_1a
    return-void
.end method

.method private blacklist getSpacingForImage()I
    .registers 2

    .line 770
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    .line 771
    iget v0, p0, Lcom/android/internal/widget/ConversationLayout;->mSpacingForImage:I

    return v0

    .line 773
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isShowingSummarization()Z
    .registers 2

    .line 1048
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mSummarizedContent:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private synthetic blacklist lambda$createGroupViews$9(Lcom/android/internal/widget/MessagingGroup;)Z
    .registers 3

    .line 1237
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private synthetic blacklist lambda$onFinishInflate$0(Ljava/lang/Integer;)V
    .registers 8

    .line 242
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-ne v0, v3, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v1

    .line 243
    :goto_d
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v4}, Lcom/android/internal/widget/CachingIconView;->getVisibility()I

    move-result v4

    .line 244
    if-ne v4, v3, :cond_17

    move v4, v2

    goto :goto_18

    :cond_17
    move v4, v1

    .line 245
    :goto_18
    if-eq v4, v0, :cond_2c

    .line 248
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v4}, Lcom/android/internal/widget/CachingIconView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 249
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/CachingIconView;->setVisibility(I)V

    .line 253
    :cond_2c
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v4}, Lcom/android/internal/widget/CachingIconView;->getVisibility()I

    move-result v4

    .line 254
    if-ne v4, v3, :cond_36

    move v4, v2

    goto :goto_37

    :cond_36
    move v4, v1

    .line 255
    :goto_37
    iget-boolean v5, p0, Lcom/android/internal/widget/ConversationLayout;->mImportantConversation:Z

    if-nez v5, :cond_3d

    move p1, v3

    goto :goto_41

    :cond_3d
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 256
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v3, :cond_4d

    move v5, v2

    goto :goto_4e

    :cond_4d
    move v5, v1

    .line 257
    :goto_4e
    if-eq v4, v5, :cond_62

    .line 260
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v4}, Lcom/android/internal/widget/CachingIconView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 261
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/CachingIconView;->setVisibility(I)V

    .line 264
    :cond_62
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadge:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    .line 265
    if-ne v4, v3, :cond_6b

    move v1, v2

    .line 266
    :cond_6b
    if-eq v1, v0, :cond_7f

    .line 267
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadge:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 268
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadge:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 271
    :cond_7f
    invoke-static {}, Lcom/android/internal/widget/ConversationLayout;->transparentBadgeRingEnabled()Z

    move-result p1

    if-eqz p1, :cond_8f

    .line 272
    iget-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {p1, v2}, Lcom/android/internal/widget/CachingIconView;->setClipToOutline(Z)V

    .line 273
    iget-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 275
    :cond_8f
    return-void
.end method

.method private synthetic blacklist lambda$onFinishInflate$1(Ljava/lang/Boolean;)V
    .registers 5

    .line 278
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/PeopleHelper;->animateViewForceHidden(Lcom/android/internal/widget/CachingIconView;Z)V

    .line 279
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/widget/PeopleHelper;->animateViewForceHidden(Lcom/android/internal/widget/CachingIconView;Z)V

    .line 280
    return-void
.end method

.method private synthetic blacklist lambda$onFinishInflate$2(Ljava/lang/Boolean;)V
    .registers 5

    .line 284
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/PeopleHelper;->animateViewForceHidden(Lcom/android/internal/widget/CachingIconView;Z)V

    .line 285
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/PeopleHelper;->animateViewForceHidden(Lcom/android/internal/widget/CachingIconView;Z)V

    .line 286
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mIcon:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/widget/PeopleHelper;->animateViewForceHidden(Lcom/android/internal/widget/CachingIconView;Z)V

    .line 287
    return-void
.end method

.method private synthetic blacklist lambda$onFinishInflate$3(Ljava/lang/Integer;)V
    .registers 2

    .line 355
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->onAppNameVisibilityChanged()V

    .line 356
    return-void
.end method

.method private synthetic blacklist lambda$removeGroups$8(Lcom/android/internal/widget/MessagingGroup;)V
    .registers 3

    .line 1062
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MessagingLinearLayout;->removeTransientView(Landroid/view/View;)V

    .line 1063
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingGroup;->recycle()V

    .line 1064
    return-void
.end method

.method private synthetic blacklist lambda$setDataAsync$6(Landroid/os/Bundle;)V
    .registers 2

    .line 553
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->setData(Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$setDataAsync$7(Lcom/android/internal/widget/MessagingData;)V
    .registers 3

    .line 562
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getHistoricMessagingMessages()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->finalizeInflate(Ljava/util/List;)V

    .line 563
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getNewMessagingMessages()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->finalizeInflate(Ljava/util/List;)V

    .line 565
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->bind(Lcom/android/internal/widget/MessagingData;)V

    .line 566
    return-void
.end method

.method private synthetic blacklist lambda$setIsCollapsedAsync$5(Z)V
    .registers 2

    .line 470
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->setIsCollapsed(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$setIsImportantConversation$4(Landroid/graphics/drawable/GradientDrawable;IILandroid/animation/ValueAnimator;)V
    .registers 5

    .line 407
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    .line 408
    invoke-virtual {p1, p4, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 409
    mul-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    .line 410
    invoke-virtual {p1, p3, p3}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 411
    iget-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {p1}, Lcom/android/internal/widget/CachingIconView;->invalidate()V

    .line 412
    return-void
.end method

.method private blacklist loadConversationHeaderData(ZLjava/lang/CharSequence;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Ljava/util/List;Landroid/app/Person;Ljava/util/List;I)Lcom/android/internal/widget/ConversationHeaderData;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/CharSequence;",
            "Landroid/graphics/drawable/Icon;",
            "Landroid/graphics/drawable/Icon;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;",
            "Landroid/app/Person;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;>;I)",
            "Lcom/android/internal/widget/ConversationHeaderData;"
        }
    .end annotation

    .line 1286
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move/from16 v2, p8

    .line 1287
    nop

    .line 1288
    move-object/from16 v3, p6

    invoke-direct {v0, v3}, Lcom/android/internal/widget/ConversationLayout;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1289
    const/4 v5, 0x1

    const-string v6, ""

    if-eqz p1, :cond_5d

    .line 1290
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v5

    :goto_17
    if-ltz v7, :cond_5d

    .line 1291
    move-object/from16 v8, p5

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/MessagingMessage;

    invoke-interface {v9}, Lcom/android/internal/widget/MessagingMessage;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v9

    .line 1292
    invoke-virtual {v9}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v9

    .line 1293
    invoke-direct {v0, v9}, Lcom/android/internal/widget/ConversationLayout;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 1294
    if-eqz v9, :cond_31

    if-ne v10, v4, :cond_33

    :cond_31
    if-nez v7, :cond_5a

    .line 1295
    :cond_33
    if-eqz p2, :cond_3f

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3c

    goto :goto_3f

    :cond_3c
    move-object/from16 v7, p2

    goto :goto_47

    .line 1296
    :cond_3f
    :goto_3f
    if-eqz v9, :cond_46

    invoke-virtual {v9}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_47

    :cond_46
    move-object v7, v6

    .line 1298
    :goto_47
    if-nez p3, :cond_57

    .line 1299
    if-eqz v9, :cond_50

    invoke-virtual {v9}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v8

    goto :goto_56

    .line 1300
    :cond_50
    iget-object v8, v0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    invoke-virtual {v8, v7, v6, v2}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v8

    :goto_56
    goto :goto_61

    .line 1298
    :cond_57
    move-object/from16 v8, p3

    goto :goto_61

    .line 1290
    :cond_5a
    add-int/lit8 v7, v7, -0x1

    goto :goto_17

    .line 1307
    :cond_5d
    move-object/from16 v7, p2

    move-object/from16 v8, p3

    :goto_61
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->cleanUpSpansAndNewLines()Z

    move-result v9

    if-eqz v9, :cond_6d

    if-eqz v7, :cond_6d

    .line 1309
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1312
    :cond_6d
    if-nez v8, :cond_71

    .line 1313
    move-object/from16 v8, p4

    .line 1316
    :cond_71
    if-nez p1, :cond_16b

    if-eqz v8, :cond_77

    goto/16 :goto_16b

    .line 1323
    :cond_77
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1324
    const/4 v9, 0x0

    move v10, v9

    :goto_7e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_b2

    .line 1325
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1326
    move v12, v9

    :goto_8a
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_ac

    .line 1327
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/MessagingMessage;

    invoke-interface {v13}, Lcom/android/internal/widget/MessagingMessage;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1326
    add-int/lit8 v12, v12, 0x1

    goto :goto_8a

    .line 1329
    :cond_ac
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1324
    add-int/lit8 v10, v10, 0x1

    goto :goto_7e

    .line 1332
    :cond_b2
    iget-object v10, v0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 1333
    invoke-virtual {v10, v8}, Lcom/android/internal/widget/PeopleHelper;->mapUniqueNamesToPrefixWithGroupList(Ljava/util/List;)Lcom/android/internal/widget/PeopleHelper$NameToPrefixMap;

    move-result-object v8

    .line 1335
    nop

    .line 1336
    nop

    .line 1338
    nop

    .line 1340
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v5

    const/4 v11, 0x0

    move-object v12, v11

    move-object v13, v12

    :goto_c3
    if-ltz v10, :cond_148

    .line 1341
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/widget/MessagingMessage;

    invoke-interface {v14}, Lcom/android/internal/widget/MessagingMessage;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v14

    .line 1343
    invoke-virtual {v14}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v15

    if-eqz v15, :cond_e0

    invoke-virtual {v14}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v14

    goto :goto_e1

    :cond_e0
    move-object v14, v3

    .line 1344
    :goto_e1
    invoke-direct {v0, v14}, Lcom/android/internal/widget/ConversationLayout;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v15

    .line 1345
    if-eq v15, v4, :cond_ea

    move/from16 v16, v5

    goto :goto_ec

    :cond_ea
    move/from16 v16, v9

    .line 1346
    :goto_ec
    if-eq v15, v12, :cond_f1

    move/from16 v17, v5

    goto :goto_f3

    :cond_f1
    move/from16 v17, v9

    .line 1348
    :goto_f3
    if-eqz v16, :cond_f7

    if-nez v17, :cond_fb

    :cond_f7
    if-nez v10, :cond_144

    if-nez v12, :cond_144

    .line 1349
    :cond_fb
    if-nez v13, :cond_122

    .line 1350
    invoke-virtual {v14}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v12

    if-eqz v12, :cond_109

    .line 1351
    invoke-virtual {v14}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v12

    move-object v13, v12

    goto :goto_120

    .line 1354
    :cond_109
    invoke-virtual {v14}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v12

    if-eqz v12, :cond_114

    invoke-virtual {v14}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v12

    goto :goto_115

    :cond_114
    move-object v12, v6

    .line 1355
    :goto_115
    iget-object v13, v0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 1356
    invoke-virtual {v8, v12}, Lcom/android/internal/widget/PeopleHelper$NameToPrefixMap;->getPrefix(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 1355
    invoke-virtual {v13, v12, v14, v2}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v12

    move-object v13, v12

    .line 1359
    :goto_120
    move-object v12, v15

    goto :goto_144

    .line 1361
    :cond_122
    invoke-virtual {v14}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_12d

    .line 1362
    invoke-virtual {v14}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v11

    goto :goto_148

    .line 1365
    :cond_12d
    invoke-virtual {v14}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_138

    invoke-virtual {v14}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_139

    :cond_138
    move-object v1, v6

    .line 1366
    :goto_139
    iget-object v3, v0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 1367
    invoke-virtual {v8, v1}, Lcom/android/internal/widget/PeopleHelper$NameToPrefixMap;->getPrefix(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1366
    invoke-virtual {v3, v1, v4, v2}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v11

    .line 1370
    goto :goto_148

    .line 1340
    :cond_144
    :goto_144
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_c3

    .line 1375
    :cond_148
    :goto_148
    if-nez v13, :cond_150

    .line 1376
    iget-object v1, v0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    invoke-virtual {v1, v6, v6, v2}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v13

    .line 1380
    :cond_150
    if-nez v11, :cond_158

    .line 1381
    iget-object v1, v0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    invoke-virtual {v1, v6, v6, v2}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v11

    .line 1385
    :cond_158
    new-instance v1, Lcom/android/internal/widget/ConversationHeaderData;

    new-instance v2, Lcom/android/internal/widget/ConversationAvatarData$GroupConversationAvatarData;

    .line 1387
    invoke-direct {v0, v13}, Lcom/android/internal/widget/ConversationLayout;->resolveAvatarImageForFacePile(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1388
    invoke-direct {v0, v11}, Lcom/android/internal/widget/ConversationLayout;->resolveAvatarImageForFacePile(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/android/internal/widget/ConversationAvatarData$GroupConversationAvatarData;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-direct {v1, v7, v2}, Lcom/android/internal/widget/ConversationHeaderData;-><init>(Ljava/lang/CharSequence;Lcom/android/internal/widget/ConversationAvatarData;)V

    .line 1385
    return-object v1

    .line 1317
    :cond_16b
    :goto_16b
    new-instance v1, Lcom/android/internal/widget/ConversationHeaderData;

    new-instance v2, Lcom/android/internal/widget/ConversationAvatarData$OneToOneConversationAvatarData;

    .line 1320
    invoke-direct {v0, v8}, Lcom/android/internal/widget/ConversationLayout;->resolveAvatarImageForOneToOne(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/android/internal/widget/ConversationAvatarData$OneToOneConversationAvatarData;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {v1, v7, v2}, Lcom/android/internal/widget/ConversationHeaderData;-><init>(Ljava/lang/CharSequence;Lcom/android/internal/widget/ConversationAvatarData;)V

    .line 1317
    return-object v1
.end method

.method private blacklist loadDrawableFromIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1425
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    .line 1426
    :catch_9
    move-exception p1

    .line 1427
    const/4 p1, 0x0

    return-object p1
.end method

.method private blacklist onAppNameVisibilityChanged()V
    .registers 3

    .line 1661
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1662
    return-void

    .line 1665
    :cond_7
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAppName:Lcom/android/internal/widget/ObservableTextView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ObservableTextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 1666
    :goto_14
    iget-boolean v1, p0, Lcom/android/internal/widget/ConversationLayout;->mAppNameGone:Z

    if-eq v0, v1, :cond_1d

    .line 1667
    iput-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAppNameGone:Z

    .line 1668
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateAppNameDividerVisibility()V

    .line 1670
    :cond_1d
    return-void
.end method

.method private blacklist parseMessagingData(Landroid/os/Bundle;ZZ)Lcom/android/internal/widget/MessagingData;
    .registers 20

    .line 488
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "android.messages"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 489
    nop

    .line 490
    invoke-static {v3}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v3

    .line 491
    const-string v4, "android.messages.historic"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v4

    .line 492
    nop

    .line 493
    invoke-static {v4}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v4

    .line 496
    const-string v5, "android.messagingUser"

    const-class v6, Landroid/app/Person;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroid/app/Person;

    .line 498
    const-string v5, "android.remoteInputHistoryItems"

    const-class v7, Landroid/app/RemoteInputHistoryItem;

    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/app/RemoteInputHistoryItem;

    .line 500
    invoke-direct {v0, v3, v5}, Lcom/android/internal/widget/ConversationLayout;->addRemoteInputHistoryToMessages(Ljava/util/List;[Landroid/app/RemoteInputHistoryItem;)V

    .line 502
    nop

    .line 503
    const-string v5, "android.remoteInputSpinner"

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 504
    const-string v5, "android.conversationUnreadMessageCount"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 507
    const-string v5, "android.summarization"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/widget/ConversationLayout;->mSummarizedContent:Ljava/lang/CharSequence;

    .line 508
    invoke-direct {v0}, Lcom/android/internal/widget/ConversationLayout;->isShowingSummarization()Z

    move-result v1

    const/4 v5, 0x1

    if-eqz v1, :cond_67

    .line 509
    new-instance v1, Landroid/app/Notification$MessagingStyle$Message;

    iget-object v3, v0, Lcom/android/internal/widget/ConversationLayout;->mSummarizedContent:Ljava/lang/CharSequence;

    const-wide/16 v11, 0x0

    const-string v8, ""

    invoke-direct {v1, v3, v11, v12, v8}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)V

    .line 511
    nop

    .line 512
    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1, v7, v2, v5}, Lcom/android/internal/widget/ConversationLayout;->createMessages(Ljava/util/List;ZZZ)Ljava/util/List;

    move-result-object v1

    .line 513
    move-object v11, v1

    goto :goto_6d

    .line 514
    :cond_67
    nop

    .line 515
    invoke-direct {v0, v3, v7, v2, v7}, Lcom/android/internal/widget/ConversationLayout;->createMessages(Ljava/util/List;ZZZ)Ljava/util/List;

    move-result-object v1

    move-object v11, v1

    .line 517
    :goto_6d
    invoke-direct {v0, v4, v5, v2, v7}, Lcom/android/internal/widget/ConversationLayout;->createMessages(Ljava/util/List;ZZZ)Ljava/util/List;

    move-result-object v1

    .line 521
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 522
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 524
    move-object v3, v6

    move-object v2, v11

    move-object v4, v12

    move-object v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/ConversationLayout;->findGroups(Ljava/util/List;Ljava/util/List;Landroid/app/Person;Ljava/util/List;Ljava/util/List;)V

    .line 528
    move v11, v9

    move v9, v10

    move-object v10, v1

    if-eqz p3, :cond_9c

    .line 529
    iget-boolean v1, v0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    move-object v5, v2

    iget-object v2, v0, Lcom/android/internal/widget/ConversationLayout;->mConversationTitle:Ljava/lang/CharSequence;

    move-object v6, v3

    iget-object v3, v0, Lcom/android/internal/widget/ConversationLayout;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    iget-object v4, v0, Lcom/android/internal/widget/ConversationLayout;->mLargeIcon:Landroid/graphics/drawable/Icon;

    iget v8, v0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    move-object v7, v12

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/widget/ConversationLayout;->loadConversationHeaderData(ZLjava/lang/CharSequence;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Ljava/util/List;Landroid/app/Person;Ljava/util/List;I)Lcom/android/internal/widget/ConversationHeaderData;

    move-result-object v1

    move-object v2, v5

    move-object v3, v6

    move-object v14, v1

    goto :goto_9e

    .line 534
    :cond_9c
    const/4 v1, 0x0

    move-object v14, v1

    .line 537
    :goto_9e
    new-instance v6, Lcom/android/internal/widget/MessagingData;

    iget-object v15, v0, Lcom/android/internal/widget/ConversationLayout;->mSummarizedContent:Ljava/lang/CharSequence;

    move-object v7, v3

    move v8, v11

    move-object v11, v2

    invoke-direct/range {v6 .. v15}, Lcom/android/internal/widget/MessagingData;-><init>(Landroid/app/Person;ZILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/internal/widget/ConversationHeaderData;Ljava/lang/CharSequence;)V

    return-object v6
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

    .line 1052
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1053
    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_4b

    .line 1054
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MessagingGroup;

    .line 1055
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_48

    .line 1056
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getMessages()Ljava/util/List;

    move-result-object v4

    .line 1057
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->isShown()Z

    move-result v5

    .line 1058
    iget-object v6, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v6, v3}, Lcom/android/internal/widget/MessagingLinearLayout;->removeView(Landroid/view/View;)V

    .line 1059
    if-eqz v5, :cond_39

    invoke-static {v3}, Lcom/android/internal/widget/MessagingLinearLayout;->isGone(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_39

    .line 1060
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v5, v3, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->addTransientView(Landroid/view/View;I)V

    .line 1061
    new-instance v5, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda9;

    invoke-direct {v5, p0, v3}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/widget/ConversationLayout;Lcom/android/internal/widget/MessagingGroup;)V

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/MessagingGroup;->removeGroupAnimated(Ljava/lang/Runnable;)V

    goto :goto_3e

    .line 1068
    :cond_39
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mToRecycle:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1070
    :goto_3e
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1071
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1053
    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1074
    :cond_4b
    return-void
.end method

.method private blacklist resolveAvatarImageForFacePile(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1419
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->loadDrawableFromIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private blacklist resolveAvatarImageForOneToOne(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1396
    nop

    .line 1397
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->tryLoadingSizeRestrictedIconForOneToOne(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1398
    if-eqz v0, :cond_8

    .line 1399
    return-object v0

    .line 1402
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->loadDrawableFromIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private blacklist setConversationAvatarAndNameFromData(Lcom/android/internal/widget/ConversationHeaderData;)V
    .registers 7

    .line 676
    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationHeaderData:Lcom/android/internal/widget/ConversationHeaderData;

    .line 679
    nop

    .line 680
    invoke-virtual {p1}, Lcom/android/internal/widget/ConversationHeaderData;->getConversationAvatar()Lcom/android/internal/widget/ConversationAvatarData;

    move-result-object v0

    .line 681
    instance-of v1, v0, Lcom/android/internal/widget/ConversationAvatarData$OneToOneConversationAvatarData;

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    .line 682
    check-cast v0, Lcom/android/internal/widget/ConversationAvatarData$OneToOneConversationAvatarData;

    .line 684
    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_15

    .line 686
    :cond_12
    nop

    .line 687
    check-cast v0, Lcom/android/internal/widget/ConversationAvatarData$GroupConversationAvatarData;

    .line 690
    :goto_15
    const/4 v1, 0x0

    const/16 v3, 0x8

    if-eqz v2, :cond_2c

    .line 691
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/CachingIconView;->setVisibility(I)V

    .line 692
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 693
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    iget-object v1, v2, Lcom/android/internal/widget/ConversationAvatarData$OneToOneConversationAvatarData;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/CachingIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_42

    .line 695
    :cond_2c
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/CachingIconView;->setVisibility(I)V

    .line 697
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 699
    const v1, 0x10202aa

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    .line 700
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->bindFacePile(Lcom/android/internal/widget/ConversationAvatarData$GroupConversationAvatarData;)V

    .line 702
    :goto_42
    invoke-virtual {p1}, Lcom/android/internal/widget/ConversationHeaderData;->getConversationText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 703
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 704
    iget-boolean p1, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    if-eqz p1, :cond_53

    iget-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mFallbackChatName:Ljava/lang/CharSequence;

    goto :goto_55

    :cond_53
    iget-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mFallbackGroupChatName:Ljava/lang/CharSequence;

    .line 706
    :cond_55
    :goto_55
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 709
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/widget/PeopleHelper;->maybeHideFirstSenderName(Ljava/util/List;ZLjava/lang/CharSequence;)V

    .line 710
    return-void
.end method

.method private blacklist setUser(Landroid/app/Person;)V
    .registers 3

    .line 1176
    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mUser:Landroid/app/Person;

    .line 1177
    iget-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mUser:Landroid/app/Person;

    invoke-virtual {p1}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    if-nez p1, :cond_2a

    .line 1178
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x108070a

    invoke-static {p1, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p1

    .line 1180
    iget v0, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->setTint(I)Landroid/graphics/drawable/Icon;

    .line 1181
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mUser:Landroid/app/Person;

    invoke-virtual {v0}, Landroid/app/Person;->toBuilder()Landroid/app/Person$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Person$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Person$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mUser:Landroid/app/Person;

    .line 1183
    :cond_2a
    return-void
.end method

.method private static blacklist transparentBadgeRingEnabled()Z
    .registers 1

    .line 1774
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/widget/flags/Flags;->notificationTransparentBadgeRing()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private blacklist tryLoadingSizeRestrictedIconForOneToOne(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1408
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/CachingIconView;->loadSizeRestrictedIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 1409
    :catch_7
    move-exception p1

    .line 1410
    const/4 p1, 0x0

    return-object p1
.end method

.method private blacklist updateActionListPadding()V
    .registers 3

    .line 713
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mActions:Lcom/android/internal/widget/NotificationActionListLayout;

    if-eqz v0, :cond_12

    .line 714
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mActions:Lcom/android/internal/widget/NotificationActionListLayout;

    const v1, 0x105008f

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/NotificationActionListLayout;->setCollapsibleIndentDimen(I)V

    .line 716
    :cond_12
    return-void
.end method

.method private blacklist updateAppName()V
    .registers 3

    .line 906
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 907
    return-void

    .line 910
    :cond_7
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAppName:Lcom/android/internal/widget/ObservableTextView;

    iget-boolean v1, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-eqz v1, :cond_10

    const/16 v1, 0x8

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ObservableTextView;->setVisibility(I)V

    .line 911
    return-void
.end method

.method private blacklist updateAppNameDividerVisibility()V
    .registers 3

    .line 1673
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1674
    return-void

    .line 1677
    :cond_7
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAppNameDivider:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/internal/widget/ConversationLayout;->mAppNameGone:Z

    if-eqz v1, :cond_10

    const/16 v1, 0x8

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1678
    return-void
.end method

.method private blacklist updateContentEndPaddings()V
    .registers 7

    .line 1629
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1630
    return-void

    .line 1637
    :cond_7
    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 1638
    nop

    .line 1639
    iget v0, p0, Lcom/android/internal/widget/ConversationLayout;->mContentMarginEnd:I

    goto :goto_1b

    .line 1640
    :cond_10
    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-eqz v0, :cond_17

    .line 1641
    nop

    .line 1642
    move v0, v1

    goto :goto_1b

    .line 1644
    :cond_17
    iget v1, p0, Lcom/android/internal/widget/ConversationLayout;->mNotificationHeaderExpandedPadding:I

    .line 1645
    iget v0, p0, Lcom/android/internal/widget/ConversationLayout;->mContentMarginEnd:I

    .line 1647
    :goto_1b
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationHeader:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationHeader:Landroid/view/View;

    .line 1648
    invoke-virtual {v3}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationHeader:Landroid/view/View;

    .line 1649
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationHeader:Landroid/view/View;

    .line 1651
    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    .line 1647
    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 1653
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mContentContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mContentContainer:Landroid/view/View;

    .line 1654
    invoke-virtual {v2}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mContentContainer:Landroid/view/View;

    .line 1655
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mContentContainer:Landroid/view/View;

    .line 1657
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 1653
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 1658
    return-void
.end method

.method private blacklist updateConversationLayout(Lcom/android/internal/widget/MessagingData;)V
    .registers 12

    .line 656
    nop

    .line 657
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getConversationHeaderData()Lcom/android/internal/widget/ConversationHeaderData;

    move-result-object v0

    .line 658
    if-nez v0, :cond_1f

    .line 659
    iget-boolean v2, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationTitle:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mLargeIcon:Landroid/graphics/drawable/Icon;

    iget-object v6, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    iget-object v7, p0, Lcom/android/internal/widget/ConversationLayout;->mUser:Landroid/app/Person;

    .line 661
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getGroups()Ljava/util/List;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    .line 659
    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/widget/ConversationLayout;->loadConversationHeaderData(ZLjava/lang/CharSequence;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Ljava/util/List;Landroid/app/Person;Ljava/util/List;I)Lcom/android/internal/widget/ConversationHeaderData;

    move-result-object v0

    goto :goto_20

    .line 658
    :cond_1f
    move-object v1, p0

    .line 664
    :goto_20
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->setConversationAvatarAndNameFromData(Lcom/android/internal/widget/ConversationHeaderData;)V

    .line 666
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateAppName()V

    .line 667
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateIconPositionAndSize()V

    .line 668
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateImageMessages()V

    .line 669
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updatePaddingsBasedOnContentAvailability()V

    .line 670
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateActionListPadding()V

    .line 671
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateAppNameDividerVisibility()V

    .line 672
    return-void
.end method

.method private blacklist updateExpandButton()V
    .registers 5

    .line 1593
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1594
    return-void

    .line 1599
    :cond_7
    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-eqz v0, :cond_11

    .line 1600
    nop

    .line 1607
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonAndContentContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x11

    goto :goto_16

    .line 1609
    :cond_11
    nop

    .line 1610
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonContainerA11yContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x31

    .line 1612
    :goto_16
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    iget-boolean v3, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/NotificationExpandButton;->setExpanded(Z)V

    .line 1616
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eq v0, v2, :cond_39

    .line 1617
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1618
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1622
    :cond_39
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    .line 1623
    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationExpandButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1624
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1625
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/NotificationExpandButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1626
    return-void
.end method

.method private blacklist updateHistoricMessageVisibility()V
    .registers 11

    .line 1477
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1478
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    const/16 v3, 0x8

    if-ge v2, v0, :cond_1f

    .line 1479
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/MessagingMessage;

    .line 1480
    iget-boolean v5, p0, Lcom/android/internal/widget/ConversationLayout;->mShowHistoricMessages:Z

    if-eqz v5, :cond_19

    move v3, v1

    :cond_19
    invoke-interface {v4, v3}, Lcom/android/internal/widget/MessagingMessage;->setVisibility(I)V

    .line 1478
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1482
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1483
    move v2, v1

    :goto_26
    if-ge v2, v0, :cond_68

    .line 1484
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/MessagingGroup;

    .line 1485
    nop

    .line 1486
    invoke-virtual {v4}, Lcom/android/internal/widget/MessagingGroup;->getMessages()Ljava/util/List;

    move-result-object v5

    .line 1487
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 1488
    move v7, v1

    move v8, v7

    :goto_3b
    if-ge v7, v6, :cond_4e

    .line 1489
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/MessagingMessage;

    .line 1490
    invoke-interface {v9}, Lcom/android/internal/widget/MessagingMessage;->getVisibility()I

    move-result v9

    if-eq v9, v3, :cond_4b

    .line 1491
    add-int/lit8 v8, v8, 0x1

    .line 1488
    :cond_4b
    add-int/lit8 v7, v7, 0x1

    goto :goto_3b

    .line 1494
    :cond_4e
    if-lez v8, :cond_5a

    invoke-virtual {v4}, Lcom/android/internal/widget/MessagingGroup;->getVisibility()I

    move-result v5

    if-ne v5, v3, :cond_5a

    .line 1495
    invoke-virtual {v4, v1}, Lcom/android/internal/widget/MessagingGroup;->setVisibility(I)V

    goto :goto_65

    .line 1496
    :cond_5a
    if-nez v8, :cond_65

    invoke-virtual {v4}, Lcom/android/internal/widget/MessagingGroup;->getVisibility()I

    move-result v5

    if-eq v5, v3, :cond_65

    .line 1497
    invoke-virtual {v4, v3}, Lcom/android/internal/widget/MessagingGroup;->setVisibility(I)V

    .line 1483
    :cond_65
    :goto_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 1500
    :cond_68
    return-void
.end method

.method private blacklist updateIconPositionAndSize()V
    .registers 4

    .line 921
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 923
    return-void

    .line 928
    :cond_7
    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    if-nez v0, :cond_20

    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-eqz v0, :cond_10

    goto :goto_20

    .line 932
    :cond_10
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1b

    .line 933
    iget v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandedGroupBadgeProtrusionFacePile:I

    goto :goto_1d

    .line 934
    :cond_1b
    iget v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandedGroupBadgeProtrusion:I

    .line 935
    :goto_1d
    iget v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationAvatarSizeExpanded:I

    goto :goto_24

    .line 929
    :cond_20
    :goto_20
    iget v0, p0, Lcom/android/internal/widget/ConversationLayout;->mBadgeProtrusion:I

    .line 930
    iget v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationAvatarSize:I

    .line 938
    :goto_24
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v2}, Lcom/android/internal/widget/CachingIconView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_43

    .line 939
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v2}, Lcom/android/internal/widget/CachingIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 940
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 941
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 942
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 943
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 944
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 945
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/CachingIconView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 948
    :cond_43
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5e

    .line 949
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 950
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 951
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 952
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 953
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 955
    :cond_5e
    return-void
.end method

.method private blacklist updateImageMessages()V
    .registers 6

    .line 719
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    if-nez v0, :cond_5

    .line 720
    return-void

    .line 722
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->getNewImageMessage()Landroid/view/View;

    move-result-object v0

    .line 724
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 725
    if-eqz v0, :cond_14

    const/4 v3, 0x1

    goto :goto_15

    :cond_14
    move v3, v2

    .line 726
    :goto_15
    if-eq v1, v0, :cond_23

    .line 727
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v4, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->removeView(Landroid/view/View;)V

    .line 728
    if-eqz v3, :cond_23

    .line 729
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->addView(Landroid/view/View;)V

    .line 732
    :cond_23
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    const/16 v1, 0x8

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v2, v1

    :goto_2b
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->setVisibility(I)V

    .line 734
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mRightIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mRightIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 737
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_4d

    if-eqz v3, :cond_4d

    .line 738
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mRightIconView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 739
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mRightIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 742
    :cond_4d
    if-eqz v3, :cond_52

    .line 743
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->adjustSpacingForImage()V

    .line 745
    :cond_52
    return-void
.end method

.method private blacklist updateMarginEnd(Landroid/view/ViewGroup;I)V
    .registers 5

    .line 777
    if-nez p1, :cond_a

    .line 778
    const-string p1, "ConversationLayout"

    const-string p2, "The view passed to updateMarginEnd should not be null"

    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    return-void

    .line 782
    :cond_a
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 783
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v1

    if-eq v1, p2, :cond_1c

    .line 784
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 785
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 787
    :cond_1c
    return-void
.end method

.method private blacklist updatePaddingsBasedOnContentAvailability()V
    .registers 7

    .line 958
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 960
    return-void

    .line 964
    :cond_7
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    .line 965
    iget-boolean v1, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    if-eqz v1, :cond_10

    iget v1, p0, Lcom/android/internal/widget/ConversationLayout;->mMessageSpacingStandard:I

    goto :goto_12

    :cond_10
    iget v1, p0, Lcom/android/internal/widget/ConversationLayout;->mMessageSpacingGroup:I

    .line 964
    :goto_12
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->setSpacing(I)V

    .line 967
    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    if-nez v0, :cond_21

    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-eqz v0, :cond_1e

    goto :goto_21

    .line 971
    :cond_1e
    iget v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandedGroupMessagePadding:I

    goto :goto_22

    .line 968
    :cond_21
    :goto_21
    const/4 v0, 0x0

    .line 973
    :goto_22
    iget-boolean v1, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    if-nez v1, :cond_2e

    iget-boolean v1, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-eqz v1, :cond_2b

    goto :goto_2e

    .line 975
    :cond_2b
    iget v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconTopPaddingExpandedGroup:I

    goto :goto_30

    .line 974
    :cond_2e
    :goto_2e
    iget v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconTopPadding:I

    .line 977
    :goto_30
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconContainer:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconContainer:Landroid/view/View;

    .line 978
    invoke-virtual {v3}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconContainer:Landroid/view/View;

    .line 980
    invoke-virtual {v4}, Landroid/view/View;->getPaddingEnd()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconContainer:Landroid/view/View;

    .line 981
    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    .line 977
    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 983
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    .line 984
    invoke-virtual {v2}, Lcom/android/internal/widget/MessagingLinearLayout;->getPaddingStart()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    .line 986
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingLinearLayout;->getPaddingEnd()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    .line 987
    invoke-virtual {v4}, Lcom/android/internal/widget/MessagingLinearLayout;->getPaddingBottom()I

    move-result v4

    .line 983
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/internal/widget/MessagingLinearLayout;->setPaddingRelative(IIII)V

    .line 988
    return-void
.end method

.method private blacklist updateTitleAndNamesDisplay()V
    .registers 9

    .line 1078
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PeopleHelper;->mapUniqueNamesToPrefix(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 1081
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1082
    const/4 v2, 0x0

    move v3, v2

    :goto_f
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_59

    .line 1084
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/MessagingGroup;

    .line 1085
    invoke-virtual {v4}, Lcom/android/internal/widget/MessagingGroup;->getSender()Landroid/app/Person;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/widget/ConversationLayout;->mUser:Landroid/app/Person;

    if-ne v5, v6, :cond_29

    const/4 v5, 0x1

    goto :goto_2a

    :cond_29
    move v5, v2

    .line 1086
    :goto_2a
    invoke-virtual {v4}, Lcom/android/internal/widget/MessagingGroup;->getSenderName()Ljava/lang/CharSequence;

    move-result-object v6

    .line 1087
    invoke-virtual {v4}, Lcom/android/internal/widget/MessagingGroup;->needsGeneratedAvatar()Z

    move-result v7

    if-eqz v7, :cond_56

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_56

    iget-boolean v7, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    if-eqz v7, :cond_45

    iget-object v7, p0, Lcom/android/internal/widget/ConversationLayout;->mAvatarReplacement:Landroid/graphics/drawable/Icon;

    if-eqz v7, :cond_45

    if-nez v5, :cond_45

    .line 1089
    goto :goto_56

    .line 1091
    :cond_45
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1092
    iget v7, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    invoke-virtual {v4, v6, v5, v7}, Lcom/android/internal/widget/MessagingGroup;->getAvatarSymbolIfMatching(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    .line 1094
    if-eqz v4, :cond_56

    .line 1095
    invoke-virtual {v1, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    :cond_56
    :goto_56
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1099
    :cond_59
    nop

    :goto_5a
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_b8

    .line 1101
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MessagingGroup;

    .line 1102
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSenderName()Ljava/lang/CharSequence;

    move-result-object v4

    .line 1103
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->needsGeneratedAvatar()Z

    move-result v5

    if-eqz v5, :cond_b5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 1104
    goto :goto_b5

    .line 1106
    :cond_7b
    iget-boolean v5, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    if-eqz v5, :cond_91

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mAvatarReplacement:Landroid/graphics/drawable/Icon;

    if-eqz v5, :cond_91

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSender()Landroid/app/Person;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/widget/ConversationLayout;->mUser:Landroid/app/Person;

    if-eq v5, v6, :cond_91

    .line 1107
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mAvatarReplacement:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/MessagingGroup;->setAvatar(Landroid/graphics/drawable/Icon;)V

    goto :goto_b5

    .line 1109
    :cond_91
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Icon;

    .line 1110
    if-nez v5, :cond_aa

    .line 1111
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 1112
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget v7, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    .line 1111
    invoke-virtual {v5, v4, v6, v7}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    .line 1113
    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    :cond_aa
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget v7, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    invoke-virtual {v3, v5, v4, v6, v7}, Lcom/android/internal/widget/MessagingGroup;->setCreatedAvatar(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 1099
    :cond_b5
    :goto_b5
    add-int/lit8 v2, v2, 0x1

    goto :goto_5a

    .line 1119
    :cond_b8
    return-void
.end method

.method private blacklist updateViewsForSummarization()V
    .registers 3

    .line 1699
    nop

    .line 1700
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->isShowingSummarization()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1701
    const/4 v0, 0x3

    goto :goto_1a

    .line 1702
    :cond_9
    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-eqz v0, :cond_17

    .line 1703
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->nmCollapsedLines()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1704
    const/4 v0, 0x2

    goto :goto_1a

    .line 1706
    :cond_15
    const/4 v0, 0x1

    goto :goto_1a

    .line 1702
    :cond_17
    const v0, 0x7fffffff

    .line 1709
    :goto_1a
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->setMaxDisplayedLines(I)V

    .line 1710
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->isShowingSummarization()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1711
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1712
    if-eqz v0, :cond_38

    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_38

    .line 1713
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1714
    iget v1, p0, Lcom/android/internal/widget/ConversationLayout;->mSummarizationStartMargin:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 1718
    :cond_38
    return-void
.end method


# virtual methods
.method public blacklist bindFacePile(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .registers 14

    .line 804
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->applyNotificationBackgroundColor(Landroid/widget/ImageView;)V

    .line 806
    nop

    .line 807
    nop

    .line 808
    nop

    .line 809
    iget-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mUser:Landroid/app/Person;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 810
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    :goto_17
    if-ltz v0, :cond_5f

    .line 811
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/MessagingGroup;

    .line 812
    invoke-virtual {v5}, Lcom/android/internal/widget/MessagingGroup;->getSender()Landroid/app/Person;

    move-result-object v6

    .line 813
    const/4 v7, 0x0

    if-eqz v6, :cond_34

    .line 814
    invoke-direct {p0, v6}, Lcom/android/internal/widget/ConversationLayout;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {p1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_34

    move v8, v1

    goto :goto_35

    :cond_34
    move v8, v7

    .line 815
    :goto_35
    if-eqz v6, :cond_43

    .line 816
    invoke-direct {p0, v6}, Lcom/android/internal/widget/ConversationLayout;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_43

    move v7, v1

    goto :goto_44

    :cond_43
    nop

    .line 817
    :goto_44
    if-eqz v8, :cond_48

    if-nez v7, :cond_4c

    :cond_48
    if-nez v0, :cond_5c

    if-nez v3, :cond_5c

    .line 819
    :cond_4c
    if-nez v4, :cond_57

    .line 820
    invoke-virtual {v5}, Lcom/android/internal/widget/MessagingGroup;->getAvatarIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    .line 821
    invoke-direct {p0, v6}, Lcom/android/internal/widget/ConversationLayout;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_5c

    .line 823
    :cond_57
    invoke-virtual {v5}, Lcom/android/internal/widget/MessagingGroup;->getAvatarIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    .line 824
    goto :goto_5f

    .line 810
    :cond_5c
    :goto_5c
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 828
    :cond_5f
    :goto_5f
    const-string p1, ""

    if-nez v4, :cond_6d

    .line 829
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    const-string v1, " "

    iget v3, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    invoke-virtual {v0, v1, p1, v3}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    .line 831
    :cond_6d
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 832
    if-nez v2, :cond_7a

    .line 833
    iget-object p2, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget v0, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    invoke-virtual {p2, p1, p1, v0}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    .line 835
    :cond_7a
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 836
    return-void
.end method

.method public blacklist bindFacePileWithDrawable(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/android/internal/widget/ConversationAvatarData$GroupConversationAvatarData;)V
    .registers 5

    .line 900
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->applyNotificationBackgroundColor(Landroid/widget/ImageView;)V

    .line 901
    iget-object p1, p4, Lcom/android/internal/widget/ConversationAvatarData$GroupConversationAvatarData;->mLastIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 902
    iget-object p1, p4, Lcom/android/internal/widget/ConversationAvatarData$GroupConversationAvatarData;->mSecondLastIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 903
    return-void
.end method

.method public blacklist getConversationHeaderData()Lcom/android/internal/widget/ConversationHeaderData;
    .registers 2

    .line 1770
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationHeaderData:Lcom/android/internal/widget/ConversationHeaderData;

    return-object v0
.end method

.method public blacklist getConversationIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 1765
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public blacklist getConversationSenderName()Ljava/lang/CharSequence;
    .registers 4

    .line 1727
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1728
    const/4 v0, 0x0

    return-object v0

    .line 1730
    :cond_a
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingGroup;

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingGroup;->getSenderName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1731
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104033b

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getConversationText()Ljava/lang/CharSequence;
    .registers 6

    .line 1740
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mSummarizedContent:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    .line 1741
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mSummarizedContent:Ljava/lang/CharSequence;

    return-object v0

    .line 1743
    :cond_7
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 1744
    return-object v1

    .line 1746
    :cond_11
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingMessage;

    .line 1747
    invoke-interface {v0}, Lcom/android/internal/widget/MessagingMessage;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v2

    if-nez v2, :cond_28

    goto :goto_30

    .line 1748
    :cond_28
    invoke-interface {v0}, Lcom/android/internal/widget/MessagingMessage;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1749
    :goto_30
    if-nez v1, :cond_58

    instance-of v0, v0, Lcom/android/internal/widget/MessagingImageMessage;

    if-eqz v0, :cond_58

    .line 1750
    nop

    .line 1751
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104033a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1752
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1753
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 1756
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v2

    .line 1753
    const/4 v3, 0x0

    const/16 v4, 0x11

    invoke-virtual {v1, v0, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1758
    return-object v1

    .line 1760
    :cond_58
    return-object v1
.end method

.method public blacklist getConversationTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 1044
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getImageMessageContainer()Landroid/view/ViewGroup;
    .registers 2

    .line 1585
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

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

    .line 1589
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getMessagingLinearLayout()Lcom/android/internal/widget/MessagingLinearLayout;
    .registers 2

    .line 1581
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    return-object v0
.end method

.method public blacklist isImportantConversation()Z
    .registers 2

    .line 448
    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mImportantConversation:Z

    return v0
.end method

.method public blacklist isOneToOne()Z
    .registers 2

    .line 1735
    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    return v0
.end method

.method protected whitelist onFinishInflate()V
    .registers 5

    .line 199
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 200
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PeopleHelper;->init(Landroid/content/Context;)V

    .line 201
    const v0, 0x1020442

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingLinearLayout;

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    .line 202
    const v0, 0x10201eb

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/NotificationActionListLayout;

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mActions:Lcom/android/internal/widget/NotificationActionListLayout;

    .line 203
    const v0, 0x10202b4

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingLinearLayout;

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    .line 204
    const v0, 0x10204da

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mRightIconView:Landroid/widget/ImageView;

    .line 207
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 208
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 209
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingClipRect:Landroid/graphics/Rect;

    .line 210
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->setMessagingClippingDisabled(Z)V

    .line 211
    const v0, 0x10202af

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/CachingIconView;

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    .line 212
    const v0, 0x10202b3

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconContainer:Landroid/view/View;

    .line 213
    const v0, 0x1020006

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/CachingIconView;

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mIcon:Lcom/android/internal/widget/CachingIconView;

    .line 214
    const v0, 0x10202fe

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    .line 215
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42400000    # 48.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMinTouchSize:F

    .line 216
    const v0, 0x10202b2

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/CachingIconView;

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

    .line 217
    const v0, 0x10202b0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadge:Landroid/view/View;

    .line 218
    const v0, 0x10202b1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/CachingIconView;

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    .line 219
    const v0, 0x10202aa

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    .line 221
    invoke-static {}, Lcom/android/internal/widget/ConversationLayout;->transparentBadgeRingEnabled()Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 222
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadge:Landroid/view/View;

    .line 223
    invoke-static {v1, v3}, Lcom/android/internal/widget/PeopleHelper;->getBadgeCutoutOutlineProvider(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewOutlineProvider;

    move-result-object v1

    .line 222
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/CachingIconView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 225
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadge:Landroid/view/View;

    .line 226
    invoke-static {v1, v3}, Lcom/android/internal/widget/PeopleHelper;->getBadgeCutoutOutlineProvider(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewOutlineProvider;

    move-result-object v1

    .line 225
    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 230
    :cond_d2
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_e9

    .line 233
    const v0, 0x10203b8

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 234
    if-eqz v0, :cond_e9

    .line 235
    const v1, 0x1080713

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 239
    :cond_e9
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mIcon:Lcom/android/internal/widget/CachingIconView;

    new-instance v1, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/ConversationLayout;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/CachingIconView;->setOnVisibilityChangedListener(Ljava/util/function/Consumer;)V

    .line 277
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mIcon:Lcom/android/internal/widget/CachingIconView;

    new-instance v1, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/widget/ConversationLayout;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/CachingIconView;->setOnForceHiddenChangedListener(Ljava/util/function/Consumer;)V

    .line 283
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    new-instance v1, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/widget/ConversationLayout;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/CachingIconView;->setOnForceHiddenChangedListener(Ljava/util/function/Consumer;)V

    .line 288
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_111

    .line 289
    const v0, 0x1020016

    goto :goto_114

    :cond_111
    const v0, 0x10202b5

    .line 288
    :goto_114
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationText:Landroid/widget/TextView;

    .line 290
    const v0, 0x10202f1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonContainer:Landroid/view/View;

    .line 291
    nop

    .line 292
    const v0, 0x10202ef

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonContainerA11yContainer:Landroid/view/ViewGroup;

    .line 293
    const v0, 0x10202ae

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationHeader:Landroid/view/View;

    .line 294
    const v0, 0x1020434

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mContentContainer:Landroid/view/View;

    .line 295
    const v0, 0x10202f0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonAndContentContainer:Landroid/view/ViewGroup;

    .line 296
    const v0, 0x10202ee

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/NotificationExpandButton;

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    .line 297
    const v0, 0x1020445

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/NotificationTopLineView;

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mTopLine:Landroid/view/NotificationTopLineView;

    .line 298
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessageSpacingStandard:I

    .line 300
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessageSpacingGroup:I

    .line 302
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105014b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ConversationLayout;->mNotificationHeaderExpandedPadding:I

    .line 304
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ConversationLayout;->mContentMarginEnd:I

    .line 306
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105013f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ConversationLayout;->mBadgeProtrusion:I

    .line 308
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105013d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationAvatarSize:I

    .line 310
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105013e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationAvatarSizeExpanded:I

    .line 312
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105014e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconTopPaddingExpandedGroup:I

    .line 314
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105014d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconTopPadding:I

    .line 316
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105019a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandedGroupMessagePadding:I

    .line 318
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050140

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandedGroupBadgeProtrusion:I

    .line 320
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050141

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandedGroupBadgeProtrusionFacePile:I

    .line 322
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050147

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ConversationLayout;->mFacePileAvatarSize:I

    .line 324
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050148

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ConversationLayout;->mFacePileAvatarSizeExpandedGroup:I

    .line 326
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050149

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ConversationLayout;->mFacePileProtectionWidth:I

    .line 328
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105014a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ConversationLayout;->mFacePileProtectionWidthExpanded:I

    .line 330
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104033d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mFallbackChatName:Ljava/lang/CharSequence;

    .line 332
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104033c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mFallbackGroupChatName:Ljava/lang/CharSequence;

    .line 336
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 338
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x105029a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 340
    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/ConversationLayout;->mSpacingForExpander:I

    .line 345
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050300

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 347
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10502a5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 349
    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/widget/ConversationLayout;->mSpacingForImage:I

    .line 351
    const v0, 0x1020217

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ObservableTextView;

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAppName:Lcom/android/internal/widget/ObservableTextView;

    .line 352
    const v0, 0x1020216

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAppNameDivider:Landroid/view/View;

    .line 353
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAppName:Lcom/android/internal/widget/ObservableTextView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ObservableTextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_29f

    const/4 v2, 0x1

    :cond_29f
    iput-boolean v2, p0, Lcom/android/internal/widget/ConversationLayout;->mAppNameGone:Z

    .line 354
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAppName:Lcom/android/internal/widget/ObservableTextView;

    new-instance v1, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/widget/ConversationLayout;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ObservableTextView;->setOnVisibilityChangedListener(Ljava/util/function/Consumer;)V

    .line 358
    const v0, 0x1020439

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationContentView:Landroid/widget/LinearLayout;

    .line 359
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105028d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ConversationLayout;->mSummarizationStartMargin:I

    .line 361
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 8

    .line 1533
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1534
    move-object p1, p0

    iget-object p2, p1, Lcom/android/internal/widget/ConversationLayout;->mAddedGroups:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_18

    .line 1535
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance p3, Lcom/android/internal/widget/ConversationLayout$2;

    invoke-direct {p3, p0}, Lcom/android/internal/widget/ConversationLayout$2;-><init>(Lcom/android/internal/widget/ConversationLayout;)V

    invoke-virtual {p2, p3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1553
    :cond_18
    iget-object p2, p1, Lcom/android/internal/widget/ConversationLayout;->mTouchDelegate:Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    invoke-virtual {p2}, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;->clear()V

    .line 1554
    iget-object p2, p1, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_8f

    .line 1555
    iget p2, p1, Lcom/android/internal/widget/ConversationLayout;->mMinTouchSize:F

    iget-object p3, p1, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 1556
    iget p3, p1, Lcom/android/internal/widget/ConversationLayout;->mMinTouchSize:F

    iget-object p4, p1, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p4

    int-to-float p4, p4

    invoke-static {p3, p4}, Ljava/lang/Math;->max(FF)F

    move-result p3

    .line 1557
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    .line 1558
    iget-object p5, p1, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getLeft()I

    move-result p5

    iget-object v0, p1, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    add-int/2addr p5, v0

    int-to-float p5, p5

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p5, v0

    div-float v1, p2, v0

    sub-float/2addr p5, v1

    float-to-int p5, p5

    iput p5, p4, Landroid/graphics/Rect;->left:I

    .line 1560
    iget-object p5, p1, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getTop()I

    move-result p5

    iget-object v1, p1, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr p5, v1

    int-to-float p5, p5

    div-float/2addr p5, v0

    div-float v0, p3, v0

    sub-float/2addr p5, v0

    float-to-int p5, p5

    iput p5, p4, Landroid/graphics/Rect;->top:I

    .line 1562
    iget p5, p4, Landroid/graphics/Rect;->top:I

    int-to-float p5, p5

    add-float/2addr p5, p3

    float-to-int p3, p5

    iput p3, p4, Landroid/graphics/Rect;->bottom:I

    .line 1563
    iget p3, p4, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    add-float/2addr p3, p2

    float-to-int p2, p3

    iput p2, p4, Landroid/graphics/Rect;->right:I

    .line 1565
    iget-object p2, p1, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    invoke-direct {p0, p4, p2}, Lcom/android/internal/widget/ConversationLayout;->getRelativeTouchRect(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 1566
    iget-object p2, p1, Lcom/android/internal/widget/ConversationLayout;->mTouchDelegate:Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    new-instance p3, Landroid/view/TouchDelegate;

    iget-object p5, p1, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    invoke-direct {p3, p4, p5}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;->add(Landroid/view/TouchDelegate;)V

    .line 1569
    :cond_8f
    iget-object p2, p1, Lcom/android/internal/widget/ConversationLayout;->mTouchDelegate:Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/ConversationLayout;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 1570
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 7

    .line 1505
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1512
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getMeasuredHeight()I

    move-result p1

    .line 1513
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getChildCount()I

    move-result p2

    .line 1515
    const/4 v0, 0x0

    :goto_c
    if-ge v0, p2, :cond_35

    .line 1516
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1517
    if-eqz v1, :cond_32

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1d

    .line 1518
    goto :goto_32

    .line 1521
    :cond_1d
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1522
    nop

    .line 1523
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v3

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    .line 1522
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1515
    :cond_32
    :goto_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 1525
    :cond_35
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getSuggestedMinimumHeight()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1526
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getMeasuredHeight()I

    move-result p2

    if-eq p1, p2, :cond_4a

    .line 1527
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/widget/ConversationLayout;->setMeasuredDimension(II)V

    .line 1529
    :cond_4a
    return-void
.end method

.method public blacklist setAvatarReplacement(Landroid/graphics/drawable/Icon;)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 365
    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mAvatarReplacement:Landroid/graphics/drawable/Icon;

    .line 366
    return-void
.end method

.method public blacklist setConversationTitle(Ljava/lang/CharSequence;)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setConversationTitleAsync"
    .end annotation

    .line 1036
    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationTitle:Ljava/lang/CharSequence;

    .line 1037
    return-void
.end method

.method public blacklist setConversationTitleAsync(Ljava/lang/CharSequence;)Ljava/lang/Runnable;
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1024
    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationTitle:Ljava/lang/CharSequence;

    .line 1025
    sget-object p1, Lcom/android/internal/widget/NotificationRunnables;->NOOP:Ljava/lang/Runnable;

    return-object p1
.end method

.method public blacklist setData(Landroid/os/Bundle;)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setDataAsync"
    .end annotation

    .line 480
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/internal/widget/ConversationLayout;->parseMessagingData(Landroid/os/Bundle;ZZ)Lcom/android/internal/widget/MessagingData;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->bind(Lcom/android/internal/widget/MessagingData;)V

    .line 483
    return-void
.end method

.method public blacklist setDataAsync(Landroid/os/Bundle;)Ljava/lang/Runnable;
    .registers 3

    .line 552
    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPrecomputedTextEnabled:Z

    if-nez v0, :cond_a

    .line 553
    new-instance v0, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/widget/ConversationLayout;Landroid/os/Bundle;)V

    return-object v0

    .line 556
    :cond_a
    nop

    .line 557
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lcom/android/internal/widget/ConversationLayout;->parseMessagingData(Landroid/os/Bundle;ZZ)Lcom/android/internal/widget/MessagingData;

    move-result-object p1

    .line 561
    new-instance v0, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/widget/ConversationLayout;Lcom/android/internal/widget/MessagingData;)V

    return-object v0
.end method

.method public blacklist setImageResolver(Lcom/android/internal/widget/ImageResolver;)V
    .registers 2

    .line 586
    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mImageResolver:Lcom/android/internal/widget/ImageResolver;

    .line 587
    return-void
.end method

.method public blacklist setIsCollapsed(Z)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setIsCollapsedAsync"
    .end annotation

    .line 458
    iput-boolean p1, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    .line 460
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateExpandButton()V

    .line 461
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateContentEndPaddings()V

    .line 462
    return-void
.end method

.method public blacklist setIsCollapsedAsync(Z)Ljava/lang/Runnable;
    .registers 3

    .line 469
    iput-boolean p1, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    .line 470
    new-instance v0, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda8;-><init>(Lcom/android/internal/widget/ConversationLayout;Z)V

    return-object v0
.end method

.method public blacklist setIsImportantConversation(Z)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 378
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/ConversationLayout;->setIsImportantConversation(ZZ)V

    .line 379
    return-void
.end method

.method public blacklist setIsImportantConversation(ZZ)V
    .registers 13

    .line 385
    iput-boolean p1, p0, Lcom/android/internal/widget/ConversationLayout;->mImportantConversation:Z

    .line 386
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_13

    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mIcon:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v3}, Lcom/android/internal/widget/CachingIconView;->getVisibility()I

    move-result v3

    if-eq v3, v1, :cond_13

    .line 387
    move v1, v2

    goto :goto_14

    :cond_13
    nop

    .line 386
    :goto_14
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/CachingIconView;->setVisibility(I)V

    .line 389
    if-eqz p2, :cond_c1

    if-eqz p1, :cond_c1

    .line 390
    iget-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {p1}, Lcom/android/internal/widget/CachingIconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    .line 391
    invoke-virtual {p1}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 392
    iget-object p2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {p2}, Lcom/android/internal/widget/CachingIconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/GradientDrawable;

    .line 393
    invoke-virtual {p2}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 394
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 395
    const v1, 0x1060201

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 396
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 397
    const v3, 0x10501c9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 398
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 399
    const v4, 0x10501c7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 400
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10501c8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 402
    mul-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    .line 403
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 404
    const v6, 0x105014f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 406
    new-instance v6, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0, p1, v0, v4}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/widget/ConversationLayout;Landroid/graphics/drawable/GradientDrawable;II)V

    .line 414
    int-to-float p1, v3

    const/4 v0, 0x2

    new-array v3, v0, [F

    const/4 v7, 0x0

    aput v7, v3, v2

    const/4 v7, 0x1

    aput p1, v3, v7

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 415
    sget-object v8, Lcom/android/internal/widget/ConversationLayout;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 416
    const-wide/16 v8, 0xfa

    invoke-virtual {v3, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 417
    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 419
    int-to-float v1, v1

    new-array v8, v0, [F

    aput p1, v8, v2

    aput v1, v8, v7

    .line 420
    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 421
    const-wide/16 v8, 0xc8

    invoke-virtual {p1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 422
    const-wide/16 v8, 0x19

    invoke-virtual {p1, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 423
    sget-object v1, Lcom/android/internal/widget/ConversationLayout;->OVERSHOOT:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 424
    invoke-virtual {p1, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 425
    new-instance v1, Lcom/android/internal/widget/ConversationLayout$1;

    invoke-direct {v1, p0, p2, v4, v5}, Lcom/android/internal/widget/ConversationLayout$1;-><init>(Lcom/android/internal/widget/ConversationLayout;Landroid/graphics/drawable/GradientDrawable;II)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 441
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 442
    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v3, v0, v2

    aput-object p1, v0, v7

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 443
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    .line 445
    :cond_c1
    return-void
.end method

.method public blacklist setIsOneToOne(Z)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setIsOneToOneAsync"
    .end annotation

    .line 1146
    iput-boolean p1, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    .line 1147
    return-void
.end method

.method public blacklist setIsOneToOneAsync(Z)Ljava/lang/Runnable;
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1140
    iput-boolean p1, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    .line 1141
    sget-object p1, Lcom/android/internal/widget/NotificationRunnables;->NOOP:Ljava/lang/Runnable;

    return-object p1
.end method

.method public blacklist setLargeIcon(Landroid/graphics/drawable/Icon;)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setLargeIconAsync"
    .end annotation

    .line 1001
    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 1002
    return-void
.end method

.method public blacklist setLargeIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 995
    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 996
    sget-object p1, Lcom/android/internal/widget/NotificationRunnables;->NOOP:Ljava/lang/Runnable;

    return-object p1
.end method

.method public blacklist setLayoutColor(I)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setLayoutColorAsync"
    .end annotation

    .line 1132
    iput p1, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    .line 1133
    return-void
.end method

.method public blacklist setLayoutColorAsync(I)Ljava/lang/Runnable;
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1126
    iput p1, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    .line 1127
    sget-object p1, Lcom/android/internal/widget/NotificationRunnables;->NOOP:Ljava/lang/Runnable;

    return-object p1
.end method

.method public blacklist setMessageTextColor(I)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1172
    iput p1, p0, Lcom/android/internal/widget/ConversationLayout;->mMessageTextColor:I

    .line 1173
    return-void
.end method

.method public blacklist setMessagingClippingDisabled(Z)V
    .registers 3

    .line 1722
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    :cond_6
    iget-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingClipRect:Landroid/graphics/Rect;

    :goto_8
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MessagingLinearLayout;->setClipBounds(Landroid/graphics/Rect;)V

    .line 1723
    return-void
.end method

.method public blacklist setNameReplacement(Ljava/lang/CharSequence;)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 370
    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mNameReplacement:Ljava/lang/CharSequence;

    .line 371
    return-void
.end method

.method public blacklist setNotificationBackgroundColor(I)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1160
    iput p1, p0, Lcom/android/internal/widget/ConversationLayout;->mNotificationBackgroundColor:I

    .line 1161
    iget-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->applyNotificationBackgroundColor(Landroid/widget/ImageView;)V

    .line 1162
    return-void
.end method

.method public blacklist setPrecomputedTextEnabled(Z)V
    .registers 2

    .line 575
    iput-boolean p1, p0, Lcom/android/internal/widget/ConversationLayout;->mPrecomputedTextEnabled:Z

    .line 576
    return-void
.end method

.method public blacklist setSenderTextColor(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1151
    iput p1, p0, Lcom/android/internal/widget/ConversationLayout;->mSenderTextColor:I

    .line 1152
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1153
    return-void
.end method

.method public blacklist setShortcutIcon(Landroid/graphics/drawable/Icon;)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setShortcutIconAsync"
    .end annotation

    .line 1015
    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    .line 1016
    return-void
.end method

.method public blacklist setShortcutIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1009
    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    .line 1010
    sget-object p1, Lcom/android/internal/widget/NotificationRunnables;->NOOP:Ljava/lang/Runnable;

    return-object p1
.end method

.method public blacklist setUnreadCount(I)V
    .registers 3

    .line 593
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/NotificationExpandButton;->setNumber(I)V

    .line 594
    return-void
.end method

.method public blacklist shouldHideAppName()Z
    .registers 2

    .line 914
    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    return v0
.end method

.method public blacklist showHistoricMessages(Z)V
    .registers 2

    .line 1472
    iput-boolean p1, p0, Lcom/android/internal/widget/ConversationLayout;->mShowHistoricMessages:Z

    .line 1473
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateHistoricMessageVisibility()V

    .line 1474
    return-void
.end method

.method public blacklist updateExpandability(ZLandroid/view/View$OnClickListener;)V
    .registers 4

    .line 1681
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1682
    return-void

    .line 1685
    :cond_7
    iput-boolean p1, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandable:Z

    .line 1686
    const/4 v0, 0x0

    if-eqz p1, :cond_1c

    .line 1687
    iget-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonContainer:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1688
    iget-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/NotificationExpandButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1689
    iget-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconContainer:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_29

    .line 1691
    :cond_1c
    iget-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonContainer:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1692
    iget-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconContainer:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1694
    :goto_29
    iget-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/NotificationExpandButton;->setVisibility(I)V

    .line 1695
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateContentEndPaddings()V

    .line 1696
    return-void
.end method
