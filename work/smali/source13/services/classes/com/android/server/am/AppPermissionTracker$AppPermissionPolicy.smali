.class final Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;
.super Lcom/android/server/am/BaseAppStatePolicy;
.source "AppPermissionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPermissionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AppPermissionPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/am/BaseAppStatePolicy<",
        "Lcom/android/server/am/AppPermissionTracker;",
        ">;"
    }
.end annotation


# static fields
.field static final DEFAULT_BG_PERMISSIONS_IN_MONITOR:[Ljava/lang/String;

.field static final DEFAULT_BG_PERMISSION_MONITOR_ENABLED:Z = true

.field static final KEY_BG_PERMISSIONS_IN_MONITOR:Ljava/lang/String; = "bg_permission_in_monitor"

.field static final KEY_BG_PERMISSION_MONITOR_ENABLED:Ljava/lang/String; = "bg_permission_monitor_enabled"


# instance fields
.field volatile mBgPermissionsInMonitor:[Landroid/util/Pair;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 526
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const-string v1, "android:fine_location"

    const-string v2, "android.permission.CAMERA"

    const-string v3, "android:camera"

    const-string v4, "android.permission.RECORD_AUDIO"

    const-string v5, "android:record_audio"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->DEFAULT_BG_PERMISSIONS_IN_MONITOR:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/AppPermissionTracker;)V
    .registers 5
    .param p1, "injector"    # Lcom/android/server/am/BaseAppStateTracker$Injector;
    .param p2, "tracker"    # Lcom/android/server/am/AppPermissionTracker;

    .line 538
    const-string v0, "bg_permission_monitor_enabled"

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/am/BaseAppStatePolicy;-><init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/BaseAppStateTracker;Ljava/lang/String;Z)V

    .line 540
    sget-object v0, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->DEFAULT_BG_PERMISSIONS_IN_MONITOR:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->parsePermissionConfig([Ljava/lang/String;)[Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->mBgPermissionsInMonitor:[Landroid/util/Pair;

    .line 541
    return-void
.end method

.method private parsePermissionConfig([Ljava/lang/String;)[Landroid/util/Pair;
    .registers 7
    .param p1, "perms"    # [Ljava/lang/String;

    .line 566
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Landroid/util/Pair;

    .line 567
    .local v0, "result":[Landroid/util/Pair;
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_7
    array-length v3, p1

    if-ge v1, v3, :cond_3b

    .line 569
    :try_start_a
    aget-object v3, p1, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v3, 0x0

    goto :goto_16

    :cond_14
    aget-object v3, p1, v1

    .line 570
    :goto_16
    add-int/lit8 v4, v1, 0x1

    aget-object v4, p1, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_22

    const/4 v4, -0x1

    goto :goto_2a

    :cond_22
    add-int/lit8 v4, v1, 0x1

    aget-object v4, p1, v4

    invoke-static {v4}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v4

    :goto_2a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 569
    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v0, v2
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_34} :catch_35

    .line 573
    goto :goto_36

    .line 571
    :catch_35
    move-exception v3

    .line 567
    :goto_36
    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 575
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_3b
    return-object v0
.end method

.method private updateBgPermissionsInMonitor()V
    .registers 4

    .line 579
    const-string v0, "activity_manager"

    const-string v1, "bg_permission_in_monitor"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, "config":Ljava/lang/String;
    nop

    .line 584
    if-eqz v0, :cond_13

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_15

    :cond_13
    sget-object v1, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->DEFAULT_BG_PERMISSIONS_IN_MONITOR:[Ljava/lang/String;

    .line 583
    :goto_15
    invoke-direct {p0, v1}, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->parsePermissionConfig([Ljava/lang/String;)[Landroid/util/Pair;

    move-result-object v1

    .line 585
    .local v1, "newPermsInMonitor":[Landroid/util/Pair;
    iget-object v2, p0, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->mBgPermissionsInMonitor:[Landroid/util/Pair;

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 586
    iput-object v1, p0, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->mBgPermissionsInMonitor:[Landroid/util/Pair;

    .line 587
    invoke-virtual {p0}, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 589
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->onTrackerEnabled(Z)V

    .line 590
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->onTrackerEnabled(Z)V

    .line 593
    :cond_31
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 602
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 603
    const-string v0, "APP PERMISSION TRACKER POLICY SETTINGS:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 605
    invoke-super {p0, p1, p2}, Lcom/android/server/am/BaseAppStatePolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 606
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 607
    const-string v0, "bg_permission_in_monitor"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 608
    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 609
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 610
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_31
    iget-object v1, p0, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->mBgPermissionsInMonitor:[Landroid/util/Pair;

    array-length v1, v1

    if-ge v0, v1, :cond_6c

    .line 611
    const/16 v1, 0x2c

    if-lez v0, :cond_3d

    .line 612
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 614
    :cond_3d
    iget-object v2, p0, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->mBgPermissionsInMonitor:[Landroid/util/Pair;

    aget-object v2, v2, v0

    .line 615
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v3, :cond_4c

    .line 616
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 618
    :cond_4c
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 619
    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_69

    .line 620
    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 610
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_69
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 623
    .end local v0    # "i":I
    :cond_6c
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(C)V

    .line 624
    return-void
.end method

.method getBgPermissionsInMonitor()[Landroid/util/Pair;
    .registers 2

    .line 562
    iget-object v0, p0, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->mBgPermissionsInMonitor:[Landroid/util/Pair;

    return-object v0
.end method

.method public onPropertiesChanged(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 551
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_20

    :cond_7
    goto :goto_12

    :pswitch_8
    const-string v0, "bg_permission_in_monitor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_13

    :goto_12
    const/4 v0, -0x1

    :goto_13
    packed-switch v0, :pswitch_data_26

    .line 556
    invoke-super {p0, p1}, Lcom/android/server/am/BaseAppStatePolicy;->onPropertiesChanged(Ljava/lang/String;)V

    goto :goto_1e

    .line 553
    :pswitch_1a
    invoke-direct {p0}, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->updateBgPermissionsInMonitor()V

    .line 554
    nop

    .line 559
    :goto_1e
    return-void

    nop

    :pswitch_data_20
    .packed-switch -0x708abfca
        :pswitch_8
    .end packed-switch

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1a
    .end packed-switch
.end method

.method public onSystemReady()V
    .registers 1

    .line 545
    invoke-super {p0}, Lcom/android/server/am/BaseAppStatePolicy;->onSystemReady()V

    .line 546
    invoke-direct {p0}, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->updateBgPermissionsInMonitor()V

    .line 547
    return-void
.end method

.method public onTrackerEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 597
    iget-object v0, p0, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v0, Lcom/android/server/am/AppPermissionTracker;

    invoke-static {v0, p1}, Lcom/android/server/am/AppPermissionTracker;->-$$Nest$monPermissionTrackerEnabled(Lcom/android/server/am/AppPermissionTracker;Z)V

    .line 598
    return-void
.end method
