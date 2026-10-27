.class public abstract Landroid/app/FragmentManager$FragmentLifecycleCallbacks;
.super Ljava/lang/Object;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/FragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FragmentLifecycleCallbacks"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onFragmentActivityCreated(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/os/Bundle;)V
    .registers 4

    .line 507
    return-void
.end method

.method public whitelist onFragmentAttached(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/content/Context;)V
    .registers 4

    .line 472
    return-void
.end method

.method public whitelist onFragmentCreated(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/os/Bundle;)V
    .registers 4

    .line 495
    return-void
.end method

.method public whitelist onFragmentDestroyed(Landroid/app/FragmentManager;Landroid/app/Fragment;)V
    .registers 3

    .line 583
    return-void
.end method

.method public whitelist onFragmentDetached(Landroid/app/FragmentManager;Landroid/app/Fragment;)V
    .registers 3

    .line 592
    return-void
.end method

.method public whitelist onFragmentPaused(Landroid/app/FragmentManager;Landroid/app/Fragment;)V
    .registers 3

    .line 546
    return-void
.end method

.method public whitelist onFragmentPreAttached(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/content/Context;)V
    .registers 4

    .line 462
    return-void
.end method

.method public whitelist onFragmentPreCreated(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/os/Bundle;)V
    .registers 4

    .line 484
    return-void
.end method

.method public whitelist onFragmentResumed(Landroid/app/FragmentManager;Landroid/app/Fragment;)V
    .registers 3

    .line 537
    return-void
.end method

.method public whitelist onFragmentSaveInstanceState(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/os/Bundle;)V
    .registers 4

    .line 565
    return-void
.end method

.method public whitelist onFragmentStarted(Landroid/app/FragmentManager;Landroid/app/Fragment;)V
    .registers 3

    .line 528
    return-void
.end method

.method public whitelist onFragmentStopped(Landroid/app/FragmentManager;Landroid/app/Fragment;)V
    .registers 3

    .line 555
    return-void
.end method

.method public whitelist onFragmentViewCreated(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    .line 519
    return-void
.end method

.method public whitelist onFragmentViewDestroyed(Landroid/app/FragmentManager;Landroid/app/Fragment;)V
    .registers 3

    .line 574
    return-void
.end method
