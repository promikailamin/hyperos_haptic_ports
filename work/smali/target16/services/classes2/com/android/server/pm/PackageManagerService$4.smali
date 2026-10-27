.class public Lcom/android/server/pm/PackageManagerService$4;
.super Landroid/database/ContentObserver;
.source "PackageManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field public final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .registers 4

    .line 4311
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$4;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$4;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 10

    .line 4314
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$4;->val$resolver:Landroid/content/ContentResolver;

    .line 4315
    const-string v0, "enable_ephemeral_feature"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_e

    move p1, v1

    goto :goto_f

    :cond_e
    move p1, v0

    .line 4316
    :goto_f
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v2

    array-length v3, v2

    move v4, v0

    :goto_19
    if-ge v4, v3, :cond_39

    aget v5, v2, v4

    if-nez p1, :cond_2c

    .line 4317
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$4;->val$resolver:Landroid/content/ContentResolver;

    const-string v7, "instant_apps_enabled"

    .line 4318
    invoke-static {v6, v7, v1, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-nez v6, :cond_2a

    goto :goto_2c

    :cond_2a
    move v6, v0

    goto :goto_2d

    :cond_2c
    :goto_2c
    move v6, v1

    .line 4320
    :goto_2d
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$4;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v7}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmWebInstantAppsDisabled(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/utils/WatchedSparseBooleanArray;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Lcom/android/server/utils/WatchedSparseBooleanArray;->put(IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_39
    return-void
.end method
