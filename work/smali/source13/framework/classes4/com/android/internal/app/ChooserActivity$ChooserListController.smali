.class public Lcom/android/internal/app/ChooserActivity$ChooserListController;
.super Lcom/android/internal/app/ResolverListController;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChooserListController"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;ILandroid/os/UserHandle;Lcom/android/internal/app/AbstractResolverComparator;)V
    .registers 19
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "pm"    # Landroid/content/pm/PackageManager;
    .param p4, "targetIntent"    # Landroid/content/Intent;
    .param p5, "referrerPackageName"    # Ljava/lang/String;
    .param p6, "launchedFromUid"    # I
    .param p7, "userId"    # Landroid/os/UserHandle;
    .param p8, "resolverComparator"    # Lcom/android/internal/app/AbstractResolverComparator;

    .line 2395
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Lcom/android/internal/app/ChooserActivity$ChooserListController;->this$0:Lcom/android/internal/app/ChooserActivity;

    .line 2396
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/ResolverListController;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;ILandroid/os/UserHandle;Lcom/android/internal/app/AbstractResolverComparator;)V

    .line 2398
    return-void
.end method


# virtual methods
.method blacklist isComponentFiltered(Landroid/content/ComponentName;)Z
    .registers 8
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 2402
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListController;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmFilteredComponentNames(Lcom/android/internal/app/ChooserActivity;)[Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 2403
    return v1

    .line 2405
    :cond_a
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListController;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmFilteredComponentNames(Lcom/android/internal/app/ChooserActivity;)[Landroid/content/ComponentName;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_12
    if-ge v3, v2, :cond_21

    aget-object v4, v0, v3

    .line 2406
    .local v4, "filteredComponentName":Landroid/content/ComponentName;
    invoke-virtual {p1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 2407
    const/4 v0, 0x1

    return v0

    .line 2405
    .end local v4    # "filteredComponentName":Landroid/content/ComponentName;
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 2410
    :cond_21
    return v1
.end method

.method public blacklist isComponentPinned(Landroid/content/ComponentName;)Z
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 2415
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListController;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmPinnedSharedPrefs(Lcom/android/internal/app/ChooserActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public blacklist isFixedAtTop(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 2420
    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListController;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->getNearbySharingComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListController;->this$0:Lcom/android/internal/app/ChooserActivity;

    .line 2421
    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mshouldNearbyShareBeFirstInRankedRow(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 2420
    :goto_19
    return v0
.end method
