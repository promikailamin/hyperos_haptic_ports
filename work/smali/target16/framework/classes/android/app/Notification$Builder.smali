.class public Landroid/app/Notification$Builder;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static final greylist-max-o EXTRA_REBUILD_BIG_CONTENT_VIEW_ACTION_COUNT:Ljava/lang/String; = "android.rebuild.bigViewActionCount"

.field public static final greylist-max-o EXTRA_REBUILD_CONTENT_VIEW_ACTION_COUNT:Ljava/lang/String; = "android.rebuild.contentViewActionCount"

.field public static final greylist-max-o EXTRA_REBUILD_HEADS_UP_CONTENT_VIEW_ACTION_COUNT:Ljava/lang/String; = "android.rebuild.hudViewActionCount"

.field private static final greylist-max-o USE_ONLY_TITLE_IN_LOW_PRIORITY_SUMMARY:Z


# instance fields
.field private greylist mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mColorUtil:Lcom/android/internal/util/ContrastColorUtil;

.field blacklist mColors:Landroid/app/Notification$Colors;

.field private greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mInNightMode:Z

.field private greylist-max-o mIsLegacy:Z

.field private greylist-max-o mIsLegacyInitialized:Z

.field private greylist-max-o mN:Landroid/app/Notification;

.field greylist-max-o mParams:Landroid/app/Notification$StandardTemplateParams;

.field private greylist-max-o mPersonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Person;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mStyle:Landroid/app/Notification$Style;

.field private greylist-max-o mTintActionButtons:Z

.field private greylist-max-o mUserExtras:Landroid/os/Bundle;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActions(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;
    .registers 1

    iget-object p0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmActions(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mapplyStandardTemplate(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/app/Notification$Builder;->applyStandardTemplate(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mapplyStandardTemplateWithActions(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgenerateActionButton(Landroid/app/Notification$Builder;Landroid/app/Notification$Action;ZLandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/app/Notification$Builder;->generateActionButton(Landroid/app/Notification$Action;ZLandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetBackgroundColor(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->getBackgroundColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetBigPictureLayoutResource(Landroid/app/Notification$Builder;)I
    .registers 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigPictureLayoutResource()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetBigTextLayoutResource(Landroid/app/Notification$Builder;)I
    .registers 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigTextLayoutResource()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetCollapsedBaseLayoutResource(Landroid/app/Notification$Builder;)I
    .registers 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getCollapsedBaseLayoutResource()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetCollapsedCallLayoutResource(Landroid/app/Notification$Builder;)I
    .registers 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getCollapsedCallLayoutResource()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetCollapsedConversationLayoutResource(Landroid/app/Notification$Builder;)I
    .registers 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getCollapsedConversationLayoutResource()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetCollapsedMediaLayoutResource(Landroid/app/Notification$Builder;)I
    .registers 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getCollapsedMediaLayoutResource()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetCollapsedMessagingLayoutResource(Landroid/app/Notification$Builder;)I
    .registers 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getCollapsedMessagingLayoutResource()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetCollapsedMetricLayoutResource(Landroid/app/Notification$Builder;)I
    .registers 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getCollapsedMetricLayoutResource()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetColors(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetConversationLayoutResource(Landroid/app/Notification$Builder;)I
    .registers 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getConversationLayoutResource()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetExpandedBaseLayoutResource(Landroid/app/Notification$Builder;)I
    .registers 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getExpandedBaseLayoutResource()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetExpandedCallLayoutResource(Landroid/app/Notification$Builder;)I
    .registers 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getExpandedCallLayoutResource()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetExpandedConversationLayoutResource(Landroid/app/Notification$Builder;)I
    .registers 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getExpandedConversationLayoutResource()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetExpandedMediaLayoutResource(Landroid/app/Notification$Builder;)I
    .registers 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getExpandedMediaLayoutResource()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetExpandedMessagingLayoutResource(Landroid/app/Notification$Builder;)I
    .registers 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getExpandedMessagingLayoutResource()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetExpandedMetricLayoutResource(Landroid/app/Notification$Builder;)I
    .registers 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getExpandedMetricLayoutResource()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetHeadsUpBaseLayoutResource(Landroid/app/Notification$Builder;)I
    .registers 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getHeadsUpBaseLayoutResource()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetInboxLayoutResource(Landroid/app/Notification$Builder;)I
    .registers 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getInboxLayoutResource()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetMessagingCompactHeadsUpLayoutResource(Landroid/app/Notification$Builder;)I
    .registers 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getMessagingCompactHeadsUpLayoutResource()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetNonContextualActions(Landroid/app/Notification$Builder;)Ljava/util/List;
    .registers 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getNonContextualActions()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetPrimaryAccentColor(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->getPrimaryAccentColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetProgressLayoutResource(Landroid/app/Notification$Builder;)I
    .registers 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getProgressLayoutResource()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetSmallIconColor(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->getSmallIconColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetStandardActionColor(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->getStandardActionColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhasValidRemoteInput(Landroid/app/Notification$Builder;Landroid/app/Notification$Action;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->hasValidRemoteInput(Landroid/app/Notification$Action;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misCallActionColorCustomizable(Landroid/app/Notification$Builder;)Z
    .registers 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->isCallActionColorCustomizable()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mprocessLegacyText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetTextViewColorPrimary(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/app/Notification$Builder;->setTextViewColorPrimary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetTextViewColorSecondary(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smensureColorContrast(IID)I
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/app/Notification$Builder;->ensureColorContrast(IID)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smsetHeaderlessVerticalMargins(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/app/Notification$Builder;->setHeaderlessVerticalMargins(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 4746
    nop

    .line 4747
    const-string/jumbo v0, "notifications.only_title"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/app/Notification$Builder;->USE_ONLY_TITLE_IN_LOW_PRIORITY_SUMMARY:Z

    .line 4746
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4793
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/app/Notification;

    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    .line 4794
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/app/Notification;)V
    .registers 7

    .line 4799
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4751
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    .line 4753
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 4755
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    .line 4764
    new-instance v0, Landroid/app/Notification$StandardTemplateParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/Notification$StandardTemplateParams;-><init>(Landroid/app/Notification-IA;)V

    iput-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    .line 4765
    new-instance v0, Landroid/app/Notification$Colors;

    invoke-direct {v0}, Landroid/app/Notification$Colors;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$Builder;->mColors:Landroid/app/Notification$Colors;

    .line 4800
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 4801
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4802
    const v1, 0x11102a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/Notification$Builder;->mTintActionButtons:Z

    .line 4804
    const v1, 0x111019b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_55

    .line 4805
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 4806
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_52

    move v0, v2

    goto :goto_53

    :cond_52
    move v0, v3

    :goto_53
    iput-boolean v0, p0, Landroid/app/Notification$Builder;->mInNightMode:Z

    .line 4810
    :cond_55
    if-nez p2, :cond_7b

    .line 4811
    new-instance p2, Landroid/app/Notification;

    invoke-direct {p2}, Landroid/app/Notification;-><init>()V

    iput-object p2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 4812
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p2, 0x18

    if-ge p1, p2, :cond_71

    .line 4813
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p2, "android.showWhen"

    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4815
    :cond_71
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput v3, p1, Landroid/app/Notification;->priority:I

    .line 4816
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput v3, p1, Landroid/app/Notification;->visibility:I

    goto/16 :goto_12d

    .line 4818
    :cond_7b
    iput-object p2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 4819
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p1, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz p1, :cond_8c

    .line 4820
    iget-object p1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    iget-object p2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p2, p2, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-static {p1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 4823
    :cond_8c
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p2, "android.people.list"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_af

    .line 4824
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-class v0, Landroid/app/Person;

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    .line 4826
    if-eqz p1, :cond_af

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_af

    .line 4827
    iget-object p2, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4831
    :cond_af
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {p1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    if-nez p1, :cond_c4

    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget p1, p1, Landroid/app/Notification;->icon:I

    if-eqz p1, :cond_c4

    .line 4832
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget p1, p1, Landroid/app/Notification;->icon:I

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 4835
    :cond_c4
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {p1}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    if-nez p1, :cond_d9

    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p1, p1, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_d9

    .line 4836
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p1, p1, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 4839
    :cond_d9
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p2, "android.template"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4840
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_12d

    .line 4841
    nop

    .line 4842
    invoke-static {p1}, Landroid/app/Notification;->getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    .line 4843
    const-string v0, "Notification"

    if-nez p2, :cond_109

    .line 4844
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown style class: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12d

    .line 4847
    :cond_109
    :try_start_109
    new-array p1, v3, [Ljava/lang/Class;

    .line 4848
    invoke-virtual {p2, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 4849
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 4850
    new-array p2, v3, [Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Notification$Style;

    .line 4851
    iget-object p2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p2, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    .line 4853
    if-eqz p1, :cond_126

    .line 4854
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;
    :try_end_126
    .catchall {:try_start_109 .. :try_end_126} :catchall_127

    .line 4858
    :cond_126
    goto :goto_12d

    .line 4856
    :catchall_127
    move-exception p1

    .line 4857
    const-string p2, "Could not create Style"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4862
    :cond_12d
    :goto_12d
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 4783
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/app/Notification;

    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    .line 4784
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {p1, p2}, Landroid/app/Notification;->-$$Nest$fputmChannelId(Landroid/app/Notification;Ljava/lang/String;)V

    .line 4785
    return-void
.end method

.method private blacklist adjustExpandButtonPadding(Landroid/widget/RemoteViews;Z)V
    .registers 6

    .line 6427
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 6428
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 6429
    const v1, 0x10502a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 6430
    const v2, 0x1050298

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 6432
    nop

    .line 6433
    if-eqz p2, :cond_1e

    move v1, v0

    .line 6432
    :cond_1e
    const p2, 0x10202ee

    const-string/jumbo v0, "setStartPadding"

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 6435
    :cond_27
    return-void
.end method

.method private greylist-max-o applyStandardTemplate(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;
    .registers 11

    .line 6199
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getCollapsedBaseLayoutResource()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_47

    .line 6200
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getHeadsUpBaseLayoutResource()I

    move-result v0

    if-eq p1, v0, :cond_47

    .line 6201
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getCompactHeadsUpBaseLayoutResource()I

    move-result v0

    if-eq p1, v0, :cond_47

    .line 6202
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getMessagingCompactHeadsUpLayoutResource()I

    move-result v0

    if-eq p1, v0, :cond_47

    .line 6203
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getCollapsedMessagingLayoutResource()I

    move-result v0

    if-eq p1, v0, :cond_47

    .line 6204
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getCollapsedMediaLayoutResource()I

    move-result v0

    if-eq p1, v0, :cond_47

    .line 6205
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getCollapsedConversationLayoutResource()I

    move-result v0

    if-eq p1, v0, :cond_47

    .line 6206
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->apiMetricStyle()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 6207
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getCollapsedMetricLayoutResource()I

    move-result v0

    if-eq p1, v0, :cond_47

    .line 6208
    :cond_38
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 6209
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getCollapsedCallLayoutResource()I

    move-result v0

    if-ne p1, v0, :cond_45

    goto :goto_47

    :cond_45
    move v0, v2

    goto :goto_48

    :cond_47
    :goto_47
    move v0, v1

    .line 6199
    :goto_48
    invoke-virtual {p2, v0}, Landroid/app/Notification$StandardTemplateParams;->headerless(Z)Landroid/app/Notification$StandardTemplateParams;

    .line 6210
    new-instance v0, Landroid/app/Notification$BuilderRemoteViews;

    iget-object v3, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-direct {v0, v3, p1}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 6212
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->resetStandardTemplate(Landroid/widget/RemoteViews;)V

    .line 6214
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 6215
    invoke-direct {p0, v0, p2}, Landroid/app/Notification$Builder;->updateBackgroundColor(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    .line 6216
    invoke-direct {p0, v0, p2}, Landroid/app/Notification$Builder;->bindNotificationHeader(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    .line 6217
    invoke-direct {p0, v0, p2, p3}, Landroid/app/Notification$Builder;->bindLargeIconAndApplyMargin(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V

    .line 6218
    invoke-direct {p0, v0, v3, p2}, Landroid/app/Notification$Builder;->handleProgressBar(Landroid/widget/RemoteViews;Landroid/os/Bundle;Landroid/app/Notification$StandardTemplateParams;)Z

    move-result p3

    .line 6219
    nop

    .line 6221
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->apiMetricStyle()Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 6222
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getCollapsedMetricLayoutResource()I

    move-result v3

    if-eq p1, v3, :cond_7d

    .line 6223
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getExpandedMetricLayoutResource()I

    move-result v3

    if-ne p1, v3, :cond_7f

    :cond_7d
    move p1, v1

    goto :goto_80

    :cond_7f
    move p1, v2

    .line 6224
    :goto_80
    or-int/2addr p1, p3

    .line 6225
    invoke-virtual {p2}, Landroid/app/Notification$StandardTemplateParams;->hasTitle()Z

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v3, :cond_a0

    .line 6226
    iget v3, p2, Landroid/app/Notification$StandardTemplateParams;->mTitleViewId:I

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6227
    iget v3, p2, Landroid/app/Notification$StandardTemplateParams;->mTitleViewId:I

    iget-object v6, p2, Landroid/app/Notification$StandardTemplateParams;->mTitle:Ljava/lang/CharSequence;

    .line 6228
    invoke-virtual {p0, v6, p2}, Landroid/app/Notification$Builder;->ensureColorSpanContrastOrStripStyling(Ljava/lang/CharSequence;Landroid/app/Notification$StandardTemplateParams;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 6227
    invoke-virtual {v0, v3, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6229
    iget v3, p2, Landroid/app/Notification$StandardTemplateParams;->mTitleViewId:I

    invoke-direct {p0, v0, v3, p2}, Landroid/app/Notification$Builder;->setTextViewColorPrimary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    goto :goto_b1

    .line 6230
    :cond_a0
    iget v3, p2, Landroid/app/Notification$StandardTemplateParams;->mTitleViewId:I

    const v6, 0x1020016

    if-eq v3, v6, :cond_b1

    .line 6232
    iget v3, p2, Landroid/app/Notification$StandardTemplateParams;->mTitleViewId:I

    invoke-virtual {v0, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6233
    iget v3, p2, Landroid/app/Notification$StandardTemplateParams;->mTitleViewId:I

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6235
    :cond_b1
    :goto_b1
    iget-object v3, p2, Landroid/app/Notification$StandardTemplateParams;->mText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_da

    iget-object v3, p2, Landroid/app/Notification$StandardTemplateParams;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eqz v3, :cond_da

    if-eqz p3, :cond_c3

    iget-boolean p3, p2, Landroid/app/Notification$StandardTemplateParams;->mAllowTextWithProgress:Z

    if-eqz p3, :cond_da

    .line 6237
    :cond_c3
    iget p1, p2, Landroid/app/Notification$StandardTemplateParams;->mTextViewId:I

    invoke-virtual {v0, p1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6238
    iget p1, p2, Landroid/app/Notification$StandardTemplateParams;->mTextViewId:I

    iget-object p3, p2, Landroid/app/Notification$StandardTemplateParams;->mText:Ljava/lang/CharSequence;

    .line 6239
    invoke-virtual {p0, p3, p2}, Landroid/app/Notification$Builder;->ensureColorSpanContrastOrStripStyling(Ljava/lang/CharSequence;Landroid/app/Notification$StandardTemplateParams;)Ljava/lang/CharSequence;

    move-result-object p3

    .line 6238
    invoke-virtual {v0, p1, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6240
    iget p1, p2, Landroid/app/Notification$StandardTemplateParams;->mTextViewId:I

    invoke-direct {p0, v0, p1, p2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 6241
    move p1, v1

    goto :goto_eb

    .line 6242
    :cond_da
    iget p3, p2, Landroid/app/Notification$StandardTemplateParams;->mTextViewId:I

    const v3, 0x1020578

    if-eq p3, v3, :cond_eb

    .line 6244
    iget p3, p2, Landroid/app/Notification$StandardTemplateParams;->mTextViewId:I

    invoke-virtual {v0, p3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6245
    iget p3, p2, Landroid/app/Notification$StandardTemplateParams;->mTextViewId:I

    invoke-virtual {v0, p3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6248
    :cond_eb
    :goto_eb
    invoke-static {v0, p2, p1}, Landroid/app/Notification$Builder;->updateExpanderAlignment(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)V

    .line 6249
    invoke-static {v0, p2, p1}, Landroid/app/Notification$Builder;->setHeaderlessVerticalMargins(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)V

    .line 6251
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result p1

    if-eqz p1, :cond_11e

    iget-boolean p1, p2, Landroid/app/Notification$StandardTemplateParams;->mHeaderless:Z

    if-nez p1, :cond_11e

    .line 6256
    iget-object p1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    const p3, 0x105028e

    invoke-static {p1, p3}, Landroid/app/Notification$Builder;->getContentMarginTop(Landroid/content/Context;I)I

    move-result p1

    .line 6258
    const p3, 0x1020439

    int-to-float p1, p1

    invoke-virtual {v0, p3, v1, p1, v2}, Landroid/widget/RemoteViews;->setViewLayoutMargin(IIFI)V

    .line 6262
    iget-object p1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x10502a9

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 6264
    iget p2, p2, Landroid/app/Notification$StandardTemplateParams;->mTextViewId:I

    int-to-float p1, p1

    invoke-virtual {v0, p2, v1, p1, v2}, Landroid/widget/RemoteViews;->setViewLayoutMargin(IIFI)V

    .line 6268
    :cond_11e
    return-object v0
.end method

.method private greylist-max-o applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;
    .registers 15

    .line 6853
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Notification$Builder;->applyStandardTemplate(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 6855
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->resetStandardTemplateWithActions(Landroid/widget/RemoteViews;)V

    .line 6856
    invoke-direct {p0, v0, p2}, Landroid/app/Notification$Builder;->bindSnoozeAction(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)Z

    .line 6858
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->getStandardActionColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 6859
    const p3, 0x102053a

    const-string/jumbo v1, "setImageTintList"

    invoke-virtual {v0, p3, v1, p1}, Landroid/widget/RemoteViews;->setColorStateList(ILjava/lang/String;Landroid/content/res/ColorStateList;)V

    .line 6860
    const p3, 0x102024e

    invoke-virtual {v0, p3, v1, p1}, Landroid/widget/RemoteViews;->setColorStateList(ILjava/lang/String;Landroid/content/res/ColorStateList;)V

    .line 6864
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getNonContextualActions()Ljava/util/List;

    move-result-object p1

    .line 6866
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    const/4 v1, 0x3

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 6867
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v1, :cond_45

    iget-boolean v1, p2, Landroid/app/Notification$StandardTemplateParams;->mCallStyleActions:Z

    if-nez v1, :cond_45

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_43

    goto :goto_45

    :cond_43
    move v8, v7

    goto :goto_46

    :cond_45
    :goto_45
    move v8, v6

    .line 6871
    :goto_46
    iget-boolean v1, p2, Landroid/app/Notification$StandardTemplateParams;->mCallStyleActions:Z

    const v9, 0x10201eb

    if-eqz v1, :cond_74

    .line 6874
    const/4 v4, 0x0

    const/4 v5, 0x0

    const v1, 0x10201eb

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 6875
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v1

    if-nez v1, :cond_66

    .line 6879
    const-string/jumbo v1, "setCollapsibleIndentDimen"

    const v2, 0x105008f

    invoke-virtual {v0, v9, v1, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 6883
    :cond_66
    const-string v1, "Notification"

    const-string/jumbo v2, "setting evenly divided mode on action list"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6885
    const-string/jumbo v1, "setEvenlyDividedMode"

    invoke-virtual {v0, v9, v1, v6}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 6887
    :cond_74
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v1

    if-nez v1, :cond_80

    .line 6888
    const-string/jumbo v1, "setEmphasizedMode"

    invoke-virtual {v0, v9, v1, v8}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 6891
    :cond_80
    nop

    .line 6894
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 6895
    const v1, 0x10201ed

    goto :goto_8e

    :cond_8b
    const v1, 0x10201ec

    .line 6896
    :goto_8e
    const/16 v10, 0x8

    if-lez p3, :cond_ab

    iget-boolean v2, p2, Landroid/app/Notification$StandardTemplateParams;->mHideActions:Z

    if-nez v2, :cond_ab

    .line 6897
    invoke-virtual {v0, v1, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6898
    invoke-virtual {v0, v9, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6899
    invoke-direct {p0, v0, v8}, Landroid/app/Notification$Builder;->updateMarginsForActions(Landroid/widget/RemoteViews;Z)V

    .line 6900
    move-object v3, p1

    move-object v2, p2

    move v4, p3

    move-object v1, v0

    move v5, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/Notification$Builder;->populateActionsContainer(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Ljava/util/List;IZ)Z

    move-result p1

    move-object p2, v1

    goto :goto_b2

    .line 6896
    :cond_ab
    move-object v2, p2

    move-object p2, v0

    move-object v0, p0

    .line 6903
    invoke-virtual {p2, v1, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    move p1, v7

    .line 6906
    :goto_b2
    iget-object p3, v0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p3, p3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.remoteInputHistoryItems"

    const-class v3, Landroid/app/RemoteInputHistoryItem;

    invoke-static {p3, v1, v3}, Landroid/app/Notification;->-$$Nest$smgetParcelableArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, [Landroid/app/RemoteInputHistoryItem;

    .line 6908
    if-eqz p1, :cond_169

    if-eqz p3, :cond_169

    array-length p1, p3

    if-lez p1, :cond_169

    aget-object p1, p3, v7

    .line 6909
    invoke-virtual {p1}, Landroid/app/RemoteInputHistoryItem;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_169

    iget p1, v2, Landroid/app/Notification$StandardTemplateParams;->maxRemoteInputHistory:I

    if-lez p1, :cond_169

    .line 6911
    iget-object p1, v0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.remoteInputSpinner"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 6912
    const v1, 0x102043b

    invoke-virtual {p2, v1, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6914
    const v1, 0x102043e

    invoke-virtual {p2, v1, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6916
    aget-object v1, p3, v7

    .line 6917
    invoke-virtual {v1}, Landroid/app/RemoteInputHistoryItem;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Landroid/app/Notification$Builder;->ensureColorSpanContrastOrStripStyling(Ljava/lang/CharSequence;Landroid/app/Notification$StandardTemplateParams;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 6916
    const v3, 0x102043d

    invoke-virtual {p2, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6918
    invoke-direct {p0, p2, v3, v2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 6919
    nop

    .line 6920
    if-eqz p1, :cond_104

    move v10, v7

    .line 6919
    :cond_104
    const p1, 0x102043c

    invoke-virtual {p2, p1, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6921
    nop

    .line 6923
    invoke-direct {p0, v2}, Landroid/app/Notification$Builder;->getPrimaryAccentColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 6921
    invoke-virtual {p2, p1, v1}, Landroid/widget/RemoteViews;->setProgressIndeterminateTintList(ILandroid/content/res/ColorStateList;)V

    .line 6925
    array-length p1, p3

    if-le p1, v6, :cond_169

    aget-object p1, p3, v6

    invoke-virtual {p1}, Landroid/app/RemoteInputHistoryItem;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_169

    iget p1, v2, Landroid/app/Notification$StandardTemplateParams;->maxRemoteInputHistory:I

    if-le p1, v6, :cond_169

    .line 6927
    const p1, 0x102043f

    invoke-virtual {p2, p1, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6929
    aget-object v1, p3, v6

    .line 6930
    invoke-virtual {v1}, Landroid/app/RemoteInputHistoryItem;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Landroid/app/Notification$Builder;->ensureColorSpanContrastOrStripStyling(Ljava/lang/CharSequence;Landroid/app/Notification$StandardTemplateParams;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 6929
    invoke-virtual {p2, p1, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6931
    invoke-direct {p0, p2, p1, v2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 6934
    array-length p1, p3

    const/4 v1, 0x2

    if-le p1, v1, :cond_169

    aget-object p1, p3, v1

    invoke-virtual {p1}, Landroid/app/RemoteInputHistoryItem;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_169

    iget p1, v2, Landroid/app/Notification$StandardTemplateParams;->maxRemoteInputHistory:I

    if-le p1, v1, :cond_169

    .line 6936
    const p1, 0x1020440

    invoke-virtual {p2, p1, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6938
    aget-object p3, p3, v1

    .line 6939
    invoke-virtual {p3}, Landroid/app/RemoteInputHistoryItem;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p0, p3, v2}, Landroid/app/Notification$Builder;->ensureColorSpanContrastOrStripStyling(Ljava/lang/CharSequence;Landroid/app/Notification$StandardTemplateParams;)Ljava/lang/CharSequence;

    move-result-object p3

    .line 6938
    invoke-virtual {p2, p1, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6940
    invoke-direct {p0, p2, p1, v2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 6946
    :cond_169
    return-object p2
.end method

.method private blacklist bindAlertedIcon(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V
    .registers 6

    .line 6136
    nop

    .line 6139
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Notification$Colors;->getSecondaryTextColor()I

    move-result p2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 6136
    const v1, 0x10201ff

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, p2, v0}, Landroid/widget/RemoteViews;->setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V

    .line 6141
    return-void
.end method

.method private blacklist bindCloseButton(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V
    .registers 6

    .line 6614
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->getBackgroundColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v0

    .line 6615
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Colors;->getProtectionColor()I

    move-result v1

    invoke-static {v1, v0}, Landroid/app/Notification$Colors;->-$$Nest$smflattenAlpha(II)I

    move-result v0

    .line 6616
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->getPrimaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result p2

    invoke-static {p2, v0}, Landroid/app/Notification$Colors;->-$$Nest$smflattenAlpha(II)I

    move-result p2

    .line 6617
    const-string/jumbo v1, "setForegroundColor"

    const v2, 0x1020285

    invoke-virtual {p1, v2, v1, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 6618
    const-string/jumbo p2, "setBackgroundColor"

    invoke-virtual {p1, v2, p2, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 6619
    return-void
.end method

.method private blacklist bindExpandButton(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V
    .registers 8

    .line 6596
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->getBackgroundColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v0

    .line 6597
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Colors;->getProtectionColor()I

    move-result v1

    invoke-static {v1, v0}, Landroid/app/Notification$Colors;->-$$Nest$smflattenAlpha(II)I

    move-result v1

    .line 6598
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->getPrimaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v2

    invoke-static {v2, v1}, Landroid/app/Notification$Colors;->-$$Nest$smflattenAlpha(II)I

    move-result v2

    .line 6599
    const-string/jumbo v3, "setDefaultTextColor"

    const v4, 0x10202ee

    invoke-virtual {p1, v4, v3, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 6600
    const-string/jumbo v3, "setDefaultPillColor"

    invoke-virtual {p1, v4, v3, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 6602
    iget-boolean v3, p2, Landroid/app/Notification$StandardTemplateParams;->mHighlightExpander:Z

    if-eqz v3, :cond_45

    .line 6603
    nop

    .line 6604
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Colors;->getTertiaryFixedDimAccentColor()I

    move-result v1

    .line 6603
    invoke-static {v1, v0}, Landroid/app/Notification$Colors;->-$$Nest$smflattenAlpha(II)I

    move-result v1

    .line 6605
    nop

    .line 6606
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Notification$Colors;->getOnTertiaryFixedAccentTextColor()I

    move-result p2

    .line 6605
    invoke-static {p2, v1}, Landroid/app/Notification$Colors;->-$$Nest$smflattenAlpha(II)I

    move-result v2

    .line 6608
    :cond_45
    const-string/jumbo p2, "setHighlightTextColor"

    invoke-virtual {p1, v4, p2, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 6609
    const-string/jumbo p2, "setHighlightPillColor"

    invoke-virtual {p1, v4, p2, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 6610
    return-void
.end method

.method private blacklist bindHeaderAppName(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;ZZ)Z
    .registers 8

    .line 6718
    iget v0, p2, Landroid/app/Notification$StandardTemplateParams;->mViewType:I

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_MINIMIZED:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_a

    if-nez p3, :cond_a

    .line 6720
    return v2

    .line 6722
    :cond_a
    iget-boolean p3, p2, Landroid/app/Notification$StandardTemplateParams;->mHeaderless:Z

    const/4 v0, 0x1

    if-eqz p3, :cond_16

    invoke-virtual {p2}, Landroid/app/Notification$StandardTemplateParams;->hasTitle()Z

    move-result p3

    if-eqz p3, :cond_16

    .line 6725
    return v0

    .line 6727
    :cond_16
    iget-boolean p3, p2, Landroid/app/Notification$StandardTemplateParams;->mHideAppName:Z

    if-eqz p3, :cond_1f

    .line 6730
    invoke-virtual {p2}, Landroid/app/Notification$StandardTemplateParams;->hasTitle()Z

    move-result p1

    return p1

    .line 6732
    :cond_1f
    const p3, 0x1020217

    invoke-virtual {p1, p3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6733
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->loadHeaderAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6734
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->getSecondaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result p2

    invoke-virtual {p1, p3, p2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 6735
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->apiMetricStyle()Z

    move-result p2

    if-eqz p2, :cond_41

    if-eqz p4, :cond_41

    .line 6736
    const p2, 0x1020218

    invoke-virtual {p1, p2, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6738
    :cond_41
    return v0
.end method

.method private blacklist bindHeaderChronometerAndTime(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)V
    .registers 11

    .line 6623
    iget-boolean v0, p2, Landroid/app/Notification$StandardTemplateParams;->mHideTime:Z

    const-string/jumbo v1, "setTime"

    const v2, 0x1020597

    if-nez v0, :cond_6c

    invoke-direct {p0}, Landroid/app/Notification$Builder;->showsTimeOrChronometer()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 6624
    const/4 v0, 0x0

    if-eqz p3, :cond_1c

    .line 6625
    const p3, 0x102059b

    invoke-virtual {p1, p3, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6626
    invoke-direct {p0, p1, p3, p2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 6628
    :cond_1c
    iget-object p3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p3, p3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.showChronometer"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5c

    .line 6629
    const p3, 0x102027b

    invoke-virtual {p1, p3, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6630
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->getWhen()J

    move-result-wide v0

    .line 6631
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 6630
    const-string/jumbo v2, "setBase"

    invoke-virtual {p1, p3, v2, v0, v1}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 6632
    const-string/jumbo v0, "setStarted"

    const/4 v1, 0x1

    invoke-virtual {p1, p3, v0, v1}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 6633
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.chronometerCountDown"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 6634
    invoke-virtual {p1, p3, v0}, Landroid/widget/RemoteViews;->setChronometerCountDown(IZ)V

    .line 6635
    invoke-direct {p0, p1, p3, p2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 6636
    goto :goto_89

    .line 6637
    :cond_5c
    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6638
    iget-object p3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {p3}, Landroid/app/Notification;->getWhen()J

    move-result-wide v3

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 6639
    invoke-direct {p0, p1, v2, p2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    goto :goto_89

    .line 6644
    :cond_6c
    iget-object p3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {p3}, Landroid/app/Notification;->getWhen()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p3, v3, v5

    if-eqz p3, :cond_7f

    iget-object p3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {p3}, Landroid/app/Notification;->getWhen()J

    move-result-wide v3

    goto :goto_83

    .line 6645
    :cond_7f
    iget-object p3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-wide v3, p3, Landroid/app/Notification;->creationTime:J

    .line 6644
    :goto_83
    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 6646
    invoke-direct {p0, p1, v2, p2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 6648
    :goto_89
    return-void
.end method

.method private blacklist bindHeaderText(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)Z
    .registers 8

    .line 6655
    iget-boolean v0, p2, Landroid/app/Notification$StandardTemplateParams;->mHideSubText:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 6656
    return v1

    .line 6658
    :cond_6
    iget-object v0, p2, Landroid/app/Notification$StandardTemplateParams;->mSubText:Ljava/lang/CharSequence;

    .line 6659
    if-nez v0, :cond_20

    iget-object v2, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v2, :cond_20

    iget-object v2, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-boolean v2, v2, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    if-eqz v2, :cond_20

    iget-object v2, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 6660
    invoke-virtual {v2}, Landroid/app/Notification$Style;->hasSummaryInHeader()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 6661
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v0, v0, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    .line 6663
    :cond_20
    if-nez v0, :cond_42

    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 6664
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x18

    if-ge v2, v3, :cond_42

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 6665
    const-string v3, "android.infoText"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_42

    .line 6666
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 6668
    :cond_42
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6a

    .line 6669
    nop

    .line 6670
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 6669
    invoke-virtual {p0, v0, p2}, Landroid/app/Notification$Builder;->ensureColorSpanContrastOrStripStyling(Ljava/lang/CharSequence;Landroid/app/Notification$StandardTemplateParams;)Ljava/lang/CharSequence;

    move-result-object v0

    const v2, 0x102034e

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6671
    invoke-direct {p0, p1, v2, p2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 6672
    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6673
    if-eqz p3, :cond_68

    .line 6674
    const p3, 0x102034f

    invoke-virtual {p1, p3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6675
    invoke-direct {p0, p1, p3, p2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 6677
    :cond_68
    const/4 p1, 0x1

    return p1

    .line 6679
    :cond_6a
    return v1
.end method

.method private blacklist bindHeaderTextSecondary(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)Z
    .registers 7

    .line 6687
    iget-boolean v0, p2, Landroid/app/Notification$StandardTemplateParams;->mHideSubText:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 6688
    return v1

    .line 6690
    :cond_6
    iget-object v0, p2, Landroid/app/Notification$StandardTemplateParams;->mHeaderTextSecondary:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 6691
    iget-object v0, p2, Landroid/app/Notification$StandardTemplateParams;->mHeaderTextSecondary:Ljava/lang/CharSequence;

    .line 6693
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 6692
    invoke-virtual {p0, v0, p2}, Landroid/app/Notification$Builder;->ensureColorSpanContrastOrStripStyling(Ljava/lang/CharSequence;Landroid/app/Notification$StandardTemplateParams;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 6691
    const v2, 0x1020350

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6694
    invoke-direct {p0, p1, v2, p2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 6695
    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6696
    if-eqz p3, :cond_2f

    .line 6697
    const p3, 0x1020351

    invoke-virtual {p1, p3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6698
    invoke-direct {p0, p1, p3, p2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 6700
    :cond_2f
    const/4 p1, 0x1

    return p1

    .line 6702
    :cond_31
    return v1
.end method

.method private blacklist bindLargeIcon(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V
    .registers 11

    .line 6499
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-$$Nest$fgetmLargeIcon(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1b

    .line 6500
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-static {v1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/Notification;->-$$Nest$fputmLargeIcon(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)V

    .line 6504
    :cond_1b
    iget-boolean v0, p2, Landroid/app/Notification$StandardTemplateParams;->mHideLeftIcon:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    move-object v0, v1

    goto :goto_28

    :cond_22
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-$$Nest$fgetmLargeIcon(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 6505
    :goto_28
    iget-boolean v2, p2, Landroid/app/Notification$StandardTemplateParams;->mHideRightIcon:Z

    if-eqz v2, :cond_2e

    move-object v2, v1

    goto :goto_3b

    .line 6506
    :cond_2e
    iget-object v2, p2, Landroid/app/Notification$StandardTemplateParams;->mPromotedPicture:Landroid/graphics/drawable/Icon;

    if-eqz v2, :cond_35

    iget-object v2, p2, Landroid/app/Notification$StandardTemplateParams;->mPromotedPicture:Landroid/graphics/drawable/Icon;

    goto :goto_3b

    :cond_35
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v2}, Landroid/app/Notification;->-$$Nest$fgetmLargeIcon(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    .line 6509
    :goto_3b
    const v3, 0x1020577

    const v4, 0x10203b8

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v0, v2, :cond_4c

    if-nez v0, :cond_48

    goto :goto_4c

    .line 6517
    :cond_48
    invoke-virtual {p1, v4, v3, v5}, Landroid/widget/RemoteViews;->setIntTag(III)V

    goto :goto_52

    .line 6512
    :cond_4c
    :goto_4c
    invoke-virtual {p1, v4, v0}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 6513
    invoke-virtual {p1, v4, v3, v6}, Landroid/widget/RemoteViews;->setIntTag(III)V

    .line 6521
    :goto_52
    iget-object v0, p2, Landroid/app/Notification$StandardTemplateParams;->mPromotedPicture:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_58

    move v0, v5

    goto :goto_59

    :cond_58
    move v0, v6

    .line 6522
    :goto_59
    invoke-direct {p0, v2, v0, p3}, Landroid/app/Notification$Builder;->calculateRightIconDimens(Landroid/graphics/drawable/Icon;ZLandroid/app/Notification$TemplateBindResult;)V

    .line 6525
    const v3, 0x1020571

    const v4, 0x10204da

    if-eqz v2, :cond_93

    .line 6526
    iget v1, p3, Landroid/app/Notification$TemplateBindResult;->mRightIconWidthDp:F

    invoke-virtual {p1, v4, v1, v5}, Landroid/widget/RemoteViews;->setViewLayoutWidth(IFI)V

    .line 6528
    iget p3, p3, Landroid/app/Notification$TemplateBindResult;->mRightIconHeightDp:F

    invoke-virtual {p1, v4, p3, v5}, Landroid/widget/RemoteViews;->setViewLayoutHeight(IFI)V

    .line 6530
    invoke-virtual {p1, v4, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6531
    invoke-virtual {p1, v4, v2}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 6532
    nop

    .line 6533
    nop

    .line 6532
    invoke-virtual {p1, v4, v3, v0}, Landroid/widget/RemoteViews;->setIntTag(III)V

    .line 6534
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result p3

    if-nez p3, :cond_85

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->uiRichOngoing()Z

    move-result p3

    if-eqz p3, :cond_8f

    .line 6535
    :cond_85
    nop

    .line 6536
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->getLargeIconMarginEnd(Landroid/app/Notification$StandardTemplateParams;)I

    move-result p3

    int-to-float p3, p3

    .line 6535
    const/4 v0, 0x5

    invoke-virtual {p1, v4, v0, p3, v6}, Landroid/widget/RemoteViews;->setViewLayoutMargin(IIFI)V

    .line 6539
    :cond_8f
    invoke-direct {p0, v2, p1, p2}, Landroid/app/Notification$Builder;->processLargeLegacyIcon(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    goto :goto_99

    .line 6544
    :cond_93
    invoke-virtual {p1, v4, v1}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 6545
    invoke-virtual {p1, v4, v3, v6}, Landroid/widget/RemoteViews;->setIntTag(III)V

    .line 6547
    :goto_99
    return-void
.end method

.method private blacklist bindLargeIconAndApplyMargin(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V
    .registers 6

    .line 6397
    if-nez p3, :cond_8

    .line 6398
    new-instance p3, Landroid/app/Notification$TemplateBindResult;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Landroid/app/Notification$TemplateBindResult;-><init>(Landroid/app/Notification-IA;)V

    .line 6400
    :cond_8
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Notification$Builder;->bindLargeIcon(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V

    .line 6401
    iget-boolean v0, p2, Landroid/app/Notification$StandardTemplateParams;->mHeaderless:Z

    if-nez v0, :cond_43

    .line 6402
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->isPromotedOngoing()Z

    move-result v0

    const v1, 0x1020436

    if-eqz v0, :cond_20

    .line 6404
    iget-object v0, p3, Landroid/app/Notification$TemplateBindResult;->mHeadingFullMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    invoke-virtual {v0, p1, v1}, Landroid/app/Notification$TemplateBindResult$MarginSet;->applyToView(Landroid/widget/RemoteViews;I)V

    goto :goto_25

    .line 6406
    :cond_20
    iget-object v0, p3, Landroid/app/Notification$TemplateBindResult;->mHeadingExtraMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    invoke-virtual {v0, p1, v1}, Landroid/app/Notification$TemplateBindResult$MarginSet;->applyToView(Landroid/widget/RemoteViews;I)V

    .line 6409
    :goto_25
    iget-object v0, p3, Landroid/app/Notification$TemplateBindResult;->mTitleMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    const v1, 0x1020016

    invoke-virtual {v0, p1, v1}, Landroid/app/Notification$TemplateBindResult$MarginSet;->applyToView(Landroid/widget/RemoteViews;I)V

    .line 6411
    iget-object v0, p3, Landroid/app/Notification$TemplateBindResult;->mTitleMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    iget v1, p2, Landroid/app/Notification$StandardTemplateParams;->mTextViewId:I

    invoke-virtual {v0, p1, v1}, Landroid/app/Notification$TemplateBindResult$MarginSet;->applyToView(Landroid/widget/RemoteViews;I)V

    .line 6412
    iget v0, p2, Landroid/app/Notification$StandardTemplateParams;->mTextViewId:I

    invoke-virtual {p2}, Landroid/app/Notification$StandardTemplateParams;->hasTitle()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    const-string/jumbo v1, "setNumIndentLines"

    invoke-virtual {p1, v0, v1, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_5d

    .line 6413
    :cond_43
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-boolean p2, p2, Landroid/app/Notification$StandardTemplateParams;->mNeedsExtraTextMargin:Z

    if-eqz p2, :cond_5d

    .line 6416
    iget-object p2, p3, Landroid/app/Notification$TemplateBindResult;->mHeadingFullMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    const v0, 0x1020445

    invoke-virtual {p2, p1, v0}, Landroid/app/Notification$TemplateBindResult$MarginSet;->applyToView(Landroid/widget/RemoteViews;I)V

    .line 6419
    iget-object p2, p3, Landroid/app/Notification$TemplateBindResult;->mTitleMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    const v0, 0x1020439

    invoke-virtual {p2, p1, v0}, Landroid/app/Notification$TemplateBindResult$MarginSet;->applyToView(Landroid/widget/RemoteViews;I)V

    .line 6423
    :cond_5d
    :goto_5d
    iget-boolean p2, p3, Landroid/app/Notification$TemplateBindResult;->mRightIconVisible:Z

    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->adjustExpandButtonPadding(Landroid/widget/RemoteViews;Z)V

    .line 6424
    return-void
.end method

.method private blacklist bindNotificationHeader(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V
    .registers 7

    .line 6573
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->bindSmallIcon(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    .line 6575
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->apiMetricStyle()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1a

    iget v0, p2, Landroid/app/Notification$StandardTemplateParams;->mTitleViewId:I

    const v3, 0x1020208

    if-ne v0, v3, :cond_1a

    .line 6576
    invoke-virtual {p2}, Landroid/app/Notification$StandardTemplateParams;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v2

    goto :goto_1b

    :cond_1a
    move v0, v1

    .line 6578
    :goto_1b
    invoke-direct {p0, p1, p2, v1, v0}, Landroid/app/Notification$Builder;->bindHeaderAppName(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 6579
    invoke-direct {p0, p1, p2, v0}, Landroid/app/Notification$Builder;->bindHeaderTextSecondary(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 6580
    invoke-direct {p0, p1, p2, v0}, Landroid/app/Notification$Builder;->bindHeaderText(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 6581
    if-nez v0, :cond_31

    .line 6583
    invoke-direct {p0, p1, p2, v2, v0}, Landroid/app/Notification$Builder;->bindHeaderAppName(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 6585
    :cond_31
    invoke-direct {p0, p1, p2, v0}, Landroid/app/Notification$Builder;->bindHeaderChronometerAndTime(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)V

    .line 6586
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->bindPhishingAlertIcon(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    .line 6587
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->bindProfileBadge(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    .line 6588
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->bindAlertedIcon(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    .line 6589
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->bindExpandButton(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    .line 6590
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->bindCloseButton(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    .line 6591
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {p1, v2}, Landroid/app/Notification;->-$$Nest$fputmUsesStandardHeader(Landroid/app/Notification;Z)V

    .line 6592
    return-void
.end method

.method private blacklist bindPhishingAlertIcon(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V
    .registers 6

    .line 6111
    nop

    .line 6114
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Notification$Colors;->getSemanticRedContainerHighColor()I

    move-result p2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 6111
    const v1, 0x102047f

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, p2, v0}, Landroid/widget/RemoteViews;->setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V

    .line 6116
    return-void
.end method

.method private blacklist bindProfileBadge(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V
    .registers 6

    .line 6119
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/Notification;->getProfileBadge(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 6121
    if-eqz v0, :cond_39

    .line 6122
    const v1, 0x102049a

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 6123
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6124
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->isBackgroundColorized(Landroid/app/Notification$StandardTemplateParams;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 6125
    nop

    .line 6126
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->getPrimaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result p2

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 6125
    invoke-virtual {p1, v1, v0, p2, v2}, Landroid/widget/RemoteViews;->setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V

    .line 6128
    :cond_22
    iget-object p2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/UserManager;

    .line 6130
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 6131
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/UserManager;->getProfileAccessibilityString(I)Ljava/lang/String;

    move-result-object p2

    .line 6128
    invoke-virtual {p1, v1, p2}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 6133
    :cond_39
    return-void
.end method

.method private blacklist bindSmallIcon(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V
    .registers 6

    .line 6760
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-$$Nest$fgetmSmallIcon(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->icon:I

    if-eqz v0, :cond_1d

    .line 6761
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->icon:I

    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/Notification;->-$$Nest$fputmSmallIcon(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)V

    .line 6763
    :cond_1d
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-$$Nest$fgetmSmallIcon(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    const v1, 0x1020006

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 6764
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->iconLevel:I

    const-string/jumbo v2, "setImageLevel"

    invoke-virtual {p1, v1, v2, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 6765
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-$$Nest$fgetmSmallIcon(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Landroid/app/Notification$Builder;->processSmallIconColor(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    .line 6766
    return-void
.end method

.method private blacklist bindSnoozeAction(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)Z
    .registers 8

    .line 6801
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->isFgsOrUij()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1f

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_1f

    .line 6803
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->isBackgroundColorized(Landroid/app/Notification$StandardTemplateParams;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget p2, p2, Landroid/app/Notification$StandardTemplateParams;->mViewType:I

    sget v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_EXPANDED:I

    if-eq p2, v0, :cond_1d

    goto :goto_1f

    :cond_1d
    move p2, v1

    goto :goto_20

    :cond_1f
    :goto_1f
    move p2, v2

    .line 6805
    :goto_20
    xor-int/lit8 v0, p2, 0x1

    const v3, 0x102053a

    const-string/jumbo v4, "setEnabled"

    invoke-virtual {p1, v3, v4, v0}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 6806
    if-eqz p2, :cond_32

    .line 6808
    const/16 v0, 0x8

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6811
    :cond_32
    if-nez p2, :cond_43

    iget-object p2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 6812
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    if-eqz p2, :cond_43

    .line 6813
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isSnoozeSettingEnabled()Z

    move-result p2

    if-eqz p2, :cond_43

    goto :goto_44

    :cond_43
    move v2, v1

    .line 6814
    :goto_44
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result p2

    if-nez p2, :cond_53

    if-eqz v2, :cond_53

    .line 6815
    const p2, 0x1020434

    const/4 v0, 0x3

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/RemoteViews;->setViewLayoutMarginDimen(III)V

    .line 6818
    :cond_53
    return v2
.end method

.method private blacklist calculateRightIconDimens(Landroid/graphics/drawable/Icon;ZLandroid/app/Notification$TemplateBindResult;)V
    .registers 10

    .line 6444
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 6445
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 6446
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 6447
    const v2, 0x10502a0

    goto :goto_19

    .line 6448
    :cond_16
    const v2, 0x10502c1

    .line 6449
    :goto_19
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    div-float/2addr v2, v1

    .line 6450
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 6451
    const v3, 0x10502a5

    goto :goto_2b

    .line 6452
    :cond_28
    const v3, 0x10502fe

    .line 6453
    :goto_2b
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    div-float/2addr v3, v1

    .line 6454
    const v4, 0x10502c2

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    div-float/2addr v4, v1

    .line 6457
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->uiRichOngoing()Z

    move-result v5

    if-eqz v5, :cond_4e

    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v5}, Landroid/app/Notification;->isPromotedOngoing()Z

    move-result v5

    if-eqz v5, :cond_4e

    iget-object v5, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    iget-boolean v5, v5, Landroid/app/Notification$StandardTemplateParams;->mHeaderless:Z

    if-nez v5, :cond_4e

    .line 6459
    const/4 v4, 0x0

    goto :goto_68

    .line 6461
    :cond_4e
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 6462
    iget-object v4, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {p0, v4}, Landroid/app/Notification$Builder;->getLargeIconMarginEnd(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    sub-float/2addr v4, v2

    goto :goto_68

    .line 6465
    :cond_5e
    const v5, 0x10502d2

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    div-float/2addr v5, v1

    sub-float v4, v5, v4

    .line 6471
    :goto_68
    const v5, 0x1050300

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    div-float/2addr v0, v1

    .line 6473
    nop

    .line 6474
    if-eqz p1, :cond_a2

    if-nez p2, :cond_81

    iget-object p2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 6475
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1f

    if-lt p2, v1, :cond_a2

    .line 6476
    :cond_81
    iget-object p2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 6477
    if-eqz p2, :cond_a2

    .line 6478
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 6479
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    .line 6480
    if-le v1, p2, :cond_a2

    if-lez p2, :cond_a2

    .line 6481
    const v5, 0x3fe38e39

    mul-float/2addr v5, v0

    .line 6482
    int-to-float v1, v1

    mul-float/2addr v1, v0

    int-to-float p2, p2

    div-float/2addr v1, p2

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_a3

    .line 6487
    :cond_a2
    move p2, v0

    :goto_a3
    if-eqz p1, :cond_a7

    const/4 p1, 0x1

    goto :goto_a8

    :cond_a7
    const/4 p1, 0x0

    :goto_a8
    invoke-virtual {p3, p1, p2, v0}, Landroid/app/Notification$TemplateBindResult;->setRightIconState(ZFF)V

    .line 6489
    add-float/2addr p2, v3

    .line 6490
    invoke-virtual {p3, p2, v4, v2}, Landroid/app/Notification$TemplateBindResult;->calculateMargins(FFF)V

    .line 6492
    return-void
.end method

.method private blacklist createExpandedContentView()Landroid/widget/RemoteViews;
    .registers 5

    .line 7164
    nop

    .line 7165
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->useExistingRemoteView(Landroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 7166
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->fullyCustomViewRequiresDecoration(Z)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 7167
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->minimallyDecoratedExpandedContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_1f

    .line 7168
    :cond_1b
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 7166
    :goto_1f
    return-object v0

    .line 7170
    :cond_20
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_37

    .line 7171
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0}, Landroid/app/Notification$Style;->makeExpandedContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 7172
    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->fullyCustomViewRequiresDecoration(Z)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 7173
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->minimallyDecoratedExpandedContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_38

    .line 7170
    :cond_37
    move-object v0, v2

    .line 7176
    :cond_38
    :goto_38
    if-nez v0, :cond_5c

    .line 7177
    invoke-direct {p0}, Landroid/app/Notification$Builder;->expandedContentViewRequired()Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 7178
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v3, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_EXPANDED:I

    .line 7179
    invoke-virtual {v0, v3}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 7180
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->allowTextWithProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 7181
    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 7182
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getExpandedBaseLayoutResource()I

    move-result v1

    invoke-direct {p0, v1, v0, v2}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 7186
    :cond_5c
    invoke-static {v0}, Landroid/app/Notification$Builder;->makeHeaderExpanded(Landroid/widget/RemoteViews;)V

    .line 7187
    return-object v0
.end method

.method private greylist-max-o createSummaryText()Ljava/lang/CharSequence;
    .registers 6

    .line 7409
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 7410
    sget-boolean v1, Landroid/app/Notification$Builder;->USE_ONLY_TITLE_IN_LOW_PRIORITY_SUMMARY:Z

    if-eqz v1, :cond_f

    .line 7411
    return-object v0

    .line 7413
    :cond_f
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 7414
    if-nez v0, :cond_20

    .line 7415
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.title.big"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 7417
    :cond_20
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v2

    .line 7418
    if-eqz v0, :cond_2d

    .line 7419
    invoke-virtual {v2, v0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 7421
    :cond_2d
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.text"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 7422
    if-eqz v0, :cond_4b

    if-eqz v3, :cond_4b

    .line 7423
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    const v4, 0x104071d

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 7426
    :cond_4b
    if-eqz v3, :cond_54

    .line 7427
    invoke-virtual {v2, v3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 7429
    :cond_54
    return-object v1
.end method

.method public static blacklist ensureButtonFillContrast(II)I
    .registers 4

    .line 7654
    const-wide v0, 0x3ff4cccccccccccdL    # 1.3

    invoke-static {p0, p1, v0, v1}, Landroid/app/Notification$Builder;->ensureColorContrast(IID)I

    move-result p0

    return p0
.end method

.method private static blacklist ensureColorContrast(IID)I
    .registers 6

    .line 7659
    invoke-static {p1}, Landroid/app/Notification$Builder;->isColorDark(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 7660
    invoke-static {p0, p1, v1, p2, p3}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColorAgainstDark(IIZD)I

    move-result p0

    goto :goto_10

    .line 7661
    :cond_c
    invoke-static {p0, p1, v1, p2, p3}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result p0

    .line 7659
    :goto_10
    return p0
.end method

.method private blacklist expandedContentViewRequired()Z
    .registers 5

    .line 7197
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationExpansionOptional()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_20

    .line 7199
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_1c

    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-nez v0, :cond_1c

    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 7200
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1c

    move v1, v2

    goto :goto_1d

    :cond_1c
    nop

    .line 7201
    :goto_1d
    xor-int/lit8 v0, v1, 0x1

    return v0

    .line 7203
    :cond_20
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1f

    if-lt v0, v3, :cond_2d

    .line 7204
    return v2

    .line 7209
    :cond_2d
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_47

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_47

    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-nez v0, :cond_47

    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 7210
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_47

    move v1, v2

    goto :goto_48

    :cond_47
    nop

    .line 7211
    :goto_48
    xor-int/lit8 v0, v1, 0x1

    return v0
.end method

.method private blacklist fullyCustomViewRequiresDecoration(Z)Z
    .registers 4

    .line 7077
    const/4 v0, 0x0

    if-eqz p1, :cond_c

    iget-object p1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-static {p1}, Landroid/app/Notification;->-$$Nest$smisPlatformStyle(Landroid/app/Notification$Style;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 7078
    return v0

    .line 7080
    :cond_c
    iget-object p1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1f

    if-lt p1, v1, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0
.end method

.method private blacklist generateActionButton(Landroid/app/Notification$Action;ZLandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;
    .registers 12

    .line 7434
    iget-object v0, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    move v0, v1

    .line 7435
    :goto_8
    new-instance v2, Landroid/app/Notification$BuilderRemoteViews;

    iget-object v3, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 7436
    invoke-direct {p0, p2, v0}, Landroid/app/Notification$Builder;->getActionButtonLayoutResource(ZZ)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 7437
    const v3, 0x10201d2

    if-nez v0, :cond_21

    .line 7438
    iget-object v4, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 7440
    :cond_21
    iget-object v4, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 7441
    invoke-static {p1}, Landroid/app/Notification$Action;->-$$Nest$fgetmRemoteInputs(Landroid/app/Notification$Action;)[Landroid/app/RemoteInput;

    move-result-object v4

    if-eqz v4, :cond_33

    .line 7442
    invoke-static {p1}, Landroid/app/Notification$Action;->-$$Nest$fgetmRemoteInputs(Landroid/app/Notification$Action;)[Landroid/app/RemoteInput;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setRemoteInputs(I[Landroid/app/RemoteInput;)V

    .line 7444
    :cond_33
    if-eqz p2, :cond_130

    .line 7446
    iget-object p2, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 7447
    invoke-direct {p0, p3}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Colors;->getSecondaryAccentColor()I

    move-result v4

    .line 7448
    if-eqz v0, :cond_5a

    .line 7449
    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 7451
    invoke-direct {p0, p3}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification$Colors;->getBackgroundColor()I

    move-result v6

    iget-boolean v7, p0, Landroid/app/Notification$Builder;->mInNightMode:Z

    .line 7450
    invoke-static {v5, v6, v7}, Lcom/android/internal/util/ContrastColorUtil;->resolveSecondaryColor(Landroid/content/Context;IZ)I

    move-result v5

    .line 7449
    const v6, 0x10502ac

    invoke-static {v4, v5, v6}, Landroid/app/Notification$Builder;->setAlphaComponentByFloatDimen(Landroid/content/Context;II)I

    move-result v4

    .line 7454
    :cond_5a
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->cleanUpSpansAndNewLines()Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 7455
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v5

    if-nez v5, :cond_a4

    .line 7457
    invoke-static {p2}, Landroid/app/Notification$Builder;->getFullLengthSpanColor(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v5

    .line 7458
    if-eqz v5, :cond_7d

    .line 7460
    invoke-direct {p0, p3}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Colors;->getBackgroundColor()I

    move-result v4

    .line 7461
    nop

    .line 7462
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 7461
    invoke-static {v5, v4}, Landroid/app/Notification$Builder;->ensureButtonFillContrast(II)I

    move-result v4

    .line 7464
    :cond_7d
    goto :goto_a4

    .line 7466
    :cond_7e
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v5

    if-eqz v5, :cond_89

    .line 7467
    invoke-static {p2}, Lcom/android/internal/util/ContrastColorUtil;->clearColorSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_a4

    .line 7470
    :cond_89
    invoke-static {p2}, Landroid/app/Notification$Builder;->getFullLengthSpanColor(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v5

    .line 7471
    if-eqz v5, :cond_a0

    .line 7473
    invoke-direct {p0, p3}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Colors;->getBackgroundColor()I

    move-result v4

    .line 7474
    nop

    .line 7475
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 7474
    invoke-static {v5, v4}, Landroid/app/Notification$Builder;->ensureButtonFillContrast(II)I

    move-result v4

    .line 7479
    :cond_a0
    invoke-static {p2, v4}, Lcom/android/internal/util/ContrastColorUtil;->ensureColorSpanContrast(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 7484
    :cond_a4
    :goto_a4
    invoke-virtual {p0, p2, p3}, Landroid/app/Notification$Builder;->ensureColorSpanContrastOrStripStyling(Ljava/lang/CharSequence;Landroid/app/Notification$StandardTemplateParams;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 7485
    iget-boolean v5, p3, Landroid/app/Notification$StandardTemplateParams;->mCallStyleActions:Z

    const-string v6, "Notification"

    if-eqz v5, :cond_ba

    .line 7487
    const-string/jumbo v5, "new action layout enabled, gluing instead of setting text"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7489
    const-string v5, "glueLabel"

    invoke-virtual {v2, v3, v5, p2}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_bd

    .line 7491
    :cond_ba
    invoke-virtual {v2, v3, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 7493
    :goto_bd
    iget-object p2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-boolean v5, p0, Landroid/app/Notification$Builder;->mInNightMode:Z

    invoke-static {p2, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->resolvePrimaryColor(Landroid/content/Context;IZ)I

    move-result p2

    .line 7495
    if-eqz v0, :cond_e0

    .line 7496
    iget-object p2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 7498
    invoke-direct {p0, p3}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification$Colors;->getBackgroundColor()I

    move-result v5

    iget-boolean v7, p0, Landroid/app/Notification$Builder;->mInNightMode:Z

    .line 7497
    invoke-static {v0, v5, v7}, Lcom/android/internal/util/ContrastColorUtil;->resolveSecondaryColor(Landroid/content/Context;IZ)I

    move-result v0

    .line 7496
    const v5, 0x10502ad

    invoke-static {p2, v0, v5}, Landroid/app/Notification$Builder;->setAlphaComponentByFloatDimen(Landroid/content/Context;II)I

    move-result p2

    .line 7501
    :cond_e0
    invoke-virtual {v2, v3, p2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 7503
    const v0, 0xffffff

    and-int/2addr p2, v0

    const/high16 v0, 0x33000000

    or-int/2addr p2, v0

    .line 7504
    nop

    .line 7505
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 7504
    const-string/jumbo v0, "setRippleColor"

    invoke-virtual {v2, v3, v0, p2}, Landroid/widget/RemoteViews;->setColorStateList(ILjava/lang/String;Landroid/content/res/ColorStateList;)V

    .line 7506
    nop

    .line 7507
    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 7506
    const-string/jumbo v0, "setButtonBackground"

    invoke-virtual {v2, v3, v0, p2}, Landroid/widget/RemoteViews;->setColorStateList(ILjava/lang/String;Landroid/content/res/ColorStateList;)V

    .line 7508
    iget-boolean p2, p3, Landroid/app/Notification$StandardTemplateParams;->mCallStyleActions:Z

    if-eqz p2, :cond_12f

    .line 7510
    const-string/jumbo p2, "new action layout enabled, gluing instead of setting icon"

    invoke-static {v6, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7512
    const-string p2, "glueIcon"

    invoke-virtual {p1}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p3

    invoke-virtual {v2, v3, p2, p3}, Landroid/widget/RemoteViews;->setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;)V

    .line 7513
    invoke-virtual {p1}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string/jumbo p3, "key_action_priority"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 7514
    const-string/jumbo p3, "setIsPriority"

    invoke-virtual {v2, v3, p3, p2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 7516
    if-eqz p2, :cond_129

    const v1, 0x1050090

    .line 7517
    :cond_129
    const-string/jumbo p2, "setMinimumWidth"

    invoke-virtual {v2, v3, p2, v1}, Landroid/widget/RemoteViews;->setIntDimen(ILjava/lang/String;I)V

    .line 7519
    :cond_12f
    goto :goto_140

    .line 7520
    :cond_130
    iget-object p2, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, p2, p3}, Landroid/app/Notification$Builder;->ensureColorSpanContrastOrStripStyling(Ljava/lang/CharSequence;Landroid/app/Notification$StandardTemplateParams;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 7522
    invoke-direct {p0, p3}, Landroid/app/Notification$Builder;->getStandardActionColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result p2

    invoke-virtual {v2, v3, p2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 7526
    :goto_140
    iget-object p2, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 7527
    const/4 p2, -0x1

    if-eq p1, p2, :cond_14f

    .line 7528
    const p2, 0x1020433

    invoke-virtual {v2, v3, p2, p1}, Landroid/widget/RemoteViews;->setIntTag(III)V

    .line 7530
    :cond_14f
    return-object v2
.end method

.method private blacklist getActionButtonLayoutResource(ZZ)I
    .registers 3

    .line 7534
    if-eqz p1, :cond_e

    .line 7535
    if-eqz p2, :cond_9

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getEmphasizedTombstoneActionLayoutResource()I

    move-result p1

    goto :goto_d

    .line 7536
    :cond_9
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getEmphasizedActionLayoutResource()I

    move-result p1

    .line 7535
    :goto_d
    return p1

    .line 7538
    :cond_e
    if-eqz p2, :cond_15

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getActionTombstoneLayoutResource()I

    move-result p1

    goto :goto_19

    .line 7539
    :cond_15
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getActionLayoutResource()I

    move-result p1

    .line 7538
    :goto_19
    return p1
.end method

.method private greylist-max-o getActionLayoutResource()I
    .registers 2

    .line 8131
    const v0, 0x10900d6

    return v0
.end method

.method private greylist-max-o getActionTombstoneLayoutResource()I
    .registers 2

    .line 8143
    const v0, 0x10900da

    return v0
.end method

.method private blacklist getBackgroundColor(Landroid/app/Notification$StandardTemplateParams;)I
    .registers 2

    .line 8147
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification$Colors;->getBackgroundColor()I

    move-result p1

    return p1
.end method

.method private greylist-max-o getBigPictureLayoutResource()I
    .registers 2

    .line 8029
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 8030
    const v0, 0x10900c5

    return v0

    .line 8032
    :cond_a
    const v0, 0x10900e5

    return v0
.end method

.method private greylist-max-o getBigTextLayoutResource()I
    .registers 2

    .line 8037
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 8038
    const v0, 0x10900c6

    return v0

    .line 8040
    :cond_a
    const v0, 0x10900e6

    return v0
.end method

.method private greylist getCollapsedBaseLayoutResource()I
    .registers 2

    .line 7989
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7990
    const v0, 0x10900bc

    return v0

    .line 7992
    :cond_a
    const v0, 0x10900e0

    return v0
.end method

.method private blacklist getCollapsedCallLayoutResource()I
    .registers 2

    .line 8107
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 8108
    const v0, 0x10900bd

    return v0

    .line 8110
    :cond_a
    const v0, 0x10900e7

    return v0
.end method

.method private blacklist getCollapsedConversationLayoutResource()I
    .registers 2

    .line 8099
    const v0, 0x10900be

    return v0
.end method

.method private blacklist getCollapsedMediaLayoutResource()I
    .registers 2

    .line 8077
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 8078
    const v0, 0x10900bf

    return v0

    .line 8080
    :cond_a
    const v0, 0x10900ec

    return v0
.end method

.method private blacklist getCollapsedMessagingLayoutResource()I
    .registers 2

    .line 8053
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 8054
    const v0, 0x10900c0

    return v0

    .line 8056
    :cond_a
    const v0, 0x10900ed

    return v0
.end method

.method private blacklist getCollapsedMetricLayoutResource()I
    .registers 2

    .line 8069
    const v0, 0x10900c1

    return v0
.end method

.method private blacklist getColorUtil()Lcom/android/internal/util/ContrastColorUtil;
    .registers 2

    .line 4893
    iget-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/ContrastColorUtil;

    if-nez v0, :cond_c

    .line 4894
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/ContrastColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/ContrastColorUtil;

    .line 4896
    :cond_c
    iget-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/ContrastColorUtil;

    return-object v0
.end method

.method private blacklist getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;
    .registers 6

    .line 6333
    iget-object v0, p0, Landroid/app/Notification$Builder;->mColors:Landroid/app/Notification$Colors;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->color:I

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->isBackgroundColorized(Landroid/app/Notification$StandardTemplateParams;)Z

    move-result p1

    iget-boolean v3, p0, Landroid/app/Notification$Builder;->mInNightMode:Z

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/app/Notification$Colors;->resolvePalette(Landroid/content/Context;IZZ)V

    .line 6334
    iget-object p1, p0, Landroid/app/Notification$Builder;->mColors:Landroid/app/Notification$Colors;

    return-object p1
.end method

.method private blacklist getCompactHeadsUpBaseLayoutResource()I
    .registers 2

    .line 8005
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 8006
    const v0, 0x10900c2

    return v0

    .line 8008
    :cond_a
    const v0, 0x10900e8

    return v0
.end method

.method public static blacklist getContentMarginTop(Landroid/content/Context;I)I
    .registers 4

    .line 7004
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 7006
    const v0, 0x10502a0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 7008
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 7010
    const v1, 0x1050305

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 7013
    add-int/2addr v0, p1

    add-int/2addr v0, p0

    return v0
.end method

.method private blacklist getConversationLayoutResource()I
    .registers 2

    .line 8095
    const v0, 0x10900e9

    return v0
.end method

.method private greylist-max-o getEmphasizedActionLayoutResource()I
    .registers 2

    .line 8135
    const v0, 0x10900d7

    return v0
.end method

.method private blacklist getEmphasizedTombstoneActionLayoutResource()I
    .registers 2

    .line 8139
    const v0, 0x10900d8

    return v0
.end method

.method private blacklist getExpandedBaseLayoutResource()I
    .registers 2

    .line 8021
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 8022
    const v0, 0x10900c4

    return v0

    .line 8024
    :cond_a
    const v0, 0x10900e1

    return v0
.end method

.method private blacklist getExpandedCallLayoutResource()I
    .registers 2

    .line 8115
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 8116
    const v0, 0x10900c7

    return v0

    .line 8118
    :cond_a
    const v0, 0x10900e2

    return v0
.end method

.method private blacklist getExpandedConversationLayoutResource()I
    .registers 2

    .line 8103
    const v0, 0x10900c8

    return v0
.end method

.method private blacklist getExpandedMediaLayoutResource()I
    .registers 2

    .line 8085
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 8086
    const v0, 0x10900ca

    return v0

    .line 8088
    :cond_a
    const v0, 0x10900e3

    return v0
.end method

.method private blacklist getExpandedMessagingLayoutResource()I
    .registers 2

    .line 8061
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 8062
    const v0, 0x10900cb

    return v0

    .line 8064
    :cond_a
    const v0, 0x10900e4

    return v0
.end method

.method private blacklist getExpandedMetricLayoutResource()I
    .registers 2

    .line 8073
    const v0, 0x10900cc

    return v0
.end method

.method public static blacklist getFullLengthSpanColor(Ljava/lang/CharSequence;)Ljava/lang/Integer;
    .registers 10

    .line 7566
    nop

    .line 7567
    instance-of v0, p0, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-eqz v0, :cond_55

    .line 7568
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    .line 7569
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v2

    const-class v3, Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v0, v4, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 7572
    array-length v3, v2

    move v5, v4

    :goto_16
    if-ge v5, v3, :cond_55

    aget-object v6, v2, v5

    .line 7573
    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 7574
    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 7575
    sub-int/2addr v8, v7

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ne v8, v7, :cond_2b

    const/4 v7, 0x1

    goto :goto_2c

    :cond_2b
    move v7, v4

    .line 7576
    :goto_2c
    if-nez v7, :cond_2f

    .line 7577
    goto :goto_52

    .line 7579
    :cond_2f
    instance-of v7, v6, Landroid/text/style/TextAppearanceSpan;

    if-eqz v7, :cond_44

    .line 7580
    check-cast v6, Landroid/text/style/TextAppearanceSpan;

    .line 7581
    invoke-virtual {v6}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 7582
    if-eqz v6, :cond_43

    .line 7583
    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 7585
    :cond_43
    goto :goto_52

    :cond_44
    instance-of v7, v6, Landroid/text/style/ForegroundColorSpan;

    if-eqz v7, :cond_43

    .line 7586
    check-cast v6, Landroid/text/style/ForegroundColorSpan;

    .line 7587
    invoke-virtual {v6}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 7572
    :goto_52
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 7591
    :cond_55
    return-object v1
.end method

.method private blacklist getHeaderLayoutResource()I
    .registers 2

    .line 7980
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7981
    const v0, 0x10900ce

    return v0

    .line 7983
    :cond_a
    const v0, 0x10900df

    return v0
.end method

.method private blacklist getHeadsUpBaseLayoutResource()I
    .registers 2

    .line 7997
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7998
    const v0, 0x10900cf

    return v0

    .line 8000
    :cond_a
    const v0, 0x10900ea

    return v0
.end method

.method private greylist-max-o getInboxLayoutResource()I
    .registers 2

    .line 8045
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 8046
    const v0, 0x10900c9

    return v0

    .line 8048
    :cond_a
    const v0, 0x10900eb

    return v0
.end method

.method private blacklist getMessagingCompactHeadsUpLayoutResource()I
    .registers 2

    .line 8013
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 8014
    const v0, 0x10900c3

    return v0

    .line 8016
    :cond_a
    const v0, 0x10900ee

    return v0
.end method

.method private blacklist getNonContextualActions()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation

    .line 6836
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 6837
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6838
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$Action;

    .line 6840
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v3}, Landroid/app/Notification;->isPromotedOngoing()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 6841
    invoke-direct {p0, v2}, Landroid/app/Notification$Builder;->hasValidRemoteInput(Landroid/app/Notification$Action;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 6842
    goto :goto_14

    .line 6844
    :cond_2f
    invoke-virtual {v2}, Landroid/app/Notification$Action;->isContextual()Z

    move-result v3

    if-nez v3, :cond_38

    .line 6845
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6847
    :cond_38
    goto :goto_14

    .line 6848
    :cond_39
    return-object v0
.end method

.method private blacklist getPrimaryAccentColor(Landroid/app/Notification$StandardTemplateParams;)I
    .registers 2

    .line 7756
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification$Colors;->getPrimaryAccentColor()I

    move-result p1

    return p1
.end method

.method private blacklist getProgressLayoutResource()I
    .registers 2

    .line 8123
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 8124
    const v0, 0x10900cd

    return v0

    .line 8126
    :cond_a
    const v0, 0x10900ef

    return v0
.end method

.method private blacklist getSmallIconColor(Landroid/app/Notification$StandardTemplateParams;)I
    .registers 2

    .line 7734
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification$Colors;->getContrastColor()I

    move-result p1

    return p1
.end method

.method private blacklist getStandardActionColor(Landroid/app/Notification$StandardTemplateParams;)I
    .registers 3

    .line 7725
    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mTintActionButtons:Z

    if-nez v0, :cond_10

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->isBackgroundColorized(Landroid/app/Notification$StandardTemplateParams;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_10

    .line 7726
    :cond_b
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->getSecondaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result p1

    goto :goto_14

    :cond_10
    :goto_10
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->getPrimaryAccentColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result p1

    .line 7725
    :goto_14
    return p1
.end method

.method private blacklist handleProgressBar(Landroid/widget/RemoteViews;Landroid/os/Bundle;Landroid/app/Notification$StandardTemplateParams;)Z
    .registers 9

    .line 6376
    const-string v0, "android.progressMax"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 6377
    const-string v2, "android.progress"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 6378
    const-string v3, "android.progressIndeterminate"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 6379
    iget-boolean v3, p3, Landroid/app/Notification$StandardTemplateParams;->mHideProgress:Z

    const v4, 0x102000d

    if-nez v3, :cond_40

    if-nez v0, :cond_1e

    if-eqz p2, :cond_40

    .line 6380
    :cond_1e
    invoke-virtual {p1, v4, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6381
    invoke-virtual {p1, v4, v0, v2, p2}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 6382
    iget-object p2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 6383
    const v0, 0x106030a

    invoke-virtual {p2, v0}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 6382
    invoke-virtual {p1, v4, p2}, Landroid/widget/RemoteViews;->setProgressBackgroundTintList(ILandroid/content/res/ColorStateList;)V

    .line 6384
    invoke-direct {p0, p3}, Landroid/app/Notification$Builder;->getPrimaryAccentColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 6385
    invoke-virtual {p1, v4, p2}, Landroid/widget/RemoteViews;->setProgressTintList(ILandroid/content/res/ColorStateList;)V

    .line 6386
    invoke-virtual {p1, v4, p2}, Landroid/widget/RemoteViews;->setProgressIndeterminateTintList(ILandroid/content/res/ColorStateList;)V

    .line 6387
    const/4 p1, 0x1

    return p1

    .line 6389
    :cond_40
    const/16 p2, 0x8

    invoke-virtual {p1, v4, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6390
    return v1
.end method

.method private greylist-max-o hasValidRemoteInput(Landroid/app/Notification$Action;)Z
    .registers 7

    .line 7017
    iget-object v0, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_31

    iget-object v0, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_e

    goto :goto_31

    .line 7022
    :cond_e
    invoke-virtual {p1}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object p1

    .line 7023
    if-nez p1, :cond_15

    .line 7024
    return v1

    .line 7027
    :cond_15
    array-length v0, p1

    move v2, v1

    :goto_17
    if-ge v2, v0, :cond_30

    aget-object v3, p1, v2

    .line 7028
    invoke-virtual {v3}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 7029
    invoke-virtual {v3}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v3

    if-nez v3, :cond_2e

    if-eqz v4, :cond_2b

    array-length v3, v4

    if-eqz v3, :cond_2b

    goto :goto_2e

    .line 7027
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 7030
    :cond_2e
    :goto_2e
    const/4 p1, 0x1

    return p1

    .line 7033
    :cond_30
    return v1

    .line 7019
    :cond_31
    :goto_31
    return v1
.end method

.method private blacklist isBackgroundColorized(Landroid/app/Notification$StandardTemplateParams;)Z
    .registers 2

    .line 6747
    iget-boolean p1, p1, Landroid/app/Notification$StandardTemplateParams;->allowColorization:Z

    if-eqz p1, :cond_e

    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {p1}, Landroid/app/Notification;->isColorized()Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method private blacklist isCallActionColorCustomizable()Z
    .registers 3

    .line 6755
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->isColorized()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return v0
.end method

.method public static blacklist isColorDark(I)Z
    .registers 5

    .line 7642
    invoke-static {p0}, Lcom/android/internal/util/ContrastColorUtil;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fc6edb1281d81ceL    # 0.17912878474

    cmpg-double p0, v0, v2

    if-gtz p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method private greylist-max-o isLegacy()Z
    .registers 4

    .line 7669
    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mIsLegacyInitialized:Z

    if-nez v0, :cond_18

    .line 7670
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x15

    const/4 v2, 0x1

    if-ge v0, v1, :cond_13

    move v0, v2

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    iput-boolean v0, p0, Landroid/app/Notification$Builder;->mIsLegacy:Z

    .line 7672
    iput-boolean v2, p0, Landroid/app/Notification$Builder;->mIsLegacyInitialized:Z

    .line 7674
    :cond_18
    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mIsLegacy:Z

    return v0
.end method

.method private blacklist isSnoozeSettingEnabled()Z
    .registers 5

    .line 6823
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_notification_snooze"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1
    :try_end_f
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_f} :catch_14

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    move v0, v2

    :cond_13
    return v0

    .line 6825
    :catch_14
    move-exception v1

    .line 6828
    return v0
.end method

.method public static greylist-max-o makeHeaderExpanded(Landroid/widget/RemoteViews;)V
    .registers 4

    .line 7253
    if-eqz p0, :cond_c

    .line 7254
    const-string/jumbo v0, "setExpanded"

    const/4 v1, 0x1

    const v2, 0x10202ee

    invoke-virtual {p0, v2, v0, v1}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 7256
    :cond_c
    return-void
.end method

.method private blacklist makeNotificationHeader(Landroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;
    .registers 5

    .line 7233
    new-instance v0, Landroid/app/Notification$BuilderRemoteViews;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 7234
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getHeaderLayoutResource()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 7235
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->resetNotificationHeader(Landroid/widget/RemoteViews;)V

    .line 7236
    invoke-direct {p0, v0, p1}, Landroid/app/Notification$Builder;->bindNotificationHeader(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    .line 7237
    invoke-direct {p0, v0, p1}, Landroid/app/Notification$Builder;->updateHeaderBackgroundColor(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    .line 7238
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v1

    if-eqz v1, :cond_33

    iget v1, p1, Landroid/app/Notification$StandardTemplateParams;->mViewType:I

    sget v2, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_MINIMIZED:I

    if-eq v1, v2, :cond_2a

    iget p1, p1, Landroid/app/Notification$StandardTemplateParams;->mViewType:I

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_PUBLIC:I

    if-ne p1, v1, :cond_33

    .line 7242
    :cond_2a
    const-string p1, "centerTopLine"

    const/4 v1, 0x1

    const v2, 0x1020436

    invoke-virtual {v0, v2, p1, v1}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 7244
    :cond_33
    return-object v0
.end method

.method public static blacklist maybeCloneStrippedForDelivery(Landroid/app/Notification;)Landroid/app/Notification;
    .registers 10

    .line 7938
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7942
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 7943
    invoke-static {v0}, Landroid/app/Notification;->getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_15

    .line 7944
    return-object p0

    .line 7948
    :cond_15
    iget-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    instance-of v0, v0, Landroid/app/Notification$BuilderRemoteViews;

    const-string v1, "android.rebuild.contentViewActionCount"

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_30

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 7949
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v5, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 7950
    invoke-virtual {v5}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v5

    if-ne v0, v5, :cond_30

    move v0, v2

    goto :goto_31

    :cond_30
    move v0, v4

    .line 7951
    :goto_31
    iget-object v5, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    instance-of v5, v5, Landroid/app/Notification$BuilderRemoteViews;

    const-string v6, "android.rebuild.bigViewActionCount"

    if-eqz v5, :cond_49

    iget-object v5, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 7952
    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iget-object v7, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 7953
    invoke-virtual {v7}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v7

    if-ne v5, v7, :cond_49

    move v5, v2

    goto :goto_4a

    :cond_49
    move v5, v4

    .line 7954
    :goto_4a
    iget-object v7, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    instance-of v7, v7, Landroid/app/Notification$BuilderRemoteViews;

    const-string v8, "android.rebuild.hudViewActionCount"

    if-eqz v7, :cond_61

    iget-object v7, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 7955
    invoke-virtual {v7, v8, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v7, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 7956
    invoke-virtual {v7}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v7

    if-ne v3, v7, :cond_61

    goto :goto_62

    :cond_61
    move v2, v4

    .line 7959
    :goto_62
    if-nez v0, :cond_69

    if-nez v5, :cond_69

    if-nez v2, :cond_69

    .line 7960
    return-object p0

    .line 7963
    :cond_69
    invoke-virtual {p0}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object p0

    .line 7964
    const/4 v3, 0x0

    if-eqz v0, :cond_77

    .line 7965
    iput-object v3, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 7966
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 7968
    :cond_77
    if-eqz v5, :cond_80

    .line 7969
    iput-object v3, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 7970
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 7972
    :cond_80
    if-eqz v2, :cond_89

    .line 7973
    iput-object v3, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 7974
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 7976
    :cond_89
    return-object p0
.end method

.method private blacklist minimallyDecoratedContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .registers 6

    .line 7084
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_NORMAL:I

    .line 7085
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 7086
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->decorationType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 7087
    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 7088
    new-instance v1, Landroid/app/Notification$TemplateBindResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/app/Notification$TemplateBindResult;-><init>(Landroid/app/Notification-IA;)V

    .line 7089
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getCollapsedBaseLayoutResource()I

    move-result v2

    invoke-direct {p0, v2, v0, v1}, Landroid/app/Notification$Builder;->applyStandardTemplate(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 7091
    iget-object v3, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, p1, v0, v1}, Landroid/app/Notification;->-$$Nest$smbuildCustomContentIntoTemplate(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V

    .line 7093
    return-object v2
.end method

.method private blacklist minimallyDecoratedExpandedContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .registers 6

    .line 7098
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_EXPANDED:I

    .line 7099
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 7100
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->decorationType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 7101
    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 7102
    new-instance v1, Landroid/app/Notification$TemplateBindResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/app/Notification$TemplateBindResult;-><init>(Landroid/app/Notification-IA;)V

    .line 7103
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getExpandedBaseLayoutResource()I

    move-result v2

    invoke-direct {p0, v2, v0, v1}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 7105
    iget-object v3, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, p1, v0, v1}, Landroid/app/Notification;->-$$Nest$smbuildCustomContentIntoTemplate(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V

    .line 7107
    invoke-static {v2}, Landroid/app/Notification$Builder;->makeHeaderExpanded(Landroid/widget/RemoteViews;)V

    .line 7108
    return-object v2
.end method

.method private blacklist minimallyDecoratedHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .registers 6

    .line 7113
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_HEADS_UP:I

    .line 7114
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 7115
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->decorationType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 7116
    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 7117
    new-instance v1, Landroid/app/Notification$TemplateBindResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/app/Notification$TemplateBindResult;-><init>(Landroid/app/Notification-IA;)V

    .line 7118
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getHeadsUpBaseLayoutResource()I

    move-result v2

    invoke-direct {p0, v2, v0, v1}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 7120
    iget-object v3, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, p1, v0, v1}, Landroid/app/Notification;->-$$Nest$smbuildCustomContentIntoTemplate(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V

    .line 7122
    return-object v2
.end method

.method private blacklist populateActionsContainer(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Ljava/util/List;IZ)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RemoteViews;",
            "Landroid/app/Notification$StandardTemplateParams;",
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;IZ)Z"
        }
    .end annotation

    .line 6975
    nop

    .line 6976
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_4
    if-ge v1, p4, :cond_33

    .line 6977
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification$Action;

    .line 6979
    invoke-direct {p0, v3}, Landroid/app/Notification$Builder;->hasValidRemoteInput(Landroid/app/Notification$Action;)Z

    move-result v4

    .line 6980
    or-int/2addr v2, v4

    .line 6982
    invoke-direct {p0, v3, p5, p2}, Landroid/app/Notification$Builder;->generateActionButton(Landroid/app/Notification$Action;ZLandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 6983
    const v5, 0x10201d2

    if-eqz v4, :cond_22

    if-nez p5, :cond_22

    .line 6985
    const-string/jumbo v4, "setBackgroundResource"

    invoke-virtual {v3, v5, v4, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 6987
    :cond_22
    if-eqz p5, :cond_2a

    if-lez v1, :cond_2a

    .line 6990
    const/4 v4, 0x4

    invoke-virtual {v3, v5, v4, v0}, Landroid/widget/RemoteViews;->setViewLayoutMarginDimen(III)V

    .line 6992
    :cond_2a
    const v4, 0x10201eb

    invoke-virtual {p1, v4, v3}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 6976
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 6994
    :cond_33
    return v2
.end method

.method private blacklist processLargeLegacyIcon(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V
    .registers 6

    .line 7707
    if-eqz p1, :cond_21

    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 7708
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getColorUtil()Lcom/android/internal/util/ContrastColorUtil;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/ContrastColorUtil;->isGrayscaleIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 7710
    invoke-direct {p0, p3}, Landroid/app/Notification$Builder;->getSmallIconColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result p1

    .line 7711
    const p3, 0x1020006

    const-string/jumbo v0, "setOriginalIconColor"

    invoke-virtual {p2, p3, v0, p1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 7713
    :cond_21
    return-void
.end method

.method private greylist-max-o processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3

    .line 7678
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0}, Landroid/app/Notification$Builder;->textColorsNeedInversion()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 7679
    :goto_10
    if-eqz v0, :cond_1b

    .line 7680
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getColorUtil()Lcom/android/internal/util/ContrastColorUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/util/ContrastColorUtil;->invertCharSequenceColors(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 7682
    :cond_1b
    return-object p1
.end method

.method private blacklist processSmallIconColor(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V
    .registers 8

    .line 7691
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getColorUtil()Lcom/android/internal/util/ContrastColorUtil;

    move-result-object v0

    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, p1}, Lcom/android/internal/util/ContrastColorUtil;->isGrayscaleIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Z

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_16

    :cond_14
    const/4 p1, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    move p1, v1

    .line 7693
    :goto_17
    invoke-direct {p0, p3}, Landroid/app/Notification$Builder;->getSmallIconColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v0

    .line 7694
    nop

    .line 7695
    invoke-direct {p0, p3}, Landroid/app/Notification$Builder;->getBackgroundColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result p3

    .line 7694
    const v2, 0x1020006

    const-string/jumbo v3, "setBackgroundColor"

    invoke-virtual {p2, v2, v3, p3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 7696
    nop

    .line 7697
    if-eqz p1, :cond_2d

    move v1, v0

    .line 7696
    :cond_2d
    const-string/jumbo p1, "setOriginalIconColor"

    invoke-virtual {p2, v2, p1, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 7698
    return-void
.end method

.method public static whitelist recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;
    .registers 6

    .line 7786
    const-string v0, "Notification.Builder#recoverBuilder"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 7790
    :try_start_5
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.appInfo"

    const-class v2, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_43

    .line 7793
    if-eqz v0, :cond_39

    .line 7795
    const/4 v1, 0x4

    :try_start_14
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object p0
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_18} :catch_19
    .catchall {:try_start_14 .. :try_end_18} :catchall_43

    .line 7800
    :goto_18
    goto :goto_3a

    .line 7797
    :catch_19
    move-exception v1

    .line 7798
    :try_start_1a
    const-string v1, "Notification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ApplicationInfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " not found"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7799
    goto :goto_18

    .line 7802
    :cond_39
    nop

    .line 7805
    :goto_3a
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V
    :try_end_3f
    .catchall {:try_start_1a .. :try_end_3f} :catchall_43

    .line 7807
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 7805
    return-object v0

    .line 7807
    :catchall_43
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 7808
    throw p0
.end method

.method private greylist-max-o resetNotificationHeader(Landroid/widget/RemoteViews;)V
    .registers 6

    .line 6177
    const v0, 0x10202ee

    const-string/jumbo v1, "setExpanded"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 6178
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->apiMetricStyle()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_18

    .line 6179
    const v0, 0x1020218

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6181
    :cond_18
    const v0, 0x1020217

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6182
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6183
    const v0, 0x102027b

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6184
    const v0, 0x102034e

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6185
    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6186
    const v0, 0x1020350

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6187
    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6188
    const v0, 0x102034f

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6189
    const v0, 0x1020351

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6190
    const v0, 0x102059b

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6191
    const v0, 0x1020597

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6192
    const v0, 0x102049a

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 6193
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6194
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {p1, v2}, Landroid/app/Notification;->-$$Nest$fputmUsesStandardHeader(Landroid/app/Notification;Z)V

    .line 6195
    return-void
.end method

.method private greylist-max-o resetStandardTemplate(Landroid/widget/RemoteViews;)V
    .registers 5

    .line 6163
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->resetNotificationHeader(Landroid/widget/RemoteViews;)V

    .line 6164
    const v0, 0x10204da

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6165
    const v0, 0x1020016

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6166
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6167
    const v0, 0x1020578

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6168
    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6169
    return-void
.end method

.method private greylist-max-o resetStandardTemplateWithActions(Landroid/widget/RemoteViews;)V
    .registers 5

    .line 6779
    const v0, 0x10201eb

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6780
    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 6782
    const v0, 0x102043b

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6783
    const v0, 0x102043d

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6784
    const v0, 0x102043e

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6786
    const v0, 0x102043c

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6788
    const v0, 0x102043f

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6789
    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6790
    const v0, 0x1020440

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6791
    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6793
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-nez v0, :cond_46

    .line 6795
    const/4 v0, 0x3

    const v1, 0x10502c1

    const v2, 0x1020434

    invoke-virtual {p1, v2, v0, v1}, Landroid/widget/RemoteViews;->setViewLayoutMarginDimen(III)V

    .line 6798
    :cond_46
    return-void
.end method

.method private greylist-max-o sanitizeColor()V
    .registers 4

    .line 7716
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->color:I

    if-eqz v0, :cond_f

    .line 7717
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->color:I

    const/high16 v2, -0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->color:I

    .line 7719
    :cond_f
    return-void
.end method

.method private static blacklist setAlphaComponentByFloatDimen(Landroid/content/Context;II)I
    .registers 5

    .line 7548
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 7549
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 7550
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    const/high16 p2, 0x437f0000    # 255.0f

    mul-float/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    return p0
.end method

.method private static blacklist setHeaderlessVerticalMargins(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)V
    .registers 4

    .line 6290
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-nez v0, :cond_20

    iget-boolean p1, p1, Landroid/app/Notification$StandardTemplateParams;->mHeaderless:Z

    if-nez p1, :cond_b

    goto :goto_20

    .line 6293
    :cond_b
    if-eqz p2, :cond_11

    .line 6294
    const p1, 0x10502df

    goto :goto_14

    .line 6295
    :cond_11
    const p1, 0x10502de

    .line 6296
    :goto_14
    const/4 p2, 0x1

    const v0, 0x1020437

    invoke-virtual {p0, v0, p2, p1}, Landroid/widget/RemoteViews;->setViewLayoutMarginDimen(III)V

    .line 6298
    const/4 p2, 0x3

    invoke-virtual {p0, v0, p2, p1}, Landroid/widget/RemoteViews;->setViewLayoutMarginDimen(III)V

    .line 6300
    return-void

    .line 6291
    :cond_20
    :goto_20
    return-void
.end method

.method private blacklist setTextViewColorPrimary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V
    .registers 4

    .line 6304
    invoke-virtual {p0, p3}, Landroid/app/Notification$Builder;->getPrimaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 6305
    return-void
.end method

.method private blacklist setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V
    .registers 4

    .line 6329
    invoke-virtual {p0, p3}, Landroid/app/Notification$Builder;->getSecondaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 6330
    return-void
.end method

.method private greylist-max-o showsTimeOrChronometer()Z
    .registers 2

    .line 6773
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->showsTime()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->showsChronometer()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method private blacklist styleDisplaysCustomViewInline()Z
    .registers 2

    .line 7915
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0}, Landroid/app/Notification$Style;->displayCustomViewInline()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private greylist-max-o textColorsNeedInversion()Z
    .registers 4

    .line 8151
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    const-class v0, Landroid/app/Notification$MediaStyle;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_26

    .line 8154
    :cond_14
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 8155
    const/16 v2, 0x17

    if-le v0, v2, :cond_25

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_25

    const/4 v1, 0x1

    :cond_25
    return v1

    .line 8152
    :cond_26
    :goto_26
    return v1
.end method

.method private blacklist updateBackgroundColor(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V
    .registers 5

    .line 6364
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->isBackgroundColorized(Landroid/app/Notification$StandardTemplateParams;)Z

    move-result v0

    const v1, 0x1020557

    if-eqz v0, :cond_15

    .line 6365
    nop

    .line 6366
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->getBackgroundColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result p2

    .line 6365
    const-string/jumbo v0, "setBackgroundColor"

    invoke-virtual {p1, v1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_1c

    .line 6369
    :cond_15
    const-string/jumbo p2, "setBackgroundResource"

    const/4 v0, 0x0

    invoke-virtual {p1, v1, p2, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 6372
    :goto_1c
    return-void
.end method

.method private static blacklist updateExpanderAlignment(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)V
    .registers 4

    .line 6273
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-boolean p1, p1, Landroid/app/Notification$StandardTemplateParams;->mHeaderless:Z

    if-eqz p1, :cond_1b

    .line 6274
    const/4 p1, 0x0

    const v0, 0x10202ee

    if-nez p2, :cond_16

    .line 6278
    const/high16 p2, -0x40800000    # -1.0f

    invoke-virtual {p0, v0, p2, p1}, Landroid/widget/RemoteViews;->setViewLayoutHeight(IFI)V

    goto :goto_1b

    .line 6282
    :cond_16
    const/high16 p2, -0x40000000    # -2.0f

    invoke-virtual {p0, v0, p2, p1}, Landroid/widget/RemoteViews;->setViewLayoutHeight(IFI)V

    .line 6286
    :cond_1b
    :goto_1b
    return-void
.end method

.method private blacklist updateHeaderBackgroundColor(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V
    .registers 5

    .line 6349
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->uiRichOngoing()Z

    move-result v0

    if-nez v0, :cond_7

    .line 6350
    return-void

    .line 6352
    :cond_7
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->isBackgroundColorized(Landroid/app/Notification$StandardTemplateParams;)Z

    move-result v0

    const v1, 0x1020436

    if-eqz v0, :cond_1c

    .line 6353
    nop

    .line 6354
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->getBackgroundColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result p2

    .line 6353
    const-string/jumbo v0, "setBackgroundColor"

    invoke-virtual {p1, v1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_23

    .line 6357
    :cond_1c
    const-string/jumbo p2, "setBackgroundResource"

    const/4 v0, 0x0

    invoke-virtual {p1, v1, p2, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 6360
    :goto_23
    return-void
.end method

.method private blacklist updateMarginsForActions(Landroid/widget/RemoteViews;Z)V
    .registers 7

    .line 6950
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eqz v0, :cond_22

    .line 6951
    const/4 v0, 0x1

    const v3, 0x10201ec

    if-eqz p2, :cond_18

    .line 6954
    const p2, 0x10502a8

    invoke-virtual {p1, v3, v0, p2}, Landroid/widget/RemoteViews;->setViewLayoutMarginDimen(III)V

    .line 6957
    invoke-virtual {p1, v3, v2, p2}, Landroid/widget/RemoteViews;->setViewLayoutMarginDimen(III)V

    goto :goto_28

    .line 6961
    :cond_18
    invoke-virtual {p1, v3, v0, v1}, Landroid/widget/RemoteViews;->setViewLayoutMarginDimen(III)V

    .line 6963
    const p2, 0x1050283

    invoke-virtual {p1, v3, v2, p2}, Landroid/widget/RemoteViews;->setViewLayoutMarginDimen(III)V

    goto :goto_28

    .line 6968
    :cond_22
    const p2, 0x1020434

    invoke-virtual {p1, p2, v2, v1}, Landroid/widget/RemoteViews;->setViewLayoutMarginDimen(III)V

    .line 6971
    :goto_28
    return-void
.end method

.method private blacklist useExistingRemoteView(Landroid/widget/RemoteViews;)Z
    .registers 4

    .line 7126
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 7127
    return v0

    .line 7129
    :cond_4
    invoke-direct {p0}, Landroid/app/Notification$Builder;->styleDisplaysCustomViewInline()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 7131
    return v0

    .line 7133
    :cond_b
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->fullyCustomViewRequiresDecoration(Z)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 7134
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result p1

    invoke-static {p1}, Landroid/app/Notification;->-$$Nest$smisStandardLayout(I)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 7138
    const-string p1, "Notification"

    const-string v1, "For apps targeting S, a custom content view that is a modified version of any standard layout is disallowed."

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7140
    return v0

    .line 7142
    :cond_23
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public whitelist addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5972
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/Notification$Action;

    invoke-static {p2}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-direct {v1, p1, p2, p3}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5973
    return-object p0
.end method

.method public whitelist addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;
    .registers 3

    .line 5993
    if-eqz p1, :cond_7

    .line 5994
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5996
    :cond_7
    return-object p0
.end method

.method public whitelist addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;
    .registers 3

    .line 5899
    if-eqz p1, :cond_7

    .line 5900
    iget-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 5902
    :cond_7
    return-object p0
.end method

.method public whitelist addPerson(Landroid/app/Person;)Landroid/app/Notification$Builder;
    .registers 3

    .line 5837
    iget-object v0, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5838
    return-object p0
.end method

.method public whitelist addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .registers 3

    .line 5811
    new-instance v0, Landroid/app/Person$Builder;

    invoke-direct {v0}, Landroid/app/Person$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/app/Person$Builder;->setUri(Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->addPerson(Landroid/app/Person;)Landroid/app/Notification$Builder;

    .line 5812
    return-object p0
.end method

.method public whitelist build()Landroid/app/Notification;
    .registers 7

    .line 7844
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-$$Nest$fgetmShortcutId(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-$$Nest$fgetmBubbleMetadata(Landroid/app/Notification;)Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-$$Nest$fgetmBubbleMetadata(Landroid/app/Notification;)Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    .line 7846
    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-$$Nest$fgetmShortcutId(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v1}, Landroid/app/Notification;->-$$Nest$fgetmBubbleMetadata(Landroid/app/Notification;)Landroid/app/Notification$BubbleMetadata;

    move-result-object v1

    .line 7847
    invoke-virtual {v1}, Landroid/app/Notification$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_66

    .line 7848
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notification and BubbleMetadata shortcut id\'s don\'t match, notification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v2}, Landroid/app/Notification;->-$$Nest$fgetmShortcutId(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vs bubble: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v2}, Landroid/app/Notification;->-$$Nest$fgetmBubbleMetadata(Landroid/app/Notification;)Landroid/app/Notification$BubbleMetadata;

    move-result-object v2

    .line 7851
    invoke-virtual {v2}, Landroid/app/Notification$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7855
    :cond_66
    :goto_66
    iget-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_79

    .line 7856
    iget-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 7857
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 7861
    :cond_79
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, v1}, Landroid/app/Notification;->addFieldsFromContext(Landroid/content/Context;Landroid/app/Notification;)V

    .line 7863
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->buildUnstyled()Landroid/app/Notification;

    .line 7865
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_a1

    .line 7866
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Style;->reduceImageSizes(Landroid/content/Context;)V

    .line 7867
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0}, Landroid/app/Notification$Style;->purgeResources()V

    .line 7868
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Style;->validate(Landroid/content/Context;)V

    .line 7869
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Style;->buildStyled(Landroid/app/Notification;)Landroid/app/Notification;

    .line 7871
    :cond_a1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/app/Notification;->reduceImageSizes(Landroid/content/Context;)V

    .line 7873
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_10f

    .line 7874
    invoke-direct {p0}, Landroid/app/Notification$Builder;->styleDisplaysCustomViewInline()Z

    move-result v0

    if-nez v0, :cond_10f

    .line 7875
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 7876
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 7877
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 7878
    if-nez v0, :cond_d9

    .line 7879
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 7880
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 7881
    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v4

    .line 7880
    const-string v5, "android.rebuild.contentViewActionCount"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7883
    :cond_d9
    if-nez v1, :cond_ee

    .line 7884
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createBigContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    .line 7885
    if-eqz v1, :cond_ee

    .line 7886
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 7887
    invoke-virtual {v1}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v4

    .line 7886
    const-string v5, "android.rebuild.bigViewActionCount"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7890
    :cond_ee
    if-nez v2, :cond_103

    .line 7891
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v2

    .line 7892
    if-eqz v2, :cond_103

    .line 7893
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 7894
    invoke-virtual {v2}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v4

    .line 7893
    const-string v5, "android.rebuild.hudViewActionCount"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7900
    :cond_103
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v0, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 7901
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 7902
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v2, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 7905
    :cond_10f
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_11f

    .line 7906
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 7909
    :cond_11f
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    .line 7911
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    return-object v0
.end method

.method public greylist-max-o buildInto(Landroid/app/Notification;)Landroid/app/Notification;
    .registers 4

    .line 7925
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    .line 7926
    return-object p1
.end method

.method public greylist-max-o buildUnstyled()Landroid/app/Notification;
    .registers 4

    .line 7765
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1d

    .line 7766
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/app/Notification$Action;

    iput-object v1, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 7767
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 7769
    :cond_1d
    iget-object v0, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    .line 7770
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.people.list"

    iget-object v2, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 7772
    :cond_30
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_42

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_42

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_4c

    .line 7774
    :cond_42
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.contains.customView"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7776
    :cond_4c
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    return-object v0
.end method

.method public whitelist createBigContentView()Landroid/widget/RemoteViews;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7160
    invoke-direct {p0}, Landroid/app/Notification$Builder;->createExpandedContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public blacklist createCompactHeadsUpContentView()Landroid/widget/RemoteViews;
    .registers 5

    .line 7264
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_b

    .line 7265
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0

    .line 7268
    :cond_b
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_18

    .line 7269
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0}, Landroid/app/Notification$Style;->makeCompactHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 7270
    if-eqz v0, :cond_18

    .line 7271
    return-object v0

    .line 7275
    :cond_18
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_HEADS_UP:I

    .line 7276
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 7277
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->needsExtraTextMargin(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 7278
    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 7282
    iget-object v1, v0, Landroid/app/Notification$StandardTemplateParams;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->headerTextSecondary(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Notification$StandardTemplateParams;->text(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/Notification$StandardTemplateParams;->hideTime(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/app/Notification$StandardTemplateParams;->summaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    .line 7284
    nop

    .line 7285
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getCompactHeadsUpBaseLayoutResource()I

    move-result v1

    .line 7284
    invoke-direct {p0, v1, v0, v2}, Landroid/app/Notification$Builder;->applyStandardTemplate(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public whitelist createContentView()Landroid/widget/RemoteViews;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7051
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->useExistingRemoteView(Landroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 7052
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->fullyCustomViewRequiresDecoration(Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 7053
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->minimallyDecoratedContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_1e

    :cond_1a
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 7052
    :goto_1e
    return-object v0

    .line 7054
    :cond_1f
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_39

    .line 7055
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0}, Landroid/app/Notification$Style;->makeContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 7056
    if-eqz v0, :cond_39

    .line 7057
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->fullyCustomViewRequiresDecoration(Z)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 7058
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->minimallyDecoratedContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_38

    :cond_37
    nop

    .line 7057
    :goto_38
    return-object v0

    .line 7061
    :cond_39
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_NORMAL:I

    .line 7062
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 7063
    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 7064
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getCollapsedBaseLayoutResource()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Landroid/app/Notification$Builder;->applyStandardTemplate(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public whitelist createHeadsUpContentView()Landroid/widget/RemoteViews;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7304
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->useExistingRemoteView(Landroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 7305
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->fullyCustomViewRequiresDecoration(Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 7306
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->minimallyDecoratedHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_1e

    .line 7307
    :cond_1a
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 7305
    :goto_1e
    return-object v0

    .line 7308
    :cond_1f
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3a

    .line 7309
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0}, Landroid/app/Notification$Style;->makeHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 7310
    if-eqz v0, :cond_43

    .line 7311
    invoke-direct {p0, v2}, Landroid/app/Notification$Builder;->fullyCustomViewRequiresDecoration(Z)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 7312
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->minimallyDecoratedHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_39

    :cond_38
    nop

    .line 7311
    :goto_39
    return-object v0

    .line 7314
    :cond_3a
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_43

    .line 7315
    return-object v1

    .line 7314
    :cond_43
    nop

    .line 7320
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v3, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_HEADS_UP:I

    .line 7321
    invoke-virtual {v0, v3}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 7322
    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 7323
    invoke-virtual {v0, v2}, Landroid/app/Notification$StandardTemplateParams;->setMaxRemoteInputHistory(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 7324
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getHeadsUpBaseLayoutResource()I

    move-result v2

    invoke-direct {p0, v2, v0, v1}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public blacklist ensureColorSpanContrast(Ljava/lang/CharSequence;Landroid/app/Notification$StandardTemplateParams;)Ljava/lang/CharSequence;
    .registers 3

    .line 7628
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->getBackgroundColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/internal/util/ContrastColorUtil;->ensureColorSpanContrast(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public blacklist ensureColorSpanContrastOrStripStyling(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .registers 4

    .line 7607
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->isPromotedOngoing()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 7611
    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/app/Notification;->-$$Nest$smstripNonStyleSpans(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 7612
    :cond_e
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->cleanUpSpansAndNewLines()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 7613
    invoke-static {p1}, Landroid/app/Notification;->-$$Nest$smstripStyling(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 7616
    :cond_19
    invoke-static {p1, p2}, Lcom/android/internal/util/ContrastColorUtil;->ensureColorSpanContrast(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public blacklist ensureColorSpanContrastOrStripStyling(Ljava/lang/CharSequence;Landroid/app/Notification$StandardTemplateParams;)Ljava/lang/CharSequence;
    .registers 3

    .line 7599
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->getBackgroundColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/app/Notification$Builder;->ensureColorSpanContrastOrStripStyling(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public whitelist extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;
    .registers 2

    .line 6074
    invoke-interface {p1, p0}, Landroid/app/Notification$Extender;->extend(Landroid/app/Notification$Builder;)Landroid/app/Notification$Builder;

    .line 6075
    return-object p0
.end method

.method public blacklist getBackgroundColor(Z)I
    .registers 2

    .line 7751
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->getColors(Z)Landroid/app/Notification$Colors;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification$Colors;->getBackgroundColor()I

    move-result p1

    return p1
.end method

.method public blacklist getColors(Z)Landroid/app/Notification$Colors;
    .registers 6

    .line 6343
    iget-object v0, p0, Landroid/app/Notification$Builder;->mColors:Landroid/app/Notification$Colors;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->color:I

    if-nez p1, :cond_14

    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {p1}, Landroid/app/Notification;->isColorized()Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    iget-boolean v3, p0, Landroid/app/Notification$Builder;->mInNightMode:Z

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/app/Notification$Colors;->resolvePalette(Landroid/content/Context;IZZ)V

    .line 6344
    iget-object p1, p0, Landroid/app/Notification$Builder;->mColors:Landroid/app/Notification$Colors;

    return-object p1
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 5936
    iget-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public greylist-max-o getHeadsUpStatusBarText(Z)Ljava/lang/CharSequence;
    .registers 3

    .line 8168
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_13

    if-nez p1, :cond_13

    .line 8169
    iget-object p1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {p1}, Landroid/app/Notification$Style;->getHeadsUpStatusBarText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 8170
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 8171
    return-object p1

    .line 8174
    :cond_13
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->loadHeaderAppName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method blacklist getLargeIconMarginEnd(Landroid/app/Notification$StandardTemplateParams;)I
    .registers 4

    .line 6550
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 6552
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->uiRichOngoing()Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v1}, Landroid/app/Notification;->isPromotedOngoing()Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-boolean p1, p1, Landroid/app/Notification$StandardTemplateParams;->mHeaderless:Z

    if-nez p1, :cond_2e

    .line 6554
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 6555
    const p1, 0x10502a0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    .line 6557
    :cond_26
    const p1, 0x10502c1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    .line 6561
    :cond_2e
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result p1

    if-eqz p1, :cond_44

    .line 6562
    const p1, 0x10502a6

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 6564
    const v1, 0x105029a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 6566
    add-int/2addr p1, v0

    return p1

    .line 6568
    :cond_44
    const p1, 0x10502d2

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1
.end method

.method public whitelist getNotification()Landroid/app/Notification;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7826
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPrimaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I
    .registers 2

    .line 6314
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification$Colors;->getPrimaryTextColor()I

    move-result p1

    return p1
.end method

.method public blacklist getSecondaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I
    .registers 2

    .line 6324
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification$Colors;->getSecondaryTextColor()I

    move-result p1

    return p1
.end method

.method public blacklist getSmallIconColor(Z)I
    .registers 2

    .line 7743
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->getColors(Z)Landroid/app/Notification$Colors;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification$Colors;->getContrastColor()I

    move-result p1

    return p1
.end method

.method public whitelist getStyle()Landroid/app/Notification$Style;
    .registers 2

    .line 6037
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    return-object v0
.end method

.method public greylist-max-r loadHeaderAppName()Ljava/lang/String;
    .registers 3

    .line 6710
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/app/Notification;->loadHeaderAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o makeLowPriorityContentView(Z)Landroid/widget/RemoteViews;
    .registers 5

    .line 7394
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->disallowColorization()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_MINIMIZED:I

    .line 7395
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 7396
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->highlightExpander(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 7397
    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 7398
    if-eqz p1, :cond_23

    iget-object p1, v0, Landroid/app/Notification$StandardTemplateParams;->mSubText:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 7399
    :cond_23
    invoke-direct {p0}, Landroid/app/Notification$Builder;->createSummaryText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$StandardTemplateParams;->summaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    .line 7401
    :cond_2a
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->makeNotificationHeader(Landroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object p1

    .line 7402
    const-string/jumbo v0, "setAcceptAllTouches"

    const v1, 0x1020436

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 7404
    const-string/jumbo v0, "styleTextAsTitle"

    invoke-virtual {p1, v1, v0, v2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 7405
    return-object p1
.end method

.method public blacklist makeNotificationGroupHeader()Landroid/widget/RemoteViews;
    .registers 3

    .line 7221
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->disallowColorization()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_GROUP_HEADER:I

    .line 7222
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 7223
    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 7221
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->makeNotificationHeader(Landroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public greylist makePublicContentView(Z)Landroid/widget/RemoteViews;
    .registers 10

    .line 7336
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v0, :cond_29

    .line 7337
    iget-object p1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-static {p1, v0}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 7339
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    instance-of v1, v0, Landroid/app/Notification$MessagingStyle;

    if-eqz v1, :cond_24

    check-cast v0, Landroid/app/Notification$MessagingStyle;

    .line 7340
    iget-object v1, p1, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    instance-of v2, v1, Landroid/app/Notification$MessagingStyle;

    if-eqz v2, :cond_24

    check-cast v1, Landroid/app/Notification$MessagingStyle;

    .line 7341
    iget v0, v0, Landroid/app/Notification$MessagingStyle;->mConversationType:I

    iput v0, v1, Landroid/app/Notification$MessagingStyle;->mConversationType:I

    .line 7344
    :cond_24
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1

    .line 7346
    :cond_29
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 7347
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 7348
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 7349
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v3}, Landroid/app/Notification;->-$$Nest$fgetmLargeIcon(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 7350
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v4, v2}, Landroid/app/Notification;->-$$Nest$fputmLargeIcon(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)V

    .line 7351
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 7352
    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v2, v5, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 7353
    iget-object v2, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 7354
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 7355
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 7356
    nop

    .line 7357
    const-string v6, "android.showWhen"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 7356
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7358
    nop

    .line 7359
    const-string v6, "android.showChronometer"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 7358
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7360
    nop

    .line 7361
    const-string v6, "android.chronometerCountDown"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 7360
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7362
    const-string v6, "android.substName"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 7363
    if-eqz v7, :cond_7c

    .line 7364
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7366
    :cond_7c
    iget-object v6, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 7368
    iget-object v5, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v5}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v5

    sget v6, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_PUBLIC:I

    .line 7369
    invoke-virtual {v5, v6}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v5

    .line 7370
    invoke-virtual {v5, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v5

    .line 7371
    if-eqz p1, :cond_96

    .line 7372
    const/4 p1, 0x0

    invoke-virtual {v5, p1}, Landroid/app/Notification$StandardTemplateParams;->highlightExpander(Z)Landroid/app/Notification$StandardTemplateParams;

    .line 7374
    :cond_96
    invoke-virtual {v5}, Landroid/app/Notification$StandardTemplateParams;->disallowColorization()Landroid/app/Notification$StandardTemplateParams;

    .line 7375
    invoke-direct {p0, v5}, Landroid/app/Notification$Builder;->makeNotificationHeader(Landroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object p1

    .line 7376
    const-string/jumbo v5, "setExpandOnlyOnButton"

    const/4 v6, 0x1

    const v7, 0x1020436

    invoke-virtual {p1, v7, v5, v6}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 7377
    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v0, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 7378
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, v3}, Landroid/app/Notification;->-$$Nest$fputmLargeIcon(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)V

    .line 7379
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v4, v0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 7380
    iput-object v2, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 7381
    iput-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 7382
    return-object p1
.end method

.method public varargs whitelist setActions([Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;
    .registers 5

    .line 6005
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6006
    const/4 v0, 0x0

    :goto_6
    array-length v1, p1

    if-ge v0, v1, :cond_17

    .line 6007
    aget-object v1, p1, v0

    if-eqz v1, :cond_14

    .line 6008
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6006
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 6011
    :cond_17
    return-object p0
.end method

.method public whitelist setAllowSystemGeneratedContextualActions(Z)Landroid/app/Notification$Builder;
    .registers 3

    .line 7817
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-$$Nest$fputmAllowSystemGeneratedContextualActions(Landroid/app/Notification;Z)V

    .line 7818
    return-object p0
.end method

.method public whitelist setAutoCancel(Z)Landroid/app/Notification$Builder;
    .registers 3

    .line 5725
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 5726
    return-object p0
.end method

.method public whitelist setBadgeIconType(I)Landroid/app/Notification$Builder;
    .registers 3

    .line 4969
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-$$Nest$fputmBadgeIcon(Landroid/app/Notification;I)V

    .line 4970
    return-object p0
.end method

.method public whitelist setBubbleMetadata(Landroid/app/Notification$BubbleMetadata;)Landroid/app/Notification$Builder;
    .registers 3

    .line 5003
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-$$Nest$fputmBubbleMetadata(Landroid/app/Notification;Landroid/app/Notification$BubbleMetadata;)V

    .line 5004
    return-object p0
.end method

.method public whitelist setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .registers 3

    .line 5779
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 5780
    return-object p0
.end method

.method public greylist setChannel(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5010
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-$$Nest$fputmChannelId(Landroid/app/Notification;Ljava/lang/String;)V

    .line 5011
    return-object p0
.end method

.method public whitelist setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .registers 3

    .line 5019
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-$$Nest$fputmChannelId(Landroid/app/Notification;Ljava/lang/String;)V

    .line 5020
    return-object p0
.end method

.method public whitelist setChronometerCountDown(Z)Landroid/app/Notification$Builder;
    .registers 4

    .line 5092
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.chronometerCountDown"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5093
    return-object p0
.end method

.method public whitelist setColor(I)Landroid/app/Notification$Builder;
    .registers 3

    .line 6105
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->color:I

    .line 6106
    invoke-direct {p0}, Landroid/app/Notification$Builder;->sanitizeColor()V

    .line 6107
    return-object p0
.end method

.method public whitelist setColorized(Z)Landroid/app/Notification$Builder;
    .registers 4

    .line 5674
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.colorized"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5675
    return-object p0
.end method

.method public whitelist setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5371
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5335
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.infoText"

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 5336
    return-object p0
.end method

.method public whitelist setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .registers 3

    .line 5429
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 5430
    return-object p0
.end method

.method public whitelist setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .registers 4

    .line 5195
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.text"

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 5196
    return-object p0
.end method

.method public whitelist setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .registers 4

    .line 5186
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.title"

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 5187
    return-object p0
.end method

.method public whitelist setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .registers 3

    .line 5394
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 5395
    return-object p0
.end method

.method public whitelist setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .registers 3

    .line 5382
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 5383
    return-object p0
.end method

.method public whitelist setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .registers 3

    .line 5406
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 5407
    return-object p0
.end method

.method public whitelist setDefaults(I)Landroid/app/Notification$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5756
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    .line 5757
    return-object p0
.end method

.method public whitelist setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .registers 3

    .line 5440
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 5441
    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;
    .registers 2

    .line 5919
    if-eqz p1, :cond_4

    .line 5920
    iput-object p1, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    .line 5922
    :cond_4
    return-object p0
.end method

.method public whitelist setFlag(IZ)Landroid/app/Notification$Builder;
    .registers 4

    .line 6088
    if-eqz p2, :cond_a

    .line 6089
    iget-object p2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, p2, Landroid/app/Notification;->flags:I

    or-int/2addr p1, v0

    iput p1, p2, Landroid/app/Notification;->flags:I

    goto :goto_12

    .line 6091
    :cond_a
    iget-object p2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, p2, Landroid/app/Notification;->flags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p2, Landroid/app/Notification;->flags:I

    .line 6093
    :goto_12
    return-object p0
.end method

.method public whitelist setForegroundServiceBehavior(I)Landroid/app/Notification$Builder;
    .registers 3

    .line 5714
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-$$Nest$fputmFgsDeferBehavior(Landroid/app/Notification;I)V

    .line 5715
    return-object p0
.end method

.method public whitelist setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;
    .registers 4

    .line 5485
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 5486
    const/16 p1, 0x80

    invoke-virtual {p0, p1, p2}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 5487
    return-object p0
.end method

.method public whitelist setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .registers 3

    .line 5854
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-$$Nest$fputmGroupKey(Landroid/app/Notification;Ljava/lang/String;)V

    .line 5855
    return-object p0
.end method

.method public whitelist setGroupAlertBehavior(I)Landroid/app/Notification$Builder;
    .registers 3

    .line 4986
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-$$Nest$fputmGroupAlertBehavior(Landroid/app/Notification;I)V

    .line 4987
    return-object p0
.end method

.method public whitelist setGroupSummary(Z)Landroid/app/Notification$Builder;
    .registers 3

    .line 5868
    const/16 v0, 0x200

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 5869
    return-object p0
.end method

.method public whitelist setHasSummarizedContent(Z)Landroid/app/Notification$Builder;
    .registers 4

    .line 4872
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.app.extra.contains_summarization"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4873
    return-object p0
.end method

.method public greylist-max-o setHideSmartReplies(Z)Landroid/app/Notification$Builder;
    .registers 4

    .line 5309
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.hideSmartReplies"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5310
    return-object p0
.end method

.method public whitelist setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;
    .registers 2

    .line 5520
    if-eqz p1, :cond_7

    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;
    .registers 4

    .line 5532
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-$$Nest$fputmLargeIcon(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)V

    .line 5533
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.largeIcon"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5534
    return-object p0
.end method

.method public whitelist setLights(III)Landroid/app/Notification$Builder;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5613
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->ledARGB:I

    .line 5614
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p2, p1, Landroid/app/Notification;->ledOnMS:I

    .line 5615
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p3, p1, Landroid/app/Notification;->ledOffMS:I

    .line 5616
    if-nez p2, :cond_10

    if-eqz p3, :cond_18

    .line 5617
    :cond_10
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget p2, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 p2, p2, 0x1

    iput p2, p1, Landroid/app/Notification;->flags:I

    .line 5619
    :cond_18
    return-object p0
.end method

.method public whitelist setLocalOnly(Z)Landroid/app/Notification$Builder;
    .registers 3

    .line 5737
    const/16 v0, 0x100

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 5738
    return-object p0
.end method

.method public whitelist setLocusId(Landroid/content/LocusId;)Landroid/app/Notification$Builder;
    .registers 3

    .line 4955
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-$$Nest$fputmLocusId(Landroid/app/Notification;Landroid/content/LocusId;)V

    .line 4956
    return-object p0
.end method

.method public whitelist setNumber(I)Landroid/app/Notification$Builder;
    .registers 3

    .line 5319
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->number:I

    .line 5320
    return-object p0
.end method

.method public whitelist setOngoing(Z)Landroid/app/Notification$Builder;
    .registers 3

    .line 5638
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 5639
    return-object p0
.end method

.method public whitelist setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;
    .registers 3

    .line 5689
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 5690
    return-object p0
.end method

.method public whitelist setPriority(I)Landroid/app/Notification$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5768
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->priority:I

    .line 5769
    return-object p0
.end method

.method public whitelist setProgress(IIZ)Landroid/app/Notification$Builder;
    .registers 6

    .line 5358
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.progress"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5359
    iget-object p2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p2, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "android.progressMax"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5360
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p2, "android.progressIndeterminate"

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5361
    return-object p0
.end method

.method public whitelist setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;
    .registers 4

    .line 6059
    if-eqz p1, :cond_14

    .line 6060
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 6061
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    goto :goto_19

    .line 6063
    :cond_14
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 6065
    :goto_19
    return-object p0
.end method

.method public blacklist setRemoteInputHistory([Landroid/app/RemoteInputHistoryItem;)Landroid/app/Notification$Builder;
    .registers 7

    .line 5280
    const-string v0, "android.remoteInputHistoryItems"

    if-nez p1, :cond_d

    .line 5281
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_26

    .line 5283
    :cond_d
    const/4 v1, 0x5

    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 5284
    new-array v2, v1, [Landroid/app/RemoteInputHistoryItem;

    .line 5285
    const/4 v3, 0x0

    :goto_16
    if-ge v3, v1, :cond_1f

    .line 5286
    aget-object v4, p1, v3

    aput-object v4, v2, v3

    .line 5285
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 5288
    :cond_1f
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 5290
    :goto_26
    return-object p0
.end method

.method public whitelist setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .registers 9

    .line 5255
    const-string v0, "android.remoteInputHistory"

    if-nez p1, :cond_d

    .line 5256
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    goto :goto_3e

    .line 5258
    :cond_d
    const/4 v1, 0x5

    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 5259
    new-array v2, v1, [Ljava/lang/CharSequence;

    .line 5260
    new-array v3, v1, [Landroid/app/RemoteInputHistoryItem;

    .line 5261
    const/4 v4, 0x0

    :goto_18
    if-ge v4, v1, :cond_2e

    .line 5262
    aget-object v5, p1, v4

    invoke-static {v5}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v2, v4

    .line 5263
    new-instance v5, Landroid/app/RemoteInputHistoryItem;

    aget-object v6, p1, v4

    invoke-direct {v5, v6}, Landroid/app/RemoteInputHistoryItem;-><init>(Ljava/lang/CharSequence;)V

    aput-object v5, v3, v4

    .line 5261
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 5265
    :cond_2e
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5268
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "android.remoteInputHistoryItems"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 5270
    :goto_3e
    return-object p0
.end method

.method public whitelist setRequestPromotedOngoing(Z)Landroid/app/Notification$Builder;
    .registers 4

    .line 5653
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.requestPromotedOngoing"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5654
    return-object p0
.end method

.method public whitelist setSettingsText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .registers 3

    .line 5235
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/app/Notification;->-$$Nest$fputmSettingsText(Landroid/app/Notification;Ljava/lang/CharSequence;)V

    .line 5236
    return-object p0
.end method

.method public whitelist setShortCriticalText(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .registers 4

    .line 5347
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.shortCriticalText"

    invoke-static {p1}, Landroid/app/Notification;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5348
    return-object p0
.end method

.method public whitelist setShortcutId(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .registers 3

    .line 4942
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-$$Nest$fputmShortcutId(Landroid/app/Notification;Ljava/lang/String;)V

    .line 4943
    return-object p0
.end method

.method public greylist-max-o setShowRemoteInputSpinner(Z)Landroid/app/Notification$Builder;
    .registers 4

    .line 5299
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.remoteInputSpinner"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5300
    return-object p0
.end method

.method public whitelist setShowWhen(Z)Landroid/app/Notification$Builder;
    .registers 4

    .line 5057
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.showWhen"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5058
    return-object p0
.end method

.method public blacklist setSilent(Z)Landroid/app/Notification$Builder;
    .registers 4

    .line 5156
    if-nez p1, :cond_3

    .line 5157
    return-object p0

    .line 5159
    :cond_3
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {p1}, Landroid/app/Notification;->isGroupSummary()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 5160
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    goto :goto_14

    .line 5162
    :cond_10
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    .line 5165
    :goto_14
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 5166
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 5167
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Landroid/app/Notification;->defaults:I

    .line 5168
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p1, Landroid/app/Notification;->defaults:I

    .line 5169
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget p1, p1, Landroid/app/Notification;->defaults:I

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 5171
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->notificationSilentFlag()Z

    move-result p1

    if-eqz p1, :cond_42

    .line 5172
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, p1, Landroid/app/Notification;->flags:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/app/Notification;->flags:I

    goto :goto_54

    .line 5174
    :cond_42
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {p1}, Landroid/app/Notification;->-$$Nest$fgetmGroupKey(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_54

    .line 5175
    const-string/jumbo p1, "silent"

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 5178
    :cond_54
    :goto_54
    return-object p0
.end method

.method public whitelist setSmallIcon(I)Landroid/app/Notification$Builder;
    .registers 3

    .line 5110
    if-eqz p1, :cond_9

    .line 5111
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p1

    goto :goto_a

    .line 5112
    :cond_9
    const/4 p1, 0x0

    .line 5110
    :goto_a
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setSmallIcon(II)Landroid/app/Notification$Builder;
    .registers 4

    .line 5128
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->iconLevel:I

    .line 5129
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;
    .registers 4

    .line 5141
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0, p1}, Landroid/app/Notification;->setSmallIcon(Landroid/graphics/drawable/Icon;)V

    .line 5142
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    .line 5143
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result p1

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 5145
    :cond_16
    return-object p0
.end method

.method public whitelist setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .registers 3

    .line 5886
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-$$Nest$fputmSortKey(Landroid/app/Notification;Ljava/lang/String;)V

    .line 5887
    return-object p0
.end method

.method public whitelist setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5547
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 5548
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v0, p1, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 5549
    return-object p0
.end method

.method public whitelist setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5561
    const-string v0, "Notification"

    const-string/jumbo v1, "setSound()"

    invoke-static {p2, v0, v1}, Landroid/media/PlayerBase;->deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V

    .line 5562
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 5563
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p2, p1, Landroid/app/Notification;->audioStreamType:I

    .line 5564
    return-object p0
.end method

.method public whitelist setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5576
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 5577
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p2, p1, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 5578
    return-object p0
.end method

.method public whitelist setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;
    .registers 4

    .line 6021
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eq v0, p1, :cond_28

    .line 6022
    iput-object p1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 6023
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    const-string v1, "android.template"

    if-eqz v0, :cond_21

    .line 6024
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0, p0}, Landroid/app/Notification$Style;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 6025
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    .line 6027
    :cond_21
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 6030
    :cond_28
    :goto_28
    return-object p0
.end method

.method public whitelist setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .registers 4

    .line 5218
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.subText"

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 5219
    return-object p0
.end method

.method public blacklist setSummarizedContent(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .registers 4

    .line 4885
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.app.extra.app_summarization"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4886
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->nmSummarization()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 4887
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setHasSummarizedContent(Z)Landroid/app/Notification$Builder;

    .line 4889
    :cond_18
    return-object p0
.end method

.method public whitelist setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .registers 3

    .line 5497
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 5498
    return-object p0
.end method

.method public whitelist setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5506
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 5508
    return-object p0
.end method

.method public greylist setTimeout(J)Landroid/app/Notification$Builder;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5026
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1, p2}, Landroid/app/Notification;->-$$Nest$fputmTimeout(Landroid/app/Notification;J)V

    .line 5027
    return-object p0
.end method

.method public whitelist setTimeoutAfter(J)Landroid/app/Notification$Builder;
    .registers 4

    .line 5036
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1, p2}, Landroid/app/Notification;->-$$Nest$fputmTimeout(Landroid/app/Notification;J)V

    .line 5037
    return-object p0
.end method

.method public whitelist setUsesChronometer(Z)Landroid/app/Notification$Builder;
    .registers 4

    .line 5078
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.showChronometer"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5079
    return-object p0
.end method

.method public whitelist setVibrate([J)Landroid/app/Notification$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5596
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->vibrate:[J

    .line 5597
    return-object p0
.end method

.method public whitelist setVisibility(I)Landroid/app/Notification$Builder;
    .registers 3

    .line 6047
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->visibility:I

    .line 6048
    return-object p0
.end method

.method public whitelist setWhen(J)Landroid/app/Notification$Builder;
    .registers 4

    .line 5047
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    .line 5048
    return-object p0
.end method

.method public greylist-max-o usesStandardHeader()Z
    .registers 5

    .line 6147
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-$$Nest$fgetmUsesStandardHeader(Landroid/app/Notification;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 6148
    return v1

    .line 6150
    :cond_a
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_23

    .line 6151
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_23

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_23

    .line 6152
    return v1

    .line 6155
    :cond_23
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const/4 v2, 0x0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 6156
    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    invoke-static {v0}, Landroid/app/Notification;->-$$Nest$smisStandardLayout(I)Z

    move-result v0

    if-eqz v0, :cond_39

    goto :goto_3b

    :cond_39
    move v0, v2

    goto :goto_3c

    :cond_3b
    :goto_3b
    move v0, v1

    .line 6157
    :goto_3c
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_53

    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 6158
    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    invoke-static {v3}, Landroid/app/Notification;->-$$Nest$smisStandardLayout(I)Z

    move-result v3

    if-eqz v3, :cond_51

    goto :goto_53

    :cond_51
    move v3, v2

    goto :goto_54

    :cond_53
    :goto_53
    move v3, v1

    .line 6159
    :goto_54
    if-eqz v0, :cond_59

    if-eqz v3, :cond_59

    goto :goto_5a

    :cond_59
    move v1, v2

    :goto_5a
    return v1
.end method

.method public blacklist usesTemplate()Z
    .registers 2

    .line 8183
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_18

    .line 8185
    :cond_12
    invoke-direct {p0}, Landroid/app/Notification$Builder;->styleDisplaysCustomViewInline()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 8183
    :goto_1b
    return v0
.end method
