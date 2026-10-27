.class public Lcom/android/internal/widget/CompactMessagingLayout;
.super Landroid/widget/FrameLayout;
.source "CompactMessagingLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private blacklist mConversationFacePileViewStub:Landroid/view/ViewStub;

.field private blacklist mFacePileAvatarSize:I

.field private blacklist mFacePileProtectionWidth:I

.field private blacklist mFacePileSize:I

.field private blacklist mLayoutColor:I

.field private blacklist mNotificationBackgroundColor:I

.field private final blacklist mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;


# direct methods
.method public static synthetic blacklist $r8$lambda$c_PWNd-0DX0Mo4ChxVLIqlcqs0A(Lcom/android/internal/widget/CompactMessagingLayout;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/CompactMessagingLayout;->lambda$setGroupFacePileAsync$0(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance p1, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {p1}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 65
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    new-instance p1, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {p1}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 70
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    new-instance p1, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {p1}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 75
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 53
    new-instance p1, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {p1}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 80
    return-void
.end method

.method private static blacklist getPersonKey(Landroid/app/Person;)Ljava/lang/CharSequence;
    .registers 2

    .line 257
    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_13

    :cond_4
    invoke-virtual {p0}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_13

    :cond_f
    invoke-virtual {p0}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object p0

    :goto_13
    return-object p0
.end method

.method private blacklist getSenderIcon(Landroid/app/Person;Lcom/android/internal/widget/PeopleHelper$NameToPrefixMap;I)Landroid/graphics/drawable/Icon;
    .registers 6

    .line 206
    const-string v0, ""

    if-nez p1, :cond_b

    .line 207
    iget-object p1, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    invoke-virtual {p1, v0, v0, p3}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object p1

    return-object p1

    .line 211
    :cond_b
    invoke-virtual {p1}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 212
    invoke-virtual {p1}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    return-object p1

    .line 215
    :cond_16
    invoke-virtual {p1}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object p1

    .line 216
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 217
    if-eqz p2, :cond_26

    invoke-virtual {p2, p1}, Lcom/android/internal/widget/PeopleHelper$NameToPrefixMap;->getPrefix(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 218
    :cond_26
    iget-object p2, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object p1

    return-object p1

    .line 221
    :cond_2d
    iget-object p1, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    invoke-virtual {p1, v0, v0, p3}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object p1

    return-object p1
.end method

.method private static blacklist groupMessages(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;>;"
        }
    .end annotation

    .line 232
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 234
    :cond_11
    nop

    .line 235
    nop

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 237
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 239
    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v2

    move-object v4, v3

    :goto_20
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v6, v1

    if-ge v5, v6, :cond_5c

    .line 240
    if-ge v5, v1, :cond_30

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Notification$MessagingStyle$Message;

    goto :goto_38

    .line 241
    :cond_30
    sub-int v6, v5, v1

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Notification$MessagingStyle$Message;

    .line 242
    :goto_38
    if-nez v6, :cond_3b

    goto :goto_59

    .line 244
    :cond_3b
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/widget/CompactMessagingLayout;->getPersonKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 245
    if-eqz v3, :cond_4a

    if-eq v7, v4, :cond_48

    goto :goto_4a

    :cond_48
    move v8, v2

    goto :goto_4b

    :cond_4a
    :goto_4a
    const/4 v8, 0x1

    .line 246
    :goto_4b
    if-eqz v8, :cond_56

    .line 247
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 248
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    move-object v4, v7

    .line 251
    :cond_56
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    :goto_59
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 253
    :cond_5c
    return-object v0
.end method

.method private synthetic blacklist lambda$setGroupFacePileAsync$0(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 7

    .line 182
    iget-object v0, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mConversationFacePileViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 183
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    const v1, 0x10202ac

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 187
    const v2, 0x10202ad

    invoke-virtual {v0, v2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 189
    const v3, 0x10202ab

    invoke-virtual {v0, v3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 192
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    iget p1, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mNotificationBackgroundColor:I

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 195
    iget p1, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mFacePileSize:I

    invoke-static {v0, p1}, Lcom/android/internal/widget/CompactMessagingLayout;->setSize(Landroid/view/View;I)V

    .line 196
    iget p1, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mFacePileAvatarSize:I

    invoke-static {v3, p1}, Lcom/android/internal/widget/CompactMessagingLayout;->setSize(Landroid/view/View;I)V

    .line 197
    iget p1, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mFacePileAvatarSize:I

    invoke-static {v2, p1}, Lcom/android/internal/widget/CompactMessagingLayout;->setSize(Landroid/view/View;I)V

    .line 198
    iget p1, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mFacePileAvatarSize:I

    iget p2, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mFacePileProtectionWidth:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    invoke-static {v1, p1}, Lcom/android/internal/widget/CompactMessagingLayout;->setSize(Landroid/view/View;I)V

    .line 199
    return-void
.end method

.method private static blacklist setSize(Landroid/view/View;I)V
    .registers 3

    .line 261
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 262
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 263
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 264
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    return-void
.end method


# virtual methods
.method protected whitelist onFinishInflate()V
    .registers 3

    .line 84
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 85
    iget-object v0, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    invoke-virtual {p0}, Lcom/android/internal/widget/CompactMessagingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PeopleHelper;->init(Landroid/content/Context;)V

    .line 86
    const v0, 0x10202aa

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/CompactMessagingLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mConversationFacePileViewStub:Landroid/view/ViewStub;

    .line 87
    invoke-virtual {p0}, Lcom/android/internal/widget/CompactMessagingLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 88
    const v1, 0x1050144

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mFacePileSize:I

    .line 89
    invoke-virtual {p0}, Lcom/android/internal/widget/CompactMessagingLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 90
    const v1, 0x1050142

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mFacePileAvatarSize:I

    .line 91
    invoke-virtual {p0}, Lcom/android/internal/widget/CompactMessagingLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050143

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mFacePileProtectionWidth:I

    .line 93
    return-void
.end method

.method public blacklist setGroupFacePile(Landroid/os/Bundle;)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setGroupFacePileAsync"
    .end annotation

    .line 103
    return-void
.end method

.method public blacklist setGroupFacePileAsync(Landroid/os/Bundle;)Ljava/lang/Runnable;
    .registers 15

    .line 133
    const-string v0, "android.messages"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 134
    nop

    .line 135
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v0

    .line 136
    nop

    .line 137
    const-string v1, "android.messages.historic"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 138
    nop

    .line 139
    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v1

    .line 140
    const-string v2, "android.messagingUser"

    const-class v3, Landroid/app/Person;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Person;

    .line 142
    invoke-static {v0, v1}, Lcom/android/internal/widget/CompactMessagingLayout;->groupMessages(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 145
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/PeopleHelper;->mapUniqueNamesToPrefixWithGroupList(Ljava/util/List;)Lcom/android/internal/widget/PeopleHelper$NameToPrefixMap;

    move-result-object v1

    .line 146
    iget v2, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mLayoutColor:I

    .line 148
    nop

    .line 149
    nop

    .line 150
    nop

    .line 151
    invoke-static {p1}, Lcom/android/internal/widget/CompactMessagingLayout;->getPersonKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 152
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const/4 v6, 0x0

    move-object v7, v6

    move-object v8, v7

    :goto_3d
    if-ltz v4, :cond_7b

    .line 153
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/Notification$MessagingStyle$Message;

    .line 155
    invoke-virtual {v9}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v11

    if-eqz v11, :cond_57

    invoke-virtual {v9}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v9

    goto :goto_58

    :cond_57
    move-object v9, p1

    .line 156
    :goto_58
    invoke-static {v9}, Lcom/android/internal/widget/CompactMessagingLayout;->getPersonKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 157
    if-eq v11, v3, :cond_60

    move v12, v5

    goto :goto_61

    :cond_60
    move v12, v10

    .line 158
    :goto_61
    if-eq v11, v7, :cond_64

    move v10, v5

    .line 160
    :cond_64
    if-eqz v12, :cond_68

    if-nez v10, :cond_6c

    :cond_68
    if-nez v4, :cond_78

    if-nez v7, :cond_78

    .line 161
    :cond_6c
    invoke-direct {p0, v9, v1, v2}, Lcom/android/internal/widget/CompactMessagingLayout;->getSenderIcon(Landroid/app/Person;Lcom/android/internal/widget/PeopleHelper$NameToPrefixMap;I)Landroid/graphics/drawable/Icon;

    move-result-object v7

    .line 162
    if-nez v8, :cond_76

    .line 163
    nop

    .line 164
    move-object v8, v7

    move-object v7, v11

    goto :goto_78

    .line 166
    :cond_76
    nop

    .line 167
    goto :goto_7c

    .line 152
    :cond_78
    :goto_78
    add-int/lit8 v4, v4, -0x1

    goto :goto_3d

    :cond_7b
    move-object v7, v6

    .line 172
    :goto_7c
    if-nez v8, :cond_82

    .line 173
    invoke-direct {p0, v6, v6, v2}, Lcom/android/internal/widget/CompactMessagingLayout;->getSenderIcon(Landroid/app/Person;Lcom/android/internal/widget/PeopleHelper$NameToPrefixMap;I)Landroid/graphics/drawable/Icon;

    move-result-object v8

    .line 176
    :cond_82
    if-nez v7, :cond_88

    .line 177
    invoke-direct {p0, v6, v6, v2}, Lcom/android/internal/widget/CompactMessagingLayout;->getSenderIcon(Landroid/app/Person;Lcom/android/internal/widget/PeopleHelper$NameToPrefixMap;I)Landroid/graphics/drawable/Icon;

    move-result-object v7

    .line 179
    :cond_88
    invoke-virtual {p0}, Lcom/android/internal/widget/CompactMessagingLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 180
    invoke-virtual {p0}, Lcom/android/internal/widget/CompactMessagingLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 181
    new-instance v1, Lcom/android/internal/widget/CompactMessagingLayout$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/internal/widget/CompactMessagingLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/CompactMessagingLayout;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method public blacklist setLayoutColor(I)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setLayoutColorAsync"
    .end annotation

    .line 116
    iput p1, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mLayoutColor:I

    .line 117
    return-void
.end method

.method public blacklist setLayoutColorAsync(I)Ljava/lang/Runnable;
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 110
    iput p1, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mLayoutColor:I

    .line 111
    sget-object p1, Lcom/android/internal/widget/NotificationRunnables;->NOOP:Ljava/lang/Runnable;

    return-object p1
.end method

.method public blacklist setNotificationBackgroundColor(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 124
    nop

    .line 125
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/widget/flags/Flags;->notificationTransparentBadgeRing()Z

    move-result v0

    if-eqz v0, :cond_a

    const p1, 0x106000d

    :cond_a
    iput p1, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mNotificationBackgroundColor:I

    .line 126
    return-void
.end method
