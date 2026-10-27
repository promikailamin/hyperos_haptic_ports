.class public final Landroid/hardware/biometrics/BiometricEnrollmentStatus;
.super Ljava/lang/Object;
.source "BiometricEnrollmentStatus.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mEnrollmentCount:I

.field private final blacklist mStrength:I


# direct methods
.method public constructor whitelist <init>(II)V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Landroid/hardware/biometrics/BiometricEnrollmentStatus;->mStrength:I

    .line 47
    iput p2, p0, Landroid/hardware/biometrics/BiometricEnrollmentStatus;->mEnrollmentCount:I

    .line 48
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 77
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 78
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_23

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_23

    .line 79
    :cond_12
    check-cast p1, Landroid/hardware/biometrics/BiometricEnrollmentStatus;

    .line 80
    iget v2, p0, Landroid/hardware/biometrics/BiometricEnrollmentStatus;->mStrength:I

    iget v3, p1, Landroid/hardware/biometrics/BiometricEnrollmentStatus;->mStrength:I

    if-ne v2, v3, :cond_21

    iget v2, p0, Landroid/hardware/biometrics/BiometricEnrollmentStatus;->mEnrollmentCount:I

    iget p1, p1, Landroid/hardware/biometrics/BiometricEnrollmentStatus;->mEnrollmentCount:I

    if-ne v2, p1, :cond_21

    goto :goto_22

    :cond_21
    move v0, v1

    :goto_22
    return v0

    .line 78
    :cond_23
    :goto_23
    return v1
.end method

.method public whitelist getEnrollmentCount()I
    .registers 2

    .line 67
    iget v0, p0, Landroid/hardware/biometrics/BiometricEnrollmentStatus;->mEnrollmentCount:I

    return v0
.end method

.method public whitelist getStrength()I
    .registers 2

    .line 57
    iget v0, p0, Landroid/hardware/biometrics/BiometricEnrollmentStatus;->mStrength:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 72
    iget v0, p0, Landroid/hardware/biometrics/BiometricEnrollmentStatus;->mStrength:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/hardware/biometrics/BiometricEnrollmentStatus;->mEnrollmentCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
