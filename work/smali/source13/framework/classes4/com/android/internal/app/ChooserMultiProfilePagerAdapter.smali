.class public Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;
.super Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;
.source "ChooserMultiProfilePagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;
    }
.end annotation


# static fields
.field private static final blacklist SINGLE_CELL_SPAN_SIZE:I = 0x1


# instance fields
.field private blacklist mBottomOffset:I

.field private final blacklist mIsSendAction:Z

.field private final blacklist mItems:[Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

.field private blacklist mMaxTargetsPerRow:I


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Landroid/os/UserHandle;Landroid/os/UserHandle;ZI)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    .param p3, "personalProfileUserHandle"    # Landroid/os/UserHandle;
    .param p4, "workProfileUserHandle"    # Landroid/os/UserHandle;
    .param p5, "isSendAction"    # Z
    .param p6, "maxTargetsPerRow"    # I

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;-><init>(Landroid/content/Context;ILandroid/os/UserHandle;Landroid/os/UserHandle;)V

    .line 60
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    .line 61
    invoke-direct {p0, p2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->createProfileDescriptor(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v2

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    .line 63
    iput-boolean p5, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mIsSendAction:Z

    .line 64
    iput p6, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mMaxTargetsPerRow:I

    .line 65
    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;ILandroid/os/UserHandle;Landroid/os/UserHandle;ZI)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "personalAdapter"    # Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    .param p3, "workAdapter"    # Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    .param p4, "defaultProfile"    # I
    .param p5, "personalProfileUserHandle"    # Landroid/os/UserHandle;
    .param p6, "workProfileUserHandle"    # Landroid/os/UserHandle;
    .param p7, "isSendAction"    # Z
    .param p8, "maxTargetsPerRow"    # I

    .line 74
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;-><init>(Landroid/content/Context;ILandroid/os/UserHandle;Landroid/os/UserHandle;)V

    .line 76
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    .line 77
    invoke-direct {p0, p2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->createProfileDescriptor(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 78
    invoke-direct {p0, p3}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->createProfileDescriptor(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    .line 80
    iput-boolean p7, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mIsSendAction:Z

    .line 81
    iput p8, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mMaxTargetsPerRow:I

    .line 82
    return-void
.end method

.method private blacklist createProfileDescriptor(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;
    .registers 8
    .param p1, "adapter"    # Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    .line 86
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 87
    .local v0, "inflater":Landroid/view/LayoutInflater;
    nop

    .line 88
    const v1, 0x1090061

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 89
    .local v1, "rootView":Landroid/view/ViewGroup;
    new-instance v2, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;Landroid/view/ViewGroup;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)V

    .line 91
    .local v2, "profileDescriptor":Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;
    invoke-static {v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->-$$Nest$fgetrecyclerView(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/widget/RecyclerView;

    move-result-object v3

    new-instance v4, Lcom/android/internal/app/ChooserRecyclerViewAccessibilityDelegate;

    invoke-static {v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->-$$Nest$fgetrecyclerView(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/widget/RecyclerView;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/app/ChooserRecyclerViewAccessibilityDelegate;-><init>(Lcom/android/internal/widget/RecyclerView;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/RecyclerView;->setAccessibilityDelegateCompat(Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;)V

    .line 93
    return-object v2
.end method

.method private blacklist getCantAccessPersonalMessage()Ljava/lang/String;
    .registers 4

    .line 276
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;)V

    const-string v2, "Core.RESOLVER_CANT_ACCESS_PERSONAL"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getCantAccessWorkMessage()Ljava/lang/String;
    .registers 4

    .line 269
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;)V

    const-string v2, "Core.RESOLVER_CANT_ACCESS_WORK"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getCantShareWithPersonalMessage()Ljava/lang/String;
    .registers 4

    .line 262
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;)V

    const-string v2, "Core.RESOLVER_CANT_SHARE_WITH_PERSONAL"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getCantShareWithWorkMessage()Ljava/lang/String;
    .registers 4

    .line 255
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;)V

    const-string v2, "Core.RESOLVER_CANT_SHARE_WITH_WORK"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getCrossProfileBlockedTitle()Ljava/lang/String;
    .registers 4

    .line 249
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;)V

    const-string v2, "Core.RESOLVER_CROSS_PROFILE_BLOCKED_TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getNoPersonalAppsAvailableMessage()Ljava/lang/String;
    .registers 4

    .line 290
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;)V

    const-string v2, "Core.RESOLVER_NO_PERSONAL_APPS"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getNoWorkAppsAvailableMessage()Ljava/lang/String;
    .registers 4

    .line 283
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;)V

    const-string v2, "Core.RESOLVER_NO_WORK_APPS"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getWorkAppPausedTitle()Ljava/lang/String;
    .registers 4

    .line 243
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;)V

    const-string v2, "Core.RESOLVER_WORK_PAUSED_TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method bridge synthetic blacklist getActiveAdapterView()Landroid/view/ViewGroup;
    .registers 2

    .line 45
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveAdapterView()Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method blacklist getActiveAdapterView()Lcom/android/internal/widget/RecyclerView;
    .registers 2

    .line 179
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getListViewForIndex(I)Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;
    .registers 2

    .line 149
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .registers 2

    .line 45
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    .registers 3
    .param p1, "pageIndex"    # I

    .line 113
    iget-object v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->-$$Nest$fgetchooserGridAdapter(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getAdapterForIndex(I)Ljava/lang/Object;
    .registers 2

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object p1

    return-object p1
.end method

.method blacklist getCurrentRootAdapter()Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    .registers 2

    .line 174
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic blacklist getCurrentRootAdapter()Ljava/lang/Object;
    .registers 2

    .line 45
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentRootAdapter()Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic blacklist getInactiveAdapterView()Landroid/view/ViewGroup;
    .registers 2

    .line 45
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getInactiveAdapterView()Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method blacklist getInactiveAdapterView()Lcom/android/internal/widget/RecyclerView;
    .registers 3

    .line 185
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 186
    const/4 v0, 0x0

    return-object v0

    .line 188
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getListViewForIndex(I)Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getInactiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;
    .registers 3

    .line 155
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 156
    const/4 v0, 0x0

    return-object v0

    .line 158
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .registers 2

    .line 45
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic blacklist getItem(I)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;
    .registers 2

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method blacklist getItem(I)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;
    .registers 3
    .param p1, "pageIndex"    # I

    .line 102
    iget-object v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    aget-object v0, v0, p1

    return-object v0
.end method

.method blacklist getItemCount()I
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    array-length v0, v0

    return v0
.end method

.method blacklist getListAdapterForUserHandle(Landroid/os/UserHandle;)Lcom/android/internal/app/ChooserListAdapter;
    .registers 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 119
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 120
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0

    .line 121
    :cond_13
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 122
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 123
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0

    .line 125
    :cond_2c
    const/4 v0, 0x0

    return-object v0
.end method

.method bridge synthetic blacklist getListAdapterForUserHandle(Landroid/os/UserHandle;)Lcom/android/internal/app/ResolverListAdapter;
    .registers 2

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getListAdapterForUserHandle(Landroid/os/UserHandle;)Lcom/android/internal/app/ChooserListAdapter;

    move-result-object p1

    return-object p1
.end method

.method blacklist getListViewForIndex(I)Lcom/android/internal/widget/RecyclerView;
    .registers 3
    .param p1, "index"    # I

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->-$$Nest$fgetrecyclerView(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method blacklist getMetricsCategory()Ljava/lang/String;
    .registers 2

    .line 193
    const-string v0, "intent_chooser"

    return-object v0
.end method

.method public blacklist getPersonalListAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .registers 2

    .line 163
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getWorkListAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .registers 2

    .line 169
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getCantAccessPersonalMessage$5$com-android-internal-app-ChooserMultiProfilePagerAdapter()Ljava/lang/String;
    .registers 3

    .line 278
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104084a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getCantAccessWorkMessage$4$com-android-internal-app-ChooserMultiProfilePagerAdapter()Ljava/lang/String;
    .registers 3

    .line 271
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104084b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getCantShareWithPersonalMessage$3$com-android-internal-app-ChooserMultiProfilePagerAdapter()Ljava/lang/String;
    .registers 3

    .line 264
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104084c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getCantShareWithWorkMessage$2$com-android-internal-app-ChooserMultiProfilePagerAdapter()Ljava/lang/String;
    .registers 3

    .line 257
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104084d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getCrossProfileBlockedTitle$1$com-android-internal-app-ChooserMultiProfilePagerAdapter()Ljava/lang/String;
    .registers 3

    .line 251
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104084e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getNoPersonalAppsAvailableMessage$7$com-android-internal-app-ChooserMultiProfilePagerAdapter()Ljava/lang/String;
    .registers 3

    .line 292
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104084f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getNoWorkAppsAvailableMessage$6$com-android-internal-app-ChooserMultiProfilePagerAdapter()Ljava/lang/String;
    .registers 3

    .line 285
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040850

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getWorkAppPausedTitle$0$com-android-internal-app-ChooserMultiProfilePagerAdapter()Ljava/lang/String;
    .registers 3

    .line 245
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040854

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist setEmptyStateBottomOffset(I)V
    .registers 2
    .param p1, "bottomOffset"    # I

    .line 298
    iput p1, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mBottomOffset:I

    .line 299
    return-void
.end method

.method protected blacklist setupContainerPadding(Landroid/view/View;)V
    .registers 7
    .param p1, "container"    # Landroid/view/View;

    .line 303
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050270

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 305
    .local v0, "initialBottomPadding":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 306
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget v4, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mBottomOffset:I

    add-int/2addr v4, v0

    .line 305
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 307
    return-void
.end method

.method blacklist setupListAdapter(I)V
    .registers 6
    .param p1, "pageIndex"    # I

    .line 130
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->-$$Nest$fgetrecyclerView(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    .line 131
    .local v0, "recyclerView":Lcom/android/internal/widget/RecyclerView;
    nop

    .line 132
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->-$$Nest$fgetchooserGridAdapter(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v1

    .line 133
    .local v1, "chooserGridAdapter":Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/GridLayoutManager;

    .line 134
    .local v2, "glm":Lcom/android/internal/widget/GridLayoutManager;
    iget v3, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mMaxTargetsPerRow:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/GridLayoutManager;->setSpanCount(I)V

    .line 135
    new-instance v3, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$1;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/widget/GridLayoutManager;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/GridLayoutManager;->setSpanSizeLookup(Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 144
    return-void
.end method

.method protected blacklist showNoPersonalAppsAvailableEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 4
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 233
    invoke-direct {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getNoPersonalAppsAvailableMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method protected blacklist showNoPersonalToWorkIntentsEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 4
    .param p1, "activeListAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 207
    iget-boolean v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mIsSendAction:Z

    if-eqz v0, :cond_11

    .line 208
    nop

    .line 209
    invoke-direct {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCrossProfileBlockedTitle()Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-direct {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCantShareWithWorkMessage()Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 212
    :cond_11
    nop

    .line 213
    invoke-direct {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCrossProfileBlockedTitle()Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-direct {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCantAccessWorkMessage()Ljava/lang/String;

    move-result-object v1

    .line 212
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :goto_1d
    return-void
.end method

.method protected blacklist showNoWorkAppsAvailableEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 4
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 239
    invoke-direct {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getNoWorkAppsAvailableMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method protected blacklist showNoWorkToPersonalIntentsEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 4
    .param p1, "activeListAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 220
    iget-boolean v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mIsSendAction:Z

    if-eqz v0, :cond_11

    .line 221
    nop

    .line 222
    invoke-direct {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCrossProfileBlockedTitle()Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-direct {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCantShareWithPersonalMessage()Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 225
    :cond_11
    nop

    .line 226
    invoke-direct {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCrossProfileBlockedTitle()Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-direct {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCantAccessPersonalMessage()Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :goto_1d
    return-void
.end method

.method protected blacklist showWorkProfileOffEmptyState(Lcom/android/internal/app/ResolverListAdapter;Landroid/view/View$OnClickListener;)V
    .registers 5
    .param p1, "activeListAdapter"    # Lcom/android/internal/app/ResolverListAdapter;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .line 199
    nop

    .line 200
    invoke-direct {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getWorkAppPausedTitle()Ljava/lang/String;

    move-result-object v0

    .line 199
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 203
    return-void
.end method
