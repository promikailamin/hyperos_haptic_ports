.class public abstract Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EnrollmentCallback"
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAcquired(Z)V
    .registers 2

    .line 486
    return-void
.end method

.method public greylist-max-o onEnrollmentError(ILjava/lang/CharSequence;)V
    .registers 3

    .line 462
    return-void
.end method

.method public greylist-max-o onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .registers 3

    .line 472
    return-void
.end method

.method public greylist-max-o onEnrollmentProgress(I)V
    .registers 2

    .line 480
    return-void
.end method

.method public blacklist onUdfpsOverlayShown()V
    .registers 1

    .line 501
    return-void
.end method

.method public blacklist onUdfpsPointerDown(I)V
    .registers 2

    .line 491
    return-void
.end method

.method public blacklist onUdfpsPointerUp(I)V
    .registers 2

    .line 496
    return-void
.end method
