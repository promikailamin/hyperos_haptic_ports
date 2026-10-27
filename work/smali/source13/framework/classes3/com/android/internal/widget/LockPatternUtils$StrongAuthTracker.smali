.class public Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StrongAuthTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;,
        Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$StrongAuthFlags;
    }
.end annotation


# static fields
.field private static final blacklist ALLOWING_BIOMETRIC:I = 0x4

.field public static final blacklist SOME_AUTH_REQUIRED_AFTER_USER_REQUEST:I = 0x4

.field public static final blacklist STRONG_AUTH_NOT_REQUIRED:I = 0x0

.field public static final blacklist STRONG_AUTH_REQUIRED_AFTER_BOOT:I = 0x1

.field public static final blacklist STRONG_AUTH_REQUIRED_AFTER_DPM_LOCK_NOW:I = 0x2

.field public static final blacklist STRONG_AUTH_REQUIRED_AFTER_LOCKOUT:I = 0x8

.field public static final blacklist STRONG_AUTH_REQUIRED_AFTER_NON_STRONG_BIOMETRICS_TIMEOUT:I = 0x80

.field public static final blacklist STRONG_AUTH_REQUIRED_AFTER_TIMEOUT:I = 0x10

.field public static final blacklist STRONG_AUTH_REQUIRED_AFTER_USER_LOCKDOWN:I = 0x20

.field public static final blacklist STRONG_AUTH_REQUIRED_FOR_UNATTENDED_UPDATE:I = 0x40


# instance fields
.field private final blacklist mDefaultIsNonStrongBiometricAllowed:Z

.field private final blacklist mDefaultStrongAuthFlags:I

.field private final blacklist mHandler:Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;

.field private final blacklist mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

.field private final blacklist mStrongAuthRequiredForUser:Landroid/util/SparseIntArray;

.field private final blacklist mStub:Landroid/app/trust/IStrongAuthTracker$Stub;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mHandler:Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1586
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 1587
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1577
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mStrongAuthRequiredForUser:Landroid/util/SparseIntArray;

    .line 1581
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    .line 1583
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mDefaultIsNonStrongBiometricAllowed:Z

    .line 1683
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$1;-><init>(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mStub:Landroid/app/trust/IStrongAuthTracker$Stub;

    .line 1595
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;-><init>(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mHandler:Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;

    .line 1596
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getDefaultFlags(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mDefaultStrongAuthFlags:I

    .line 1597
    return-void
.end method

.method public static blacklist getDefaultFlags(Landroid/content/Context;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 1600
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1602
    .local v0, "strongAuthRequired":Z
    return v0
.end method


# virtual methods
.method public blacklist getStrongAuthForUser(I)I
    .registers 4
    .param p1, "userId"    # I

    .line 1613
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mStrongAuthRequiredForUser:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mDefaultStrongAuthFlags:I

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public blacklist getStub()Landroid/app/trust/IStrongAuthTracker$Stub;
    .registers 2

    .line 1699
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mStub:Landroid/app/trust/IStrongAuthTracker$Stub;

    return-object v0
.end method

.method protected blacklist handleIsNonStrongBiometricAllowedChanged(ZI)V
    .registers 5
    .param p1, "allowed"    # Z
    .param p2, "userId"    # I

    .line 1672
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isNonStrongBiometricAllowedAfterIdleTimeout(I)Z

    move-result v0

    .line 1673
    .local v0, "oldValue":Z
    if-eq p1, v0, :cond_17

    .line 1674
    const/4 v1, 0x1

    if-ne p1, v1, :cond_f

    .line 1675
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto :goto_14

    .line 1677
    :cond_f
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1679
    :goto_14
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->onIsNonStrongBiometricAllowedChanged(I)V

    .line 1681
    :cond_17
    return-void
.end method

.method protected blacklist handleStrongAuthRequiredChanged(II)V
    .registers 5
    .param p1, "strongAuthFlags"    # I
    .param p2, "userId"    # I

    .line 1659
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v0

    .line 1660
    .local v0, "oldValue":I
    if-eq p1, v0, :cond_18

    .line 1661
    iget v1, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mDefaultStrongAuthFlags:I

    if-ne p1, v1, :cond_10

    .line 1662
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mStrongAuthRequiredForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_15

    .line 1664
    :cond_10
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mStrongAuthRequiredForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1666
    :goto_15
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->onStrongAuthRequiredChanged(I)V

    .line 1668
    :cond_18
    return-void
.end method

.method public blacklist isBiometricAllowedForUser(ZI)Z
    .registers 5
    .param p1, "isStrongBiometric"    # Z
    .param p2, "userId"    # I

    .line 1629
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v0

    and-int/lit8 v0, v0, -0x5

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 1630
    .local v0, "allowed":Z
    :goto_b
    if-nez p1, :cond_12

    .line 1631
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isNonStrongBiometricAllowedAfterIdleTimeout(I)Z

    move-result v1

    and-int/2addr v0, v1

    .line 1633
    :cond_12
    return v0
.end method

.method public blacklist isNonStrongBiometricAllowedAfterIdleTimeout(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 1641
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    return v0
.end method

.method public blacklist isTrustAllowedForUser(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1621
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist onIsNonStrongBiometricAllowedChanged(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 1655
    return-void
.end method

.method public blacklist onStrongAuthRequiredChanged(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 1649
    return-void
.end method
