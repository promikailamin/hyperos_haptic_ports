.class Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;
.super Ljava/lang/Object;
.source "PackageStateMutator.java"

# interfaces
.implements Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserStateWriteWrapper"
.end annotation


# instance fields
.field private mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public putSuspendParams(Ljava/lang/String;Lcom/android/server/pm/pkg/SuspendParams;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
    .registers 4
    .param p1, "suspendingPackage"    # Ljava/lang/String;
    .param p2, "suspendParams"    # Lcom/android/server/pm/pkg/SuspendParams;

    .line 315
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    if-eqz v0, :cond_7

    .line 316
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->putSuspendParams(Ljava/lang/String;Lcom/android/server/pm/pkg/SuspendParams;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 318
    :cond_7
    return-object p0
.end method

.method public removeSuspension(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
    .registers 3
    .param p1, "suspendingPackage"    # Ljava/lang/String;

    .line 324
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    if-eqz v0, :cond_7

    .line 325
    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->removeSuspension(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 327
    :cond_7
    return-object p0
.end method

.method public setComponentLabelIcon(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
    .registers 5
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "nonLocalizedLabel"    # Ljava/lang/String;
    .param p3, "icon"    # Ljava/lang/Integer;

    .line 398
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    if-eqz v0, :cond_7

    .line 399
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->overrideLabelAndIcon(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;)Z

    .line 401
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public setDistractionFlags(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
    .registers 3
    .param p1, "restrictionFlags"    # I

    .line 305
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    if-eqz v0, :cond_7

    .line 306
    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setDistractionFlags(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 308
    :cond_7
    return-object p0
.end method

.method public setHarmfulAppWarning(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
    .registers 3
    .param p1, "warning"    # Ljava/lang/String;

    .line 379
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    if-eqz v0, :cond_7

    .line 380
    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setHarmfulAppWarning(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 382
    :cond_7
    return-object p0
.end method

.method public setHidden(Z)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
    .registers 3
    .param p1, "hidden"    # Z

    .line 333
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    if-eqz v0, :cond_7

    .line 334
    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setHidden(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 336
    :cond_7
    return-object p0
.end method

.method public setInstalled(Z)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
    .registers 3
    .param p1, "installed"    # Z

    .line 286
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    if-eqz v0, :cond_7

    .line 287
    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setInstalled(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 289
    :cond_7
    return-object p0
.end method

.method public setNotLaunched(Z)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
    .registers 3
    .param p1, "notLaunched"    # Z

    .line 351
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    if-eqz v0, :cond_7

    .line 352
    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setNotLaunched(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 354
    :cond_7
    return-object p0
.end method

.method public setOverlayPaths(Landroid/content/pm/overlay/OverlayPaths;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
    .registers 3
    .param p1, "overlayPaths"    # Landroid/content/pm/overlay/OverlayPaths;

    .line 360
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    if-eqz v0, :cond_7

    .line 361
    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setOverlayPaths(Landroid/content/pm/overlay/OverlayPaths;)Z

    .line 363
    :cond_7
    return-object p0
.end method

.method public setOverlayPathsForLibrary(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
    .registers 4
    .param p1, "libraryName"    # Ljava/lang/String;
    .param p2, "overlayPaths"    # Landroid/content/pm/overlay/OverlayPaths;

    .line 370
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    if-eqz v0, :cond_7

    .line 371
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setSharedLibraryOverlayPaths(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;)Z

    .line 373
    :cond_7
    return-object p0
.end method

.method public setSplashScreenTheme(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
    .registers 3
    .param p1, "theme"    # Ljava/lang/String;

    .line 388
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    if-eqz v0, :cond_7

    .line 389
    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setSplashScreenTheme(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 391
    :cond_7
    return-object p0
.end method

.method public setStates(Lcom/android/server/pm/pkg/PackageUserStateImpl;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;
    .registers 2
    .param p1, "userState"    # Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 279
    iput-object p1, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 280
    return-object p0
.end method

.method public setStopped(Z)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
    .registers 3
    .param p1, "stopped"    # Z

    .line 342
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    if-eqz v0, :cond_7

    .line 343
    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setStopped(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 345
    :cond_7
    return-object p0
.end method

.method public setUninstallReason(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
    .registers 3
    .param p1, "reason"    # I

    .line 295
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    if-eqz v0, :cond_7

    .line 296
    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setUninstallReason(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 298
    :cond_7
    return-object p0
.end method
