.class public final Landroid/hardware/biometrics/IdentityCheckStatus$Builder;
.super Ljava/lang/Object;
.source "IdentityCheckStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/IdentityCheckStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mIsIdentityCheckActive:Z

.field private blacklist mIsIdentityCheckValueForTestAvailable:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/hardware/biometrics/IdentityCheckStatus;
    .registers 5

    .line 119
    new-instance v0, Landroid/hardware/biometrics/IdentityCheckStatus;

    iget-boolean v1, p0, Landroid/hardware/biometrics/IdentityCheckStatus$Builder;->mIsIdentityCheckValueForTestAvailable:Z

    iget-boolean v2, p0, Landroid/hardware/biometrics/IdentityCheckStatus$Builder;->mIsIdentityCheckActive:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/biometrics/IdentityCheckStatus;-><init>(ZZLandroid/hardware/biometrics/IdentityCheckStatus-IA;)V

    return-object v0
.end method

.method public blacklist setIdentityCheckActive(Z)Landroid/hardware/biometrics/IdentityCheckStatus$Builder;
    .registers 2

    .line 94
    iput-boolean p1, p0, Landroid/hardware/biometrics/IdentityCheckStatus$Builder;->mIsIdentityCheckActive:Z

    .line 95
    return-object p0
.end method

.method public blacklist setIdentityCheckValueForTestAvailable(Z)Landroid/hardware/biometrics/IdentityCheckStatus$Builder;
    .registers 2

    .line 107
    iput-boolean p1, p0, Landroid/hardware/biometrics/IdentityCheckStatus$Builder;->mIsIdentityCheckValueForTestAvailable:Z

    .line 108
    return-object p0
.end method
