.class public Lcom/android/internal/app/MiuiChooserActivity$ChooserListController;
.super Lcom/android/internal/app/ResolverListController;
.source "MiuiChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MiuiChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChooserListController"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/MiuiChooserActivity;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/MiuiChooserActivity;Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;ILandroid/os/UserHandle;Lcom/android/internal/app/AbstractResolverComparator;)V
    .registers 19
    .param p1, "this$0"    # Lcom/android/internal/app/MiuiChooserActivity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "pm"    # Landroid/content/pm/PackageManager;
    .param p4, "targetIntent"    # Landroid/content/Intent;
    .param p5, "referrerPackageName"    # Ljava/lang/String;
    .param p6, "launchedFromUid"    # I
    .param p7, "userId"    # Landroid/os/UserHandle;
    .param p8, "resolverComparator"    # Lcom/android/internal/app/AbstractResolverComparator;

    .line 2803
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Lcom/android/internal/app/MiuiChooserActivity$ChooserListController;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    .line 2804
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/ResolverListController;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;ILandroid/os/UserHandle;Lcom/android/internal/app/AbstractResolverComparator;)V

    .line 2806
    return-void
.end method


# virtual methods
.method public blacklist getScore(Lcom/android/internal/app/chooser/DisplayResolveInfo;)F
    .registers 4
    .param p1, "target"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 2829
    if-nez p1, :cond_5

    .line 2830
    const/high16 v0, 0x44610000    # 900.0f

    return v0

    .line 2832
    :cond_5
    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverListController;->getScore(Lcom/android/internal/app/chooser/DisplayResolveInfo;)F

    move-result v0

    .line 2833
    .local v0, "score":F
    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->isPinned()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2834
    const/high16 v1, 0x447a0000    # 1000.0f

    add-float/2addr v0, v1

    .line 2836
    :cond_12
    return v0
.end method

.method blacklist isComponentFiltered(Landroid/content/ComponentName;)Z
    .registers 8
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 2810
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserListController;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/MiuiChooserActivity;->-$$Nest$fgetmFilteredComponentNames(Lcom/android/internal/app/MiuiChooserActivity;)[Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 2811
    return v1

    .line 2813
    :cond_a
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserListController;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/MiuiChooserActivity;->-$$Nest$fgetmFilteredComponentNames(Lcom/android/internal/app/MiuiChooserActivity;)[Landroid/content/ComponentName;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_12
    if-ge v3, v2, :cond_21

    aget-object v4, v0, v3

    .line 2814
    .local v4, "filteredComponentName":Landroid/content/ComponentName;
    invoke-virtual {p1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 2815
    const/4 v0, 0x1

    return v0

    .line 2813
    .end local v4    # "filteredComponentName":Landroid/content/ComponentName;
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 2818
    :cond_21
    return v1
.end method

.method public blacklist isComponentPinned(Landroid/content/ComponentName;)Z
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 2823
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserListController;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/MiuiChooserActivity;->-$$Nest$fgetmPinnedSharedPrefs(Lcom/android/internal/app/MiuiChooserActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
