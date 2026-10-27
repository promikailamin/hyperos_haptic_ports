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
.field private static final blacklist ALLOWING_BIOMETRIC:I = 0x1704

.field public static final blacklist PRIMARY_AUTH_REQUIRED_FOR_SECURE_LOCK_DEVICE:I = 0x800

.field public static final blacklist SOME_AUTH_REQUIRED_AFTER_ADAPTIVE_AUTH_REQUEST:I = 0x200

.field public static final blacklist SOME_AUTH_REQUIRED_AFTER_TRUSTAGENT_EXPIRED:I = 0x100

.field public static final blacklist SOME_AUTH_REQUIRED_AFTER_USER_REQUEST:I = 0x4

.field public static final blacklist SOME_AUTH_REQUIRED_AFTER_WATCH_DISCONNECTED:I = 0x400

.field public static final blacklist STRONG_AUTH_NOT_REQUIRED:I = 0x0

.field public static final blacklist STRONG_AUTH_REQUIRED_AFTER_BOOT:I = 0x1

.field public static final blacklist STRONG_AUTH_REQUIRED_AFTER_DPM_LOCK_NOW:I = 0x2

.field public static final blacklist STRONG_AUTH_REQUIRED_AFTER_LOCKOUT:I = 0x8

.field public static final blacklist STRONG_AUTH_REQUIRED_AFTER_NON_STRONG_BIOMETRICS_TIMEOUT:I = 0x80

.field public static final blacklist STRONG_AUTH_REQUIRED_AFTER_TIMEOUT:I = 0x10

.field public static final blacklist STRONG_AUTH_REQUIRED_AFTER_USER_LOCKDOWN:I = 0x20

.field public static final blacklist STRONG_AUTH_REQUIRED_FOR_UNATTENDED_UPDATE:I = 0x40

.field public static final blacklist STRONG_BIOMETRIC_AUTH_REQUIRED_FOR_SECURE_LOCK_DEVICE:I = 0x1000


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

    .line 1755
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 1756
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 4

    .line 1763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1746
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mStrongAuthRequiredForUser:Landroid/util/SparseIntArray;

    .line 1750
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    .line 1752
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mDefaultIsNonStrongBiometricAllowed:Z

    .line 1852
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$1;-><init>(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mStub:Landroid/app/trust/IStrongAuthTracker$Stub;

    .line 1764
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;-><init>(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mHandler:Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;

    .line 1765
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getDefaultFlags(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mDefaultStrongAuthFlags:I

    .line 1766
    return-void
.end method

.method public static blacklist getDefaultFlags(Landroid/content/Context;)I
    .registers 2

    .line 1769
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x111027f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    .line 1771
    return p0
.end method


# virtual methods
.method public blacklist getStrongAuthForUser(I)I
    .registers 4

    .line 1782
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mStrongAuthRequiredForUser:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mDefaultStrongAuthFlags:I

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    return p1
.end method

.method public blacklist getStub()Landroid/app/trust/IStrongAuthTracker$Stub;
    .registers 2

    .line 1868
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mStub:Landroid/app/trust/IStrongAuthTracker$Stub;

    return-object v0
.end method

.method protected blacklist handleIsNonStrongBiometricAllowedChanged(ZI)V
    .registers 4

    .line 1841
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isNonStrongBiometricAllowedAfterIdleTimeout(I)Z

    move-result v0

    .line 1842
    if-eq p1, v0, :cond_17

    .line 1843
    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    .line 1844
    iget-object p1, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto :goto_14

    .line 1846
    :cond_f
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1848
    :goto_14
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->onIsNonStrongBiometricAllowedChanged(I)V

    .line 1850
    :cond_17
    return-void
.end method

.method protected blacklist handleStrongAuthRequiredChanged(II)V
    .registers 4

    .line 1828
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v0

    .line 1829
    if-eq p1, v0, :cond_18

    .line 1830
    iget v0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mDefaultStrongAuthFlags:I

    if-ne p1, v0, :cond_10

    .line 1831
    iget-object p1, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mStrongAuthRequiredForUser:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_15

    .line 1833
    :cond_10
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mStrongAuthRequiredForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1835
    :goto_15
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->onStrongAuthRequiredChanged(I)V

    .line 1837
    :cond_18
    return-void
.end method

.method public blacklist isBiometricAllowedForUser(ZI)Z
    .registers 4

    .line 1798
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v0

    and-int/lit16 v0, v0, -0x1705

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 1799
    :goto_b
    if-nez p1, :cond_12

    .line 1800
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isNonStrongBiometricAllowedAfterIdleTimeout(I)Z

    move-result p1

    and-int/2addr v0, p1

    .line 1802
    :cond_12
    return v0
.end method

.method public blacklist isNonStrongBiometricAllowedAfterIdleTimeout(I)Z
    .registers 4

    .line 1810
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p1

    return p1
.end method

.method public blacklist isTrustAllowedForUser(I)Z
    .registers 2

    .line 1790
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result p1

    if-nez p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public blacklist onIsNonStrongBiometricAllowedChanged(I)V
    .registers 2

    .line 1824
    return-void
.end method

.method public blacklist onStrongAuthRequiredChanged(I)V
    .registers 2

    .line 1818
    return-void
.end method
