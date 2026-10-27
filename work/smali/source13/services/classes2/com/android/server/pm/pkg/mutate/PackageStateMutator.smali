.class public Lcom/android/server/pm/pkg/mutate/PackageStateMutator;
.super Ljava/lang/Object;
.source "PackageStateMutator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;,
        Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;,
        Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;
    }
.end annotation


# static fields
.field private static final sStateChangeSequence:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final mActiveStateFunction:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisabledStateFunction:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mStateWrite:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->sStateChangeSequence:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;Ljava/util/function/Function;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    .line 44
    .local p1, "activeStateFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .local p2, "disabledStateFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;-><init>(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper-IA;)V

    iput-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->mStateWrite:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;

    .line 45
    iput-object p1, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->mActiveStateFunction:Ljava/util/function/Function;

    .line 46
    iput-object p2, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->mDisabledStateFunction:Ljava/util/function/Function;

    .line 47
    return-void
.end method

.method public static onPackageStateChanged()V
    .registers 1

    .line 50
    sget-object v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->sStateChangeSequence:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 51
    return-void
.end method


# virtual methods
.method public forDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->mStateWrite:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;

    iget-object v1, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->mDisabledStateFunction:Ljava/util/function/Function;

    invoke-interface {v1, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->setState(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;

    move-result-object v0

    return-object v0
.end method

.method public forDisabledSystemPackageNullable(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->mDisabledStateFunction:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 77
    .local v0, "packageState":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_c

    .line 78
    const/4 v1, 0x0

    return-object v1

    .line 81
    :cond_c
    iget-object v1, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->mStateWrite:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->setState(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;

    move-result-object v1

    return-object v1
.end method

.method public forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->mStateWrite:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;

    iget-object v1, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->mActiveStateFunction:Ljava/util/function/Function;

    invoke-interface {v1, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->setState(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;

    move-result-object v0

    return-object v0
.end method

.method public forPackageNullable(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->mActiveStateFunction:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 61
    .local v0, "packageState":Lcom/android/server/pm/PackageSetting;
    iget-object v1, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->mStateWrite:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->setState(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;

    .line 62
    if-nez v0, :cond_11

    .line 63
    const/4 v1, 0x0

    return-object v1

    .line 66
    :cond_11
    iget-object v1, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->mStateWrite:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->setState(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;

    move-result-object v1

    return-object v1
.end method

.method public generateResult(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;I)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;
    .registers 10
    .param p1, "state"    # Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;
    .param p2, "changedPackagesSequenceNumber"    # I

    .line 95
    if-nez p1, :cond_5

    .line 96
    sget-object v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->SUCCESS:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    return-object v0

    .line 99
    :cond_5
    invoke-static {p1}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;->-$$Nest$fgetmPackageSequence(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v0, :cond_f

    move v0, v1

    goto :goto_10

    :cond_f
    move v0, v2

    .line 100
    .local v0, "packagesChanged":Z
    :goto_10
    sget-object v3, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->sStateChangeSequence:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    invoke-static {p1}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;->-$$Nest$fgetmStateSequence(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1f

    goto :goto_20

    :cond_1f
    move v1, v2

    .line 101
    .local v1, "stateChanged":Z
    :goto_20
    if-eqz v0, :cond_27

    if-eqz v1, :cond_27

    .line 102
    sget-object v2, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->PACKAGES_AND_STATE_CHANGED:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    return-object v2

    .line 103
    :cond_27
    if-eqz v0, :cond_2c

    .line 104
    sget-object v2, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->PACKAGES_CHANGED:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    return-object v2

    .line 105
    :cond_2c
    if-eqz v1, :cond_31

    .line 106
    sget-object v2, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->STATE_CHANGED:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    return-object v2

    .line 108
    :cond_31
    sget-object v2, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->SUCCESS:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    return-object v2
.end method

.method public initialState(I)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;
    .registers 5
    .param p1, "changedPackagesSequenceNumber"    # I

    .line 86
    new-instance v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;

    sget-object v1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->sStateChangeSequence:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;-><init>(IJ)V

    return-object v0
.end method
