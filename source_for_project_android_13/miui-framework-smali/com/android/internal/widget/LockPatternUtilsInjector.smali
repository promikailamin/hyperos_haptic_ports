.class public Lcom/android/internal/widget/LockPatternUtilsInjector;
.super Ljava/lang/Object;
.source "LockPatternUtilsInjector.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isUserAllowed(Landroid/os/UserManager;)Z
    .registers 3
    .param p0, "userManager"    # Landroid/os/UserManager;

    .line 14
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 15
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    const/4 v1, 0x0

    return v1
.end method
