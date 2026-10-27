.class public Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
.super Ljava/lang/Object;
.source "BackgroundActivityStartController.java"


# static fields
.field public static final ALLOW_BY_DEFAULT:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

.field public static final ALLOW_PRIVILEGED:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

.field public static final BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;


# instance fields
.field public mAdditionalBalCodes:Landroid/util/SparseBooleanArray;

.field public mAllowlisteUid:Z

.field public mAllowsNewTask:Z

.field public mBasedOnRealCaller:Z

.field public final mCode:I

.field public final mImmutable:Z

.field public mInGracePeriod:Z

.field public final mMessage:Ljava/lang/String;

.field public mOnlyCreatorAllows:Z

.field public mProcessInfo:Ljava/lang/String;

.field public mVisibleOrForeground:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAdditionalBalCodes(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;)Landroid/util/SparseBooleanArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mAdditionalBalCodes:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCode(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mCode:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMessage(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mMessage:Ljava/lang/String;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 653
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/16 v1, 0x7f

    const-string v2, "Blocked"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 654
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const-string v1, "Default"

    invoke-direct {v0, v3, v1, v3}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->ALLOW_BY_DEFAULT:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 657
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 v1, 0x2

    const-string v2, "PRIVILEGED"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->ALLOW_PRIVILEGED:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 683
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .registers 5

    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 675
    iput p1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mCode:I

    .line 676
    iput-object p2, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mMessage:Ljava/lang/String;

    .line 677
    iput-boolean p3, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mImmutable:Z

    const/4 p2, 0x2

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-ne p1, p2, :cond_10

    move p2, v0

    goto :goto_11

    :cond_10
    move p2, p3

    .line 678
    :goto_11
    iput-boolean p2, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mAllowlisteUid:Z

    const/16 p2, 0x8

    if-ne p1, p2, :cond_18

    move p3, v0

    .line 679
    :cond_18
    iput-boolean p3, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mInGracePeriod:Z

    return-void
.end method


# virtual methods
.method public allowNewTask()Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 2

    .line 802
    iget-boolean v0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mImmutable:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    .line 805
    iput-boolean v0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mAllowsNewTask:Z

    return-object p0

    .line 803
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public allows()Z
    .registers 1

    .line 699
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->blocks()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public allowsNewTask()Z
    .registers 1

    .line 810
    iget-boolean p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mAllowsNewTask:Z

    return p0
.end method

.method public blocks()Z
    .registers 2

    .line 695
    iget p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mCode:I

    const/16 v0, 0x7f

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public getCode()I
    .registers 1

    .line 760
    iget p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mCode:I

    return p0
.end method

.method public isAllowlistedUid()Z
    .registers 1

    .line 770
    iget-boolean p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mAllowlisteUid:Z

    return p0
.end method

.method public isBasedOnCaller()Z
    .registers 1

    .line 788
    iget-boolean p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mBasedOnRealCaller:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isBasedOnRealCaller()Z
    .registers 1

    .line 784
    iget-boolean p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mBasedOnRealCaller:Z

    return p0
.end method

.method public isImmutable()Z
    .registers 1

    .line 703
    iget-boolean p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mImmutable:Z

    return p0
.end method

.method public isInGracePeriod()Z
    .registers 1

    .line 780
    iget-boolean p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mInGracePeriod:Z

    return p0
.end method

.method public isVisibleOrForeground()Z
    .registers 1

    .line 822
    iget-boolean p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mVisibleOrForeground:Z

    return p0
.end method

.method public onlyCreatorAllows()Z
    .registers 1

    .line 714
    iget-boolean p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mOnlyCreatorAllows:Z

    return p0
.end method

.method public setAllowlisteUid(Z)V
    .registers 3

    .line 764
    iget-boolean v0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mImmutable:Z

    if-eqz v0, :cond_5

    return-void

    .line 767
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mAllowlisteUid:Z

    return-void
.end method

.method public setBasedOnRealCaller()Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 3

    .line 719
    iget-boolean v0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mImmutable:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    .line 722
    iput-boolean v0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mBasedOnRealCaller:Z

    return-object p0

    .line 720
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is marked immutable"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInGracePeriod(Z)V
    .registers 3

    .line 774
    iget-boolean v0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mImmutable:Z

    if-eqz v0, :cond_5

    return-void

    .line 777
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mInGracePeriod:Z

    return-void
.end method

.method public setOnlyCreatorAllows(Z)V
    .registers 3

    .line 707
    iget-boolean v0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mImmutable:Z

    if-nez v0, :cond_7

    .line 710
    iput-boolean p1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mOnlyCreatorAllows:Z

    return-void

    .line 708
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is marked immutable"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setVisibleOrForeground()Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 2

    .line 814
    iget-boolean v0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mImmutable:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    .line 817
    iput-boolean v0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mVisibleOrForeground:Z

    return-object p0

    .line 815
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 728
    iget v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mCode:I

    invoke-static {v1}, Lcom/android/server/wm/BackgroundActivityStartController;->balCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->isImmutable()Z

    move-result v1

    if-nez v1, :cond_27

    .line 730
    iget-boolean v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mOnlyCreatorAllows:Z

    if-eqz v1, :cond_1e

    .line 731
    const-string p0, " [onlyCaller]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27

    .line 732
    :cond_1e
    iget-boolean p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mBasedOnRealCaller:Z

    if-eqz p0, :cond_27

    .line 733
    const-string p0, " [realCaller]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    :cond_27
    :goto_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public withProcessInfo(Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 4

    .line 687
    iget-boolean v0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mImmutable:Z

    if-nez v0, :cond_2e

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (uid="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",pid="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mProcessInfo:Ljava/lang/String;

    return-object p0

    .line 688
    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is marked immutable"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
