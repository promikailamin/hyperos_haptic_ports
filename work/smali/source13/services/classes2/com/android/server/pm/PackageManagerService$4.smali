.class Lcom/android/server/pm/PackageManagerService$4;
.super Landroid/database/ContentObserver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 4273
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$4;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$4;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 11
    .param p1, "selfChange"    # Z

    .line 4276
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$4;->val$resolver:Landroid/content/ContentResolver;

    .line 4277
    const-string v1, "enable_ephemeral_feature"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v1

    .line 4278
    .local v0, "ephemeralFeatureDisabled":Z
    :goto_f
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v3

    array-length v4, v3

    move v5, v1

    :goto_19
    if-ge v5, v4, :cond_39

    aget v6, v3, v5

    .line 4279
    .local v6, "userId":I
    if-nez v0, :cond_2c

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$4;->val$resolver:Landroid/content/ContentResolver;

    .line 4280
    const-string v8, "instant_apps_enabled"

    invoke-static {v7, v8, v2, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-nez v7, :cond_2a

    goto :goto_2c

    :cond_2a
    move v7, v1

    goto :goto_2d

    :cond_2c
    :goto_2c
    move v7, v2

    .line 4282
    .local v7, "instantAppsDisabledForUser":Z
    :goto_2d
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$4;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v8}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmWebInstantAppsDisabled(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/utils/WatchedSparseBooleanArray;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Lcom/android/server/utils/WatchedSparseBooleanArray;->put(IZ)V

    .line 4278
    .end local v6    # "userId":I
    .end local v7    # "instantAppsDisabledForUser":Z
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 4284
    :cond_39
    return-void
.end method
