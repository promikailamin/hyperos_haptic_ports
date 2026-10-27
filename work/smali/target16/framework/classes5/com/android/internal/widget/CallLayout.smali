.class public Lcom/android/internal/widget/CallLayout;
.super Landroid/widget/FrameLayout;
.source "CallLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private blacklist mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

.field private blacklist mConversationIconView:Lcom/android/internal/widget/CachingIconView;

.field private blacklist mIcon:Lcom/android/internal/widget/CachingIconView;

.field private blacklist mLargeIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mLayoutColor:I

.field private final blacklist mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

.field private blacklist mUser:Landroid/app/Person;


# direct methods
.method public static synthetic blacklist $r8$lambda$d3TAshWO8tXuEgYiPT2vQHCamoU(Lcom/android/internal/widget/CallLayout;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/CallLayout;->lambda$onFinishInflate$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2

    .line 65
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance p1, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {p1}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/CallLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 66
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance p1, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {p1}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/CallLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 70
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance p1, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {p1}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/CallLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 75
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    new-instance p1, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {p1}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/CallLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 80
    return-void
.end method

.method private blacklist getConversationIcon()Landroid/graphics/drawable/Icon;
    .registers 6

    .line 109
    nop

    .line 110
    nop

    .line 111
    nop

    .line 112
    iget-object v0, p0, Lcom/android/internal/widget/CallLayout;->mUser:Landroid/app/Person;

    const-string v1, ""

    if-eqz v0, :cond_1f

    .line 113
    iget-object v0, p0, Lcom/android/internal/widget/CallLayout;->mUser:Landroid/app/Person;

    invoke-virtual {v0}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 114
    iget-object v2, p0, Lcom/android/internal/widget/CallLayout;->mUser:Landroid/app/Person;

    invoke-virtual {v2}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    .line 115
    iget-object v3, p0, Lcom/android/internal/widget/CallLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    invoke-virtual {v3, v2, v1}, Lcom/android/internal/widget/PeopleHelper;->findNamePrefix(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_21

    .line 112
    :cond_1f
    const/4 v0, 0x0

    move-object v2, v1

    .line 117
    :goto_21
    if-nez v0, :cond_25

    .line 118
    iget-object v0, p0, Lcom/android/internal/widget/CallLayout;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 120
    :cond_25
    if-nez v0, :cond_2f

    .line 121
    iget-object v0, p0, Lcom/android/internal/widget/CallLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget v3, p0, Lcom/android/internal/widget/CallLayout;->mLayoutColor:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 123
    :cond_2f
    return-object v0
.end method

.method private blacklist getPerson(Landroid/os/Bundle;)Landroid/app/Person;
    .registers 4

    .line 186
    const-string v0, "android.callPerson"

    const-class v1, Landroid/app/Person;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Person;

    return-object p1
.end method

.method private synthetic blacklist lambda$onFinishInflate$0(Ljava/lang/Boolean;)V
    .registers 4

    .line 92
    iget-object v0, p0, Lcom/android/internal/widget/CallLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget-object v1, p0, Lcom/android/internal/widget/CallLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/widget/PeopleHelper;->animateViewForceHidden(Lcom/android/internal/widget/CachingIconView;Z)V

    .line 93
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/widget/flags/Flags;->notificationTransparentBadgeRing()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 94
    iget-object p1, p0, Lcom/android/internal/widget/CallLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/CachingIconView;->setClipToOutline(Z)V

    .line 96
    :cond_17
    return-void
.end method

.method static synthetic blacklist lambda$setLargeIconAsync$2()V
    .registers 0

    .line 153
    return-void
.end method

.method static synthetic blacklist lambda$setLayoutColorAsync$1()V
    .registers 0

    .line 131
    return-void
.end method

.method private blacklist setUser(Landroid/app/Person;)V
    .registers 2

    .line 190
    iput-object p1, p0, Lcom/android/internal/widget/CallLayout;->mUser:Landroid/app/Person;

    .line 191
    return-void
.end method


# virtual methods
.method protected whitelist onFinishInflate()V
    .registers 4

    .line 84
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 85
    iget-object v0, p0, Lcom/android/internal/widget/CallLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    invoke-virtual {p0}, Lcom/android/internal/widget/CallLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PeopleHelper;->init(Landroid/content/Context;)V

    .line 86
    const v0, 0x10202af

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/CallLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/CachingIconView;

    iput-object v0, p0, Lcom/android/internal/widget/CallLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    .line 87
    const v0, 0x1020006

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/CallLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/CachingIconView;

    iput-object v0, p0, Lcom/android/internal/widget/CallLayout;->mIcon:Lcom/android/internal/widget/CachingIconView;

    .line 88
    const v0, 0x10202b1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/CallLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/CachingIconView;

    iput-object v0, p0, Lcom/android/internal/widget/CallLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    .line 91
    iget-object v0, p0, Lcom/android/internal/widget/CallLayout;->mIcon:Lcom/android/internal/widget/CachingIconView;

    new-instance v1, Lcom/android/internal/widget/CallLayout$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/CallLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/CallLayout;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/CachingIconView;->setOnForceHiddenChangedListener(Ljava/util/function/Consumer;)V

    .line 98
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/widget/flags/Flags;->notificationTransparentBadgeRing()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 99
    const v0, 0x10202b0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/CallLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/android/internal/widget/CallLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    iget-object v2, p0, Lcom/android/internal/widget/CallLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    .line 101
    invoke-static {v2, v0}, Lcom/android/internal/widget/PeopleHelper;->getBadgeCutoutOutlineProvider(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewOutlineProvider;

    move-result-object v0

    .line 100
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/CachingIconView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 105
    :cond_4f
    return-void
.end method

.method public blacklist setData(Landroid/os/Bundle;)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setDataAsync"
    .end annotation

    .line 166
    invoke-direct {p0, p1}, Lcom/android/internal/widget/CallLayout;->getPerson(Landroid/os/Bundle;)Landroid/app/Person;

    move-result-object p1

    .line 167
    invoke-direct {p0, p1}, Lcom/android/internal/widget/CallLayout;->setUser(Landroid/app/Person;)V

    .line 169
    invoke-direct {p0}, Lcom/android/internal/widget/CallLayout;->getConversationIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    .line 170
    iget-object v0, p0, Lcom/android/internal/widget/CallLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/CachingIconView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 171
    return-void
.end method

.method public blacklist setDataAsync(Landroid/os/Bundle;)Ljava/lang/Runnable;
    .registers 3

    .line 177
    invoke-direct {p0, p1}, Lcom/android/internal/widget/CallLayout;->getPerson(Landroid/os/Bundle;)Landroid/app/Person;

    move-result-object p1

    .line 178
    invoke-direct {p0, p1}, Lcom/android/internal/widget/CallLayout;->setUser(Landroid/app/Person;)V

    .line 180
    invoke-direct {p0}, Lcom/android/internal/widget/CallLayout;->getConversationIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    .line 181
    iget-object v0, p0, Lcom/android/internal/widget/CallLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/CachingIconView;->setImageIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setLargeIcon(Landroid/graphics/drawable/Icon;)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setLargeIconAsync"
    .end annotation

    .line 158
    iput-object p1, p0, Lcom/android/internal/widget/CallLayout;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 159
    return-void
.end method

.method public blacklist setLargeIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;
    .registers 2

    .line 152
    iput-object p1, p0, Lcom/android/internal/widget/CallLayout;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 153
    new-instance p1, Lcom/android/internal/widget/CallLayout$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/android/internal/widget/CallLayout$$ExternalSyntheticLambda2;-><init>()V

    return-object p1
.end method

.method public blacklist setLayoutColor(I)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setLayoutColorAsync"
    .end annotation

    .line 136
    iput p1, p0, Lcom/android/internal/widget/CallLayout;->mLayoutColor:I

    .line 137
    return-void
.end method

.method public blacklist setLayoutColorAsync(I)Ljava/lang/Runnable;
    .registers 2

    .line 130
    iput p1, p0, Lcom/android/internal/widget/CallLayout;->mLayoutColor:I

    .line 131
    new-instance p1, Lcom/android/internal/widget/CallLayout$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/android/internal/widget/CallLayout$$ExternalSyntheticLambda1;-><init>()V

    return-object p1
.end method

.method public blacklist setNotificationBackgroundColor(I)V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/android/internal/widget/CallLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    .line 145
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/widget/flags/Flags;->notificationTransparentBadgeRing()Z

    move-result v1

    if-eqz v1, :cond_b

    const p1, 0x106000d

    .line 144
    :cond_b
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/CachingIconView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 146
    return-void
.end method
