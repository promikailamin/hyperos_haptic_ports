.class public Landroid/util/IconDrawableFactory;
.super Ljava/lang/Object;
.source "IconDrawableFactory.java"


# instance fields
.field protected final greylist-max-o mContext:Landroid/content/Context;

.field protected final blacklist mDpm:Landroid/app/admin/DevicePolicyManager;

.field protected final greylist-max-o mEmbedShadow:Z

.field protected final greylist-max-o mLauncherIcons:Landroid/util/LauncherIcons;

.field protected final greylist-max-o mPm:Landroid/content/pm/PackageManager;

.field protected final greylist-max-o mUm:Landroid/os/UserManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$EoW7C7TuolVRrnLqaSjZw4IAXEw(Landroid/util/IconDrawableFactory;I)Landroid/graphics/drawable/Drawable;
    .registers 2

    invoke-direct {p0, p1}, Landroid/util/IconDrawableFactory;->lambda$getBadgedIcon$0(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private constructor greylist-max-o <init>(Landroid/content/Context;Z)V
    .registers 4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/util/IconDrawableFactory;->mContext:Landroid/content/Context;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/util/IconDrawableFactory;->mPm:Landroid/content/pm/PackageManager;

    .line 52
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Landroid/util/IconDrawableFactory;->mUm:Landroid/os/UserManager;

    .line 53
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Landroid/util/IconDrawableFactory;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 54
    new-instance v0, Landroid/util/LauncherIcons;

    invoke-direct {v0, p1}, Landroid/util/LauncherIcons;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/util/IconDrawableFactory;->mLauncherIcons:Landroid/util/LauncherIcons;

    .line 55
    iput-boolean p2, p0, Landroid/util/IconDrawableFactory;->mEmbedShadow:Z

    .line 56
    return-void
.end method

.method private blacklist getDefaultUserIconBadge(I)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 106
    iget-object v0, p0, Landroid/util/IconDrawableFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroid/util/IconDrawableFactory;->mUm:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserIconBadgeResId(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private blacklist getUpdatableUserIconBadgeId(I)Ljava/lang/String;
    .registers 3

    .line 102
    iget-object v0, p0, Landroid/util/IconDrawableFactory;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "WORK_PROFILE_ICON_BADGE"

    goto :goto_d

    :cond_b
    const-string p1, "UNDEFINED"

    :goto_d
    return-object p1
.end method

.method private synthetic blacklist lambda$getBadgedIcon$0(I)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 94
    invoke-direct {p0, p1}, Landroid/util/IconDrawableFactory;->getDefaultUserIconBadge(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public static greylist newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;
    .registers 3

    .line 118
    new-instance v0, Landroid/util/IconDrawableFactory;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/util/IconDrawableFactory;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public static greylist-max-o newInstance(Landroid/content/Context;Z)Landroid/util/IconDrawableFactory;
    .registers 3

    .line 122
    new-instance v0, Landroid/util/IconDrawableFactory;

    invoke-direct {v0, p0, p1}, Landroid/util/IconDrawableFactory;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method


# virtual methods
.method public greylist-max-r getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 64
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o getBadgedIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 68
    invoke-virtual {p0, p1, p1, p2}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public greylist getBadgedIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;
    .registers 7

    .line 74
    iget-object v0, p0, Landroid/util/IconDrawableFactory;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->loadUnbadgedItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 75
    iget-boolean v0, p0, Landroid/util/IconDrawableFactory;->mEmbedShadow:Z

    if-nez v0, :cond_11

    invoke-virtual {p0, p2, p3}, Landroid/util/IconDrawableFactory;->needsBadging(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 76
    return-object p1

    .line 79
    :cond_11
    invoke-virtual {p0, p1}, Landroid/util/IconDrawableFactory;->getShadowedIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 80
    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result p2

    if-eqz p2, :cond_36

    .line 81
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x1060269

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    .line 83
    iget-object v0, p0, Landroid/util/IconDrawableFactory;->mContext:Landroid/content/Context;

    const v1, 0x1080465

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 85
    iget-object v1, p0, Landroid/util/IconDrawableFactory;->mLauncherIcons:Landroid/util/LauncherIcons;

    invoke-virtual {v1, p1, v0, p2}, Landroid/util/LauncherIcons;->getBadgedDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 89
    :cond_36
    iget-object p2, p0, Landroid/util/IconDrawableFactory;->mUm:Landroid/os/UserManager;

    invoke-virtual {p2, p3}, Landroid/os/UserManager;->hasBadge(I)Z

    move-result p2

    if-eqz p2, :cond_5f

    .line 91
    iget-object p2, p0, Landroid/util/IconDrawableFactory;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p2

    .line 92
    invoke-direct {p0, p3}, Landroid/util/IconDrawableFactory;->getUpdatableUserIconBadgeId(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/util/IconDrawableFactory$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p3}, Landroid/util/IconDrawableFactory$$ExternalSyntheticLambda0;-><init>(Landroid/util/IconDrawableFactory;I)V

    .line 91
    const-string v2, "SOLID_COLORED"

    invoke-virtual {p2, v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 96
    iget-object v0, p0, Landroid/util/IconDrawableFactory;->mLauncherIcons:Landroid/util/LauncherIcons;

    iget-object v1, p0, Landroid/util/IconDrawableFactory;->mUm:Landroid/os/UserManager;

    invoke-virtual {v1, p3}, Landroid/os/UserManager;->getUserBadgeColor(I)I

    move-result p3

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LauncherIcons;->getBadgedDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 98
    :cond_5f
    return-object p1
.end method

.method public greylist-max-o getShadowedIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 113
    iget-object v0, p0, Landroid/util/IconDrawableFactory;->mLauncherIcons:Landroid/util/LauncherIcons;

    invoke-virtual {v0, p1}, Landroid/util/LauncherIcons;->wrapIconDrawableWithShadow(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method protected greylist-max-o needsBadging(Landroid/content/pm/ApplicationInfo;I)Z
    .registers 3

    .line 59
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result p1

    if-nez p1, :cond_11

    iget-object p1, p0, Landroid/util/IconDrawableFactory;->mUm:Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->hasBadge(I)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p1, 0x1

    :goto_12
    return p1
.end method
