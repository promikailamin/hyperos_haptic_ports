.class public Lcom/android/server/wm/AppWarnings;
.super Ljava/lang/Object;
.source "AppWarnings.java"


# instance fields
.field public final mAlwaysShowUnsupportedCompileSdkWarningActivities:Landroid/util/ArraySet;

.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mConfigFile:Landroid/util/AtomicFile;

.field public mDeprecatedAbiDialogs:Landroid/util/SparseArray;

.field public mDeprecatedTargetSdkVersionDialogs:Landroid/util/SparseArray;

.field public final mPackageFlags:Landroid/util/ArrayMap;

.field public mPageSizeMismatchDialogs:Landroid/util/SparseArray;

.field public final mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

.field public mUnsupportedCompileSdkDialogs:Landroid/util/SparseArray;

.field public mUnsupportedDisplaySizeDialogs:Landroid/util/SparseArray;

.field public mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public final mWriteConfigTask:Lcom/android/server/wm/AppWarnings$WriteConfigTask;


# direct methods
.method public static synthetic $r8$lambda$H4JMXMIkLrrC65qIRbXEOcg8UtQ(Ljava/lang/String;)Z
    .registers 2

    .line 251
    const-string v0, "64"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageFlags(Lcom/android/server/wm/AppWarnings;)Landroid/util/ArrayMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUiHandler(Lcom/android/server/wm/AppWarnings;)Lcom/android/server/wm/AppWarnings$UiHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mclearAllPackageFlagsForUser(Lcom/android/server/wm/AppWarnings;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->clearAllPackageFlagsForUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhideDialogsForPackageUiThread(Lcom/android/server/wm/AppWarnings;Ljava/lang/String;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AppWarnings;->hideDialogsForPackageUiThread(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhideUnsupportedDisplaySizeDialogUiThread(Lcom/android/server/wm/AppWarnings;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/AppWarnings;->hideUnsupportedDisplaySizeDialogUiThread()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowDeprecatedAbiDialogUiThread(Lcom/android/server/wm/AppWarnings;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->showDeprecatedAbiDialogUiThread(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowDeprecatedTargetSdkDialogUiThread(Lcom/android/server/wm/AppWarnings;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->showDeprecatedTargetSdkDialogUiThread(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowPageSizeMismatchDialogUiThread(Lcom/android/server/wm/AppWarnings;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->showPageSizeMismatchDialogUiThread(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowUnsupportedCompileSdkDialogUiThread(Lcom/android/server/wm/AppWarnings;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->showUnsupportedCompileSdkDialogUiThread(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowUnsupportedDisplaySizeDialogUiThread(Lcom/android/server/wm/AppWarnings;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->showUnsupportedDisplaySizeDialogUiThread(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwriteConfigToFile(Lcom/android/server/wm/AppWarnings;Landroid/util/ArrayMap;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->writeConfigToFile(Landroid/util/ArrayMap;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/io/File;)V
    .registers 6

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    .line 110
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iput-object p2, p0, Lcom/android/server/wm/AppWarnings;->mAlwaysShowUnsupportedCompileSdkWarningActivities:Landroid/util/ArraySet;

    .line 121
    iput-object p1, p0, Lcom/android/server/wm/AppWarnings;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 122
    new-instance p1, Lcom/android/server/wm/AppWarnings$WriteConfigTask;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/AppWarnings$WriteConfigTask;-><init>(Lcom/android/server/wm/AppWarnings;Lcom/android/server/wm/AppWarnings-IA;)V

    iput-object p1, p0, Lcom/android/server/wm/AppWarnings;->mWriteConfigTask:Lcom/android/server/wm/AppWarnings$WriteConfigTask;

    .line 123
    new-instance p1, Lcom/android/server/wm/AppWarnings$UiHandler;

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/AppWarnings$UiHandler;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    .line 124
    new-instance p1, Landroid/util/AtomicFile;

    new-instance p2, Ljava/io/File;

    const-string p3, "packages-warnings.xml"

    invoke-direct {p2, p5, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p3, "warnings-config"

    invoke-direct {p1, p2, p3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/AppWarnings;->mConfigFile:Landroid/util/AtomicFile;

    return-void
.end method


# virtual methods
.method public alwaysShowUnsupportedCompileSdkWarning(Landroid/content/ComponentName;)V
    .registers 2

    .line 115
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mAlwaysShowUnsupportedCompileSdkWarningActivities:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final clearAllPackageFlagsForUser(I)V
    .registers 8

    .line 643
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 645
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    :goto_c
    if-ltz v1, :cond_2c

    .line 646
    iget-object v4, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 647
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p1, :cond_29

    .line 649
    iget-object v3, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v2

    goto :goto_29

    :catchall_27
    move-exception p0

    goto :goto_35

    :cond_29
    :goto_29
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    :cond_2c
    if-eqz v3, :cond_33

    .line 654
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mWriteConfigTask:Lcom/android/server/wm/AppWarnings$WriteConfigTask;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWarnings$WriteConfigTask;->schedule()V

    .line 656
    :cond_33
    monitor-exit v0

    return-void

    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_27

    throw p0
.end method

.method public final getPackageFlags(ILjava/lang/String;)I
    .registers 4

    .line 633
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 634
    :try_start_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 635
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_1e
    move-exception p0

    .line 636
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public final getUiContextForActivity(Lcom/android/server/wm/ActivityRecord;)Landroid/content/Context;
    .registers 4

    .line 693
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2a

    .line 694
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result p1

    if-nez p1, :cond_14

    .line 695
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getUiContext()Landroid/content/Context;

    move-result-object p0

    return-object p0

    .line 698
    :cond_14
    iget-object p1, p0, Lcom/android/server/wm/AppWarnings;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getUiContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 699
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result p0

    invoke-direct {v0, p0}, Landroid/os/UserHandle;-><init>(I)V

    .line 698
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    return-object p0

    .line 703
    :cond_2a
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 704
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getSystemUiContext()Landroid/content/Context;

    move-result-object v0

    .line 705
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getUserAssignedToDisplay(I)I

    move-result p0

    .line 706
    new-instance p1, Landroid/os/UserHandle;

    invoke-direct {p1, p0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public final getUserAssignedToDisplay(I)I
    .registers 2

    .line 717
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserAssignedToDisplay(I)I

    move-result p0

    return p0
.end method

.method public final getUserIdForActivity(Lcom/android/server/wm/ActivityRecord;)I
    .registers 3

    .line 670
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 674
    :cond_8
    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-nez v0, :cond_17

    .line 675
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getUserAssignedToDisplay(I)I

    move-result p0

    return p0

    .line 678
    :cond_17
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result p0

    return p0
.end method

.method public hasPackageFlag(ILjava/lang/String;I)Z
    .registers 4

    .line 602
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AppWarnings;->getPackageFlags(ILjava/lang/String;)I

    move-result p0

    and-int/2addr p0, p3

    if-ne p0, p3, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public final hideDialogsForPackageUiThread(Ljava/lang/String;I)V
    .registers 5

    .line 540
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialogs:Landroid/util/SparseArray;

    if-eqz v0, :cond_1e

    .line 542
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    if-eqz v0, :cond_1e

    if-eqz p1, :cond_16

    .line 543
    iget-object v1, v0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 545
    :cond_16
    invoke-virtual {v0}, Lcom/android/server/wm/AppWarnings$BaseDialog;->dismiss()V

    .line 546
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialogs:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 551
    :cond_1e
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialogs:Landroid/util/SparseArray;

    if-eqz v0, :cond_3c

    .line 553
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/UnsupportedCompileSdkDialog;

    if-eqz v0, :cond_3c

    if-eqz p1, :cond_34

    .line 554
    iget-object v1, v0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 556
    :cond_34
    invoke-virtual {v0}, Lcom/android/server/wm/AppWarnings$BaseDialog;->dismiss()V

    .line 557
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialogs:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 562
    :cond_3c
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialogs:Landroid/util/SparseArray;

    if-eqz v0, :cond_5a

    .line 564
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;

    if-eqz v0, :cond_5a

    if-eqz p1, :cond_52

    .line 565
    iget-object v1, v0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 567
    :cond_52
    invoke-virtual {v0}, Lcom/android/server/wm/AppWarnings$BaseDialog;->dismiss()V

    .line 568
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialogs:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 573
    :cond_5a
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedAbiDialogs:Landroid/util/SparseArray;

    if-eqz v0, :cond_78

    .line 574
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DeprecatedAbiDialog;

    if-eqz v0, :cond_78

    if-eqz p1, :cond_70

    .line 575
    iget-object v1, v0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 577
    :cond_70
    invoke-virtual {v0}, Lcom/android/server/wm/AppWarnings$BaseDialog;->dismiss()V

    .line 578
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedAbiDialogs:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 583
    :cond_78
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mPageSizeMismatchDialogs:Landroid/util/SparseArray;

    if-eqz v0, :cond_96

    .line 584
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/PageSizeMismatchDialog;

    if-eqz v0, :cond_96

    if-eqz p1, :cond_8e

    .line 585
    iget-object v1, v0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mPackageName:Ljava/lang/String;

    .line 586
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_96

    .line 587
    :cond_8e
    invoke-virtual {v0}, Lcom/android/server/wm/AppWarnings$BaseDialog;->dismiss()V

    .line 588
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mPageSizeMismatchDialogs:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    :cond_96
    return-void
.end method

.method public final hideUnsupportedDisplaySizeDialogUiThread()V
    .registers 3

    .line 352
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialogs:Landroid/util/SparseArray;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 356
    :goto_6
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 357
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWarnings$BaseDialog;->dismiss()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 359
    :cond_1c
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialogs:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public onDensityChanged()V
    .registers 1

    .line 316
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWarnings$UiHandler;->hideUnsupportedDisplaySizeDialog()V

    return-void
.end method

.method public onPackageDataCleared(Ljava/lang/String;I)V
    .registers 3

    .line 299
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AppWarnings;->removePackageAndHideDialogs(Ljava/lang/String;I)V

    return-void
.end method

.method public onPackageUninstalled(Ljava/lang/String;I)V
    .registers 3

    .line 309
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AppWarnings;->removePackageAndHideDialogs(Ljava/lang/String;I)V

    return-void
.end method

.method public onResumeActivity(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 289
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->showUnsupportedDisplaySizeDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public onStartActivity(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 274
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->showUnsupportedCompileSdkDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 275
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->showUnsupportedDisplaySizeDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 276
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->showDeprecatedTargetDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 277
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->showDeprecatedAbiDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 279
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->showPageSizeMismatchDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public onSystemReady()V
    .registers 3

    .line 131
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 132
    invoke-virtual {p0}, Lcom/android/server/wm/AppWarnings;->readConfigFromFileAmsThread()V

    .line 134
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    .line 138
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    new-instance v1, Lcom/android/server/wm/AppWarnings$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/AppWarnings$1;-><init>(Lcom/android/server/wm/AppWarnings;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->addUserLifecycleListener(Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;)V

    return-void
.end method

.method public final readConfigFromFileAmsThread()V
    .registers 17

    move-object/from16 v0, p0

    .line 920
    const-string v1, "Error reading package metadata"

    const-string v2, "AppWarnings"

    const/4 v3, 0x0

    .line 923
    :try_start_7
    iget-object v4, v0, Lcom/android/server/wm/AppWarnings;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_d} :catch_e4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_d} :catch_e1
    .catchall {:try_start_7 .. :try_end_d} :catchall_de

    .line 925
    :try_start_d
    invoke-static {v4}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v5

    .line 927
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v6

    :goto_15
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v6, v7, :cond_2c

    if-eq v6, v8, :cond_2c

    .line 930
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v6
    :try_end_1f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_1f} :catch_28
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1f} :catch_24
    .catchall {:try_start_d .. :try_end_1f} :catchall_20

    goto :goto_15

    :catchall_20
    move-exception v0

    move-object v3, v4

    goto/16 :goto_fc

    :catch_24
    move-exception v0

    move-object v3, v4

    goto/16 :goto_e7

    :catch_28
    move-exception v0

    move-object v3, v4

    goto/16 :goto_f5

    :cond_2c
    if-ne v6, v8, :cond_34

    if-eqz v4, :cond_fb

    .line 999
    :try_start_30
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_33

    :catch_33
    return-void

    .line 936
    :cond_34
    :try_start_34
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 937
    const-string v9, "packages"

    invoke-virtual {v9, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d8

    .line 938
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v6

    const/4 v9, 0x0

    move v10, v9

    :goto_46
    if-ne v6, v7, :cond_c7

    .line 942
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 943
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v11

    if-ne v11, v7, :cond_c7

    .line 944
    const-string v11, "package"

    invoke-virtual {v11, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c7

    .line 945
    const-string v6, "user"

    const/16 v11, -0x2710

    invoke-interface {v5, v3, v6, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    .line 947
    const-string v12, "name"

    invoke-interface {v5, v3, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_c7

    .line 949
    const-string v13, "flags"

    invoke-interface {v5, v3, v13, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v13

    if-eq v6, v11, :cond_84

    .line 952
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    .line 953
    iget-object v11, v0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v6, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c7

    .line 959
    :cond_84
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v6

    if-nez v6, :cond_9c

    .line 964
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    .line 965
    iget-object v10, v0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v6, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c6

    .line 970
    :cond_9c
    iget-object v6, v0, Lcom/android/server/wm/AppWarnings;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v6}, Lcom/android/server/pm/UserManagerInternal;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 971
    array-length v10, v6

    move v11, v9

    :goto_a4
    if-ge v11, v10, :cond_c6

    aget-object v14, v6, v11

    .line 972
    invoke-virtual {v14}, Landroid/content/pm/UserInfo;->isFull()Z

    move-result v15

    if-nez v15, :cond_af

    goto :goto_c2

    .line 975
    :cond_af
    iget v14, v14, Landroid/content/pm/UserInfo;->id:I

    .line 976
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v14, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v14

    .line 977
    iget-object v15, v0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v14, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_c2
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x0

    goto :goto_a4

    :cond_c6
    :goto_c6
    move v10, v8

    .line 985
    :cond_c7
    :goto_c7
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v6

    if-ne v6, v8, :cond_d5

    if-eqz v10, :cond_d8

    .line 989
    iget-object v0, v0, Lcom/android/server/wm/AppWarnings;->mWriteConfigTask:Lcom/android/server/wm/AppWarnings$WriteConfigTask;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWarnings$WriteConfigTask;->schedule()V
    :try_end_d4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_34 .. :try_end_d4} :catch_28
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_d4} :catch_24
    .catchall {:try_start_34 .. :try_end_d4} :catchall_20

    goto :goto_d8

    :cond_d5
    const/4 v3, 0x0

    goto/16 :goto_46

    :cond_d8
    :goto_d8
    if-eqz v4, :cond_fb

    .line 999
    :try_start_da
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_dd} :catch_fb

    return-void

    :catchall_de
    move-exception v0

    const/4 v3, 0x0

    goto :goto_fc

    :catch_e1
    move-exception v0

    const/4 v3, 0x0

    goto :goto_e7

    :catch_e4
    move-exception v0

    const/4 v3, 0x0

    goto :goto_f5

    :goto_e7
    if-eqz v3, :cond_ef

    .line 995
    :try_start_e9
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ec
    .catchall {:try_start_e9 .. :try_end_ec} :catchall_ed

    goto :goto_ef

    :catchall_ed
    move-exception v0

    goto :goto_fc

    :cond_ef
    :goto_ef
    if-eqz v3, :cond_fb

    .line 999
    :goto_f1
    :try_start_f1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_f4
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_f4} :catch_fb

    goto :goto_fb

    .line 993
    :goto_f5
    :try_start_f5
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f8
    .catchall {:try_start_f5 .. :try_end_f8} :catchall_ed

    if-eqz v3, :cond_fb

    goto :goto_f1

    :catch_fb
    :cond_fb
    :goto_fb
    return-void

    :goto_fc
    if-eqz v3, :cond_101

    .line 999
    :try_start_fe
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_101
    .catch Ljava/io/IOException; {:try_start_fe .. :try_end_101} :catch_101

    .line 1003
    :catch_101
    :cond_101
    throw v0
.end method

.method public final removePackageAndHideDialogs(Ljava/lang/String;I)V
    .registers 4

    .line 327
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p2, 0x0

    goto :goto_e

    .line 332
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result p2

    .line 335
    :goto_e
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AppWarnings$UiHandler;->hideDialogsForPackage(Ljava/lang/String;I)V

    .line 337
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 338
    :try_start_16
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 339
    iget-object p2, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 340
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mWriteConfigTask:Lcom/android/server/wm/AppWarnings$WriteConfigTask;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWarnings$WriteConfigTask;->schedule()V

    goto :goto_2e

    :catchall_2c
    move-exception p0

    goto :goto_30

    .line 342
    :cond_2e
    :goto_2e
    monitor-exit v0

    return-void

    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_16 .. :try_end_31} :catchall_2c

    throw p0
.end method

.method public setPackageFlag(ILjava/lang/String;IZ)V
    .registers 7

    .line 614
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 615
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AppWarnings;->getPackageFlags(ILjava/lang/String;)I

    move-result v1

    if-eqz p4, :cond_b

    or-int/2addr p3, v1

    goto :goto_d

    :cond_b
    not-int p3, p3

    and-int/2addr p3, v1

    :goto_d
    if-eq v1, p3, :cond_2f

    .line 618
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p3, :cond_25

    .line 620
    iget-object p2, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    :catchall_23
    move-exception p0

    goto :goto_31

    .line 622
    :cond_25
    iget-object p2, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    :goto_2a
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mWriteConfigTask:Lcom/android/server/wm/AppWarnings$WriteConfigTask;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWarnings$WriteConfigTask;->schedule()V

    .line 626
    :cond_2f
    monitor-exit v0

    return-void

    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_23

    throw p0
.end method

.method public showDeprecatedAbiDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    .line 233
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_b

    return-void

    .line 241
    :cond_b
    const-string v0, "debug.wm.disable_deprecated_abi_dialog"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_3e

    .line 246
    :cond_15
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 247
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    if-eqz v2, :cond_2a

    if-nez v0, :cond_2a

    .line 248
    const-string v0, "64"

    .line 249
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    const/4 v1, 0x1

    .line 250
    :cond_2a
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    new-instance v2, Lcom/android/server/wm/AppWarnings$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/wm/AppWarnings$$ExternalSyntheticLambda0;-><init>()V

    .line 251
    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->find([Ljava/lang/Object;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3e

    if-eqz v1, :cond_3e

    .line 253
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings$UiHandler;->showDeprecatedAbiDialog(Lcom/android/server/wm/ActivityRecord;)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method public final showDeprecatedAbiDialogUiThread(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    .line 458
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getUserIdForActivity(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    .line 460
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedAbiDialogs:Landroid/util/SparseArray;

    if-eqz v1, :cond_18

    .line 461
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DeprecatedAbiDialog;

    if-eqz v1, :cond_18

    .line 463
    invoke-virtual {v1}, Lcom/android/server/wm/AppWarnings$BaseDialog;->dismiss()V

    .line 464
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedAbiDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 467
    :cond_18
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/AppWarnings;->hasPackageFlag(ILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_42

    .line 468
    new-instance v1, Lcom/android/server/wm/DeprecatedAbiDialog;

    .line 469
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getUiContextForActivity(Lcom/android/server/wm/ActivityRecord;)Landroid/content/Context;

    move-result-object v2

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, p0, v2, p1, v0}, Lcom/android/server/wm/DeprecatedAbiDialog;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;I)V

    .line 470
    invoke-virtual {v1}, Lcom/android/server/wm/AppWarnings$BaseDialog;->show()V

    .line 471
    iget-object p1, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedAbiDialogs:Landroid/util/SparseArray;

    if-nez p1, :cond_3d

    .line 472
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedAbiDialogs:Landroid/util/SparseArray;

    .line 474
    :cond_3d
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedAbiDialogs:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_42
    return-void
.end method

.method public showDeprecatedTargetDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    .line 216
    const-string v0, "debug.wm.disable_deprecated_target_sdk_dialog"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 218
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sget v2, Landroid/os/Build$VERSION;->MIN_SUPPORTED_TARGET_SDK_INT:I

    if-ge v1, v2, :cond_18

    if-nez v0, :cond_18

    .line 220
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings$UiHandler;->showDeprecatedTargetDialog(Lcom/android/server/wm/ActivityRecord;)V

    :cond_18
    return-void
.end method

.method public final showDeprecatedTargetSdkDialogUiThread(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    .line 429
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getUserIdForActivity(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    .line 431
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialogs:Landroid/util/SparseArray;

    if-eqz v1, :cond_18

    .line 432
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;

    if-eqz v1, :cond_18

    .line 434
    invoke-virtual {v1}, Lcom/android/server/wm/AppWarnings$BaseDialog;->dismiss()V

    .line 435
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 438
    :cond_18
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/AppWarnings;->hasPackageFlag(ILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_41

    .line 439
    new-instance v1, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;

    .line 440
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getUiContextForActivity(Lcom/android/server/wm/ActivityRecord;)Landroid/content/Context;

    move-result-object v2

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, p0, v2, p1, v0}, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;I)V

    .line 441
    invoke-virtual {v1}, Lcom/android/server/wm/AppWarnings$BaseDialog;->show()V

    .line 442
    iget-object p1, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialogs:Landroid/util/SparseArray;

    if-nez p1, :cond_3c

    .line 443
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialogs:Landroid/util/SparseArray;

    .line 445
    :cond_3c
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialogs:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_41
    return-void
.end method

.method public showPageSizeMismatchDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 259
    const-string v0, "bionic.linker.16kb.app_compat.enabled"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    .line 265
    :cond_11
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings$UiHandler;->showPageSizeMismatchDialog(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public final showPageSizeMismatchDialogUiThread(Lcom/android/server/wm/ActivityRecord;)V
    .registers 10

    .line 480
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 482
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 483
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPageSizeCompatWarningMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_13

    goto :goto_5f

    .line 488
    :cond_13
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getUserIdForActivity(Lcom/android/server/wm/ActivityRecord;)I

    move-result v6

    .line 490
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mPageSizeMismatchDialogs:Landroid/util/SparseArray;

    if-eqz v0, :cond_2b

    .line 491
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/PageSizeMismatchDialog;

    if-eqz v0, :cond_2b

    .line 493
    invoke-virtual {v0}, Lcom/android/server/wm/AppWarnings$BaseDialog;->dismiss()V

    .line 494
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mPageSizeMismatchDialogs:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 497
    :cond_2b
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-virtual {p0, v6, v0, v1}, Lcom/android/server/wm/AppWarnings;->hasPackageFlag(ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 498
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getUiContextForActivity(Lcom/android/server/wm/ActivityRecord;)Landroid/content/Context;

    move-result-object v0

    .line 502
    new-instance v4, Lcom/android/server/wm/AppWarnings$2;

    invoke-virtual {v0}, Landroid/content/Context;->getThemeResId()I

    move-result v1

    invoke-direct {v4, p0, v0, v1}, Lcom/android/server/wm/AppWarnings$2;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;I)V

    .line 513
    new-instance v2, Lcom/android/server/wm/PageSizeMismatchDialog;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/PageSizeMismatchDialog;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;ILjava/lang/String;)V

    .line 520
    invoke-virtual {v2}, Lcom/android/server/wm/PageSizeMismatchDialog;->show()V

    .line 521
    iget-object p0, v3, Lcom/android/server/wm/AppWarnings;->mPageSizeMismatchDialogs:Landroid/util/SparseArray;

    if-nez p0, :cond_5a

    .line 522
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    iput-object p0, v3, Lcom/android/server/wm/AppWarnings;->mPageSizeMismatchDialogs:Landroid/util/SparseArray;

    .line 524
    :cond_5a
    iget-object p0, v3, Lcom/android/server/wm/AppWarnings;->mPageSizeMismatchDialogs:Landroid/util/SparseArray;

    invoke-virtual {p0, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_5f
    :goto_5f
    return-void
.end method

.method public showUnsupportedCompileSdkDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .registers 7

    .line 175
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->compileSdkVersion:I

    if-eqz v1, :cond_4d

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    if-nez v0, :cond_d

    goto :goto_4d

    .line 182
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mAlwaysShowUnsupportedCompileSdkWarningActivities:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 183
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_4d

    .line 195
    :cond_18
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->compileSdkVersion:I

    .line 196
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 197
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    .line 198
    const-string v3, "REL"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 199
    sget-object v4, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v0, :cond_32

    if-lt v1, v2, :cond_48

    :cond_32
    if-nez v3, :cond_36

    if-lt v2, v1, :cond_48

    :cond_36
    if-nez v0, :cond_4d

    if-nez v3, :cond_4d

    if-ne v2, v1, :cond_4d

    .line 200
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    .line 203
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 205
    :cond_48
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings$UiHandler;->showUnsupportedCompileSdkDialog(Lcom/android/server/wm/ActivityRecord;)V

    :cond_4d
    :goto_4d
    return-void
.end method

.method public final showUnsupportedCompileSdkDialogUiThread(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    .line 400
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getUserIdForActivity(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    .line 402
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialogs:Landroid/util/SparseArray;

    if-eqz v1, :cond_18

    .line 403
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/UnsupportedCompileSdkDialog;

    if-eqz v1, :cond_18

    .line 405
    invoke-virtual {v1}, Lcom/android/server/wm/AppWarnings$BaseDialog;->dismiss()V

    .line 406
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 409
    :cond_18
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/AppWarnings;->hasPackageFlag(ILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_41

    .line 410
    new-instance v1, Lcom/android/server/wm/UnsupportedCompileSdkDialog;

    .line 411
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getUiContextForActivity(Lcom/android/server/wm/ActivityRecord;)Landroid/content/Context;

    move-result-object v2

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, p0, v2, p1, v0}, Lcom/android/server/wm/UnsupportedCompileSdkDialog;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;I)V

    .line 412
    invoke-virtual {v1}, Lcom/android/server/wm/AppWarnings$BaseDialog;->show()V

    .line 413
    iget-object p1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialogs:Landroid/util/SparseArray;

    if-nez p1, :cond_3c

    .line 414
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialogs:Landroid/util/SparseArray;

    .line 416
    :cond_3c
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialogs:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_41
    return-void
.end method

.method public showUnsupportedDisplaySizeDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    .line 159
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_d

    .line 161
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    goto :goto_11

    :cond_d
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 162
    :goto_11
    iget v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    sget v2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    if-eq v1, v2, :cond_26

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-le v1, v0, :cond_26

    .line 165
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings$UiHandler;->showUnsupportedDisplaySizeDialog(Lcom/android/server/wm/ActivityRecord;)V

    :cond_26
    return-void
.end method

.method public final showUnsupportedDisplaySizeDialogUiThread(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    .line 371
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getUserIdForActivity(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    .line 373
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialogs:Landroid/util/SparseArray;

    if-eqz v1, :cond_18

    .line 374
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    if-eqz v1, :cond_18

    .line 376
    invoke-virtual {v1}, Lcom/android/server/wm/AppWarnings$BaseDialog;->dismiss()V

    .line 377
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 380
    :cond_18
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/AppWarnings;->hasPackageFlag(ILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_41

    .line 381
    new-instance v1, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    .line 382
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getUiContextForActivity(Lcom/android/server/wm/ActivityRecord;)Landroid/content/Context;

    move-result-object v2

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, p0, v2, p1, v0}, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;I)V

    .line 383
    invoke-virtual {v1}, Lcom/android/server/wm/AppWarnings$BaseDialog;->show()V

    .line 384
    iget-object p1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialogs:Landroid/util/SparseArray;

    if-nez p1, :cond_3c

    .line 385
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialogs:Landroid/util/SparseArray;

    .line 387
    :cond_3c
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialogs:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_41
    return-void
.end method

.method public final writeConfigToFile(Landroid/util/ArrayMap;)V
    .registers 12

    .line 877
    const-string v0, "package"

    const-string v1, "packages"

    const/4 v2, 0x0

    .line 879
    :try_start_5
    iget-object v3, p0, Lcom/android/server/wm/AppWarnings;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_6a

    .line 881
    :try_start_b
    invoke-static {v3}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v4

    .line 882
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v2, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 883
    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 884
    invoke-interface {v4, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x0

    .line 886
    :goto_1e
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_5e

    .line 887
    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 888
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 889
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 890
    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_43

    goto :goto_58

    .line 894
    :cond_43
    invoke-interface {v4, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 895
    const-string v9, "user"

    invoke-interface {v4, v2, v9, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 896
    const-string v7, "name"

    invoke-interface {v4, v2, v7, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 897
    const-string v6, "flags"

    invoke-interface {v4, v2, v6, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 898
    invoke-interface {v4, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_58
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    :catch_5b
    move-exception p1

    move-object v2, v3

    goto :goto_6b

    .line 901
    :cond_5e
    invoke-interface {v4, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 902
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 904
    iget-object p1, p0, Lcom/android/server/wm/AppWarnings;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {p1, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_69} :catch_5b

    return-void

    :catch_6a
    move-exception p1

    .line 906
    :goto_6b
    const-string v0, "AppWarnings"

    const-string v1, "Error writing package metadata"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v2, :cond_79

    .line 908
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_79
    return-void
.end method
