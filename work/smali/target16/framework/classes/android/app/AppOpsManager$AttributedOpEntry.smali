.class public final Landroid/app/AppOpsManager$AttributedOpEntry;
.super Ljava/lang/Object;
.source "AppOpsManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AttributedOpEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppOpsManager$AttributedOpEntry$LongSparseArrayParceling;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sParcellingForAccessEvents:Lcom/android/internal/util/Parcelling;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Parcelling<",
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field static blacklist sParcellingForRejectEvents:Lcom/android/internal/util/Parcelling;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Parcelling<",
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAccessEvents:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOp:I

.field private final blacklist mRejectEvents:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRunning:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmOp(Landroid/app/AppOpsManager$AttributedOpEntry;)I
    .registers 1

    iget p0, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mOp:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetLastAccessEvent(Landroid/app/AppOpsManager$AttributedOpEntry;III)Landroid/app/AppOpsManager$NoteOpEvent;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessEvent(III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetLastRejectEvent(Landroid/app/AppOpsManager$AttributedOpEntry;III)Landroid/app/AppOpsManager$NoteOpEvent;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastRejectEvent(III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 4741
    const-class v0, Landroid/app/AppOpsManager$AttributedOpEntry$LongSparseArrayParceling;

    .line 4742
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->get(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/app/AppOpsManager$AttributedOpEntry;->sParcellingForAccessEvents:Lcom/android/internal/util/Parcelling;

    .line 4745
    sget-object v0, Landroid/app/AppOpsManager$AttributedOpEntry;->sParcellingForAccessEvents:Lcom/android/internal/util/Parcelling;

    const/4 v1, 0x0

    if-nez v0, :cond_18

    .line 4746
    new-instance v0, Landroid/app/AppOpsManager$AttributedOpEntry$LongSparseArrayParceling;

    invoke-direct {v0, v1}, Landroid/app/AppOpsManager$AttributedOpEntry$LongSparseArrayParceling;-><init>(Landroid/app/AppOpsManager-IA;)V

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->put(Lcom/android/internal/util/Parcelling;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/app/AppOpsManager$AttributedOpEntry;->sParcellingForAccessEvents:Lcom/android/internal/util/Parcelling;

    .line 4752
    :cond_18
    const-class v0, Landroid/app/AppOpsManager$AttributedOpEntry$LongSparseArrayParceling;

    .line 4753
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->get(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/app/AppOpsManager$AttributedOpEntry;->sParcellingForRejectEvents:Lcom/android/internal/util/Parcelling;

    .line 4756
    sget-object v0, Landroid/app/AppOpsManager$AttributedOpEntry;->sParcellingForRejectEvents:Lcom/android/internal/util/Parcelling;

    if-nez v0, :cond_2f

    .line 4757
    new-instance v0, Landroid/app/AppOpsManager$AttributedOpEntry$LongSparseArrayParceling;

    invoke-direct {v0, v1}, Landroid/app/AppOpsManager$AttributedOpEntry$LongSparseArrayParceling;-><init>(Landroid/app/AppOpsManager-IA;)V

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->put(Lcom/android/internal/util/Parcelling;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/app/AppOpsManager$AttributedOpEntry;->sParcellingForRejectEvents:Lcom/android/internal/util/Parcelling;

    .line 4808
    :cond_2f
    new-instance v0, Landroid/app/AppOpsManager$AttributedOpEntry$1;

    invoke-direct {v0}, Landroid/app/AppOpsManager$AttributedOpEntry$1;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager$AttributedOpEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IZLandroid/util/LongSparseArray;Landroid/util/LongSparseArray;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;",
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;)V"
        }
    .end annotation

    .line 4719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4720
    iput p1, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mOp:I

    .line 4721
    const-class v0, Landroid/annotation/IntRange;

    iget v2, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mOp:I

    const-string/jumbo v6, "to"

    const-wide/16 v7, 0xa9

    const/4 v1, 0x0

    const-string v3, "from"

    const-wide/16 v4, 0x0

    invoke-static/range {v0 .. v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    .line 4725
    iput-boolean p2, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mRunning:Z

    .line 4726
    iput-object p3, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mAccessEvents:Landroid/util/LongSparseArray;

    .line 4727
    iput-object p4, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mRejectEvents:Landroid/util/LongSparseArray;

    .line 4730
    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/AppOpsManager$AttributedOpEntry;)V
    .registers 4

    .line 4270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4271
    iget v0, p1, Landroid/app/AppOpsManager$AttributedOpEntry;->mOp:I

    iput v0, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mOp:I

    .line 4272
    iget-boolean v0, p1, Landroid/app/AppOpsManager$AttributedOpEntry;->mRunning:Z

    iput-boolean v0, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mRunning:Z

    .line 4273
    iget-object v0, p1, Landroid/app/AppOpsManager$AttributedOpEntry;->mAccessEvents:Landroid/util/LongSparseArray;

    const/4 v1, 0x0

    if-nez v0, :cond_12

    move-object v0, v1

    goto :goto_18

    :cond_12
    iget-object v0, p1, Landroid/app/AppOpsManager$AttributedOpEntry;->mAccessEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clone()Landroid/util/LongSparseArray;

    move-result-object v0

    :goto_18
    iput-object v0, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mAccessEvents:Landroid/util/LongSparseArray;

    .line 4274
    iget-object v0, p1, Landroid/app/AppOpsManager$AttributedOpEntry;->mRejectEvents:Landroid/util/LongSparseArray;

    if-nez v0, :cond_1f

    goto :goto_25

    :cond_1f
    iget-object p1, p1, Landroid/app/AppOpsManager$AttributedOpEntry;->mRejectEvents:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Landroid/util/LongSparseArray;->clone()Landroid/util/LongSparseArray;

    move-result-object v1

    :goto_25
    iput-object v1, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mRejectEvents:Landroid/util/LongSparseArray;

    .line 4275
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/AppOpsManager$AttributedOpEntry;Landroid/app/AppOpsManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$AttributedOpEntry;-><init>(Landroid/app/AppOpsManager$AttributedOpEntry;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 14

    .line 4785
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4789
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 4790
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 4791
    :goto_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4792
    sget-object v2, Landroid/app/AppOpsManager$AttributedOpEntry;->sParcellingForAccessEvents:Lcom/android/internal/util/Parcelling;

    invoke-interface {v2, p1}, Lcom/android/internal/util/Parcelling;->unparcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongSparseArray;

    .line 4793
    sget-object v3, Landroid/app/AppOpsManager$AttributedOpEntry;->sParcellingForRejectEvents:Lcom/android/internal/util/Parcelling;

    invoke-interface {v3, p1}, Lcom/android/internal/util/Parcelling;->unparcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/LongSparseArray;

    .line 4795
    iput v1, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mOp:I

    .line 4796
    const-class v3, Landroid/annotation/IntRange;

    iget v5, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mOp:I

    const-string/jumbo v9, "to"

    const-wide/16 v10, 0xa9

    const/4 v4, 0x0

    const-string v6, "from"

    const-wide/16 v7, 0x0

    invoke-static/range {v3 .. v11}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    .line 4800
    iput-boolean v0, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mRunning:Z

    .line 4801
    iput-object v2, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mAccessEvents:Landroid/util/LongSparseArray;

    .line 4802
    iput-object p1, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mRejectEvents:Landroid/util/LongSparseArray;

    .line 4805
    return-void
.end method

.method private blacklist getLastAccessEvent(III)Landroid/app/AppOpsManager$NoteOpEvent;
    .registers 5

    .line 4364
    iget-object v0, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mAccessEvents:Landroid/util/LongSparseArray;

    invoke-static {v0, p1, p2, p3}, Landroid/app/AppOpsManager;->-$$Nest$smgetLastEvent(Landroid/util/LongSparseArray;III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object p1

    return-object p1
.end method

.method private blacklist getLastRejectEvent(III)Landroid/app/AppOpsManager$NoteOpEvent;
    .registers 5

    .line 4459
    iget-object v0, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mRejectEvents:Landroid/util/LongSparseArray;

    invoke-static {v0, p1, p2, p3}, Landroid/app/AppOpsManager;->-$$Nest$smgetLastEvent(Landroid/util/LongSparseArray;III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public blacklist collectKeys()Landroid/util/ArraySet;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 4283
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 4285
    iget-object v1, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mAccessEvents:Landroid/util/LongSparseArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    .line 4286
    iget-object v1, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mAccessEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    .line 4287
    move v3, v2

    :goto_11
    if-ge v3, v1, :cond_23

    .line 4288
    iget-object v4, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mAccessEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v3}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4287
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 4292
    :cond_23
    iget-object v1, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mRejectEvents:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_40

    .line 4293
    iget-object v1, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mRejectEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    .line 4294
    nop

    :goto_2e
    if-ge v2, v1, :cond_40

    .line 4295
    iget-object v3, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mRejectEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4294
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 4299
    :cond_40
    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 4780
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getLastAccessBackgroundTime(I)J
    .registers 4

    .line 4351
    iget v0, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->resolveLastRestrictedUidState(I)I

    move-result v0

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastAccessForegroundTime(I)J
    .registers 4

    .line 4333
    iget v0, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v0

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0, p1}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastAccessTime(I)J
    .registers 4

    .line 4316
    const/16 v0, 0x64

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastAccessTime(III)J
    .registers 4

    .line 4384
    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessEvent(III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object p1

    .line 4385
    if-nez p1, :cond_9

    .line 4386
    const-wide/16 p1, -0x1

    return-wide p1

    .line 4389
    :cond_9
    invoke-virtual {p1}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide p1

    return-wide p1
.end method

.method public whitelist getLastBackgroundDuration(I)J
    .registers 4

    .line 4534
    iget v0, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->resolveLastRestrictedUidState(I)I

    move-result v0

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastDuration(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastBackgroundProxyInfo(I)Landroid/app/AppOpsManager$OpEventProxyInfo;
    .registers 4

    .line 4612
    iget v0, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->resolveLastRestrictedUidState(I)I

    move-result v0

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getLastDuration(I)J
    .registers 4

    .line 4501
    const/16 v0, 0x64

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastDuration(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastDuration(III)J
    .registers 4

    .line 4555
    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessEvent(III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object p1

    .line 4556
    if-nez p1, :cond_9

    .line 4557
    const-wide/16 p1, -0x1

    return-wide p1

    .line 4560
    :cond_9
    invoke-virtual {p1}, Landroid/app/AppOpsManager$NoteOpEvent;->getDuration()J

    move-result-wide p1

    return-wide p1
.end method

.method public whitelist getLastForegroundDuration(I)J
    .registers 4

    .line 4517
    iget v0, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v0

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0, p1}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastDuration(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastForegroundProxyInfo(I)Landroid/app/AppOpsManager$OpEventProxyInfo;
    .registers 4

    .line 4594
    iget v0, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v0

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0, p1}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getLastProxyInfo(I)Landroid/app/AppOpsManager$OpEventProxyInfo;
    .registers 4

    .line 4577
    const/16 v0, 0x64

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;
    .registers 4

    .line 4633
    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessEvent(III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object p1

    .line 4634
    if-nez p1, :cond_8

    .line 4635
    const/4 p1, 0x0

    return-object p1

    .line 4638
    :cond_8
    invoke-virtual {p1}, Landroid/app/AppOpsManager$NoteOpEvent;->getProxy()Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getLastRejectBackgroundTime(I)J
    .registers 4

    .line 4441
    iget v0, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->resolveLastRestrictedUidState(I)I

    move-result v0

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastRejectTime(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastRejectForegroundTime(I)J
    .registers 4

    .line 4423
    iget v0, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v0

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0, p1}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastRejectTime(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastRejectTime(I)J
    .registers 4

    .line 4406
    const/16 v0, 0x64

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastRejectTime(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastRejectTime(III)J
    .registers 4

    .line 4480
    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastRejectEvent(III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object p1

    .line 4481
    if-nez p1, :cond_9

    .line 4482
    const-wide/16 p1, -0x1

    return-wide p1

    .line 4485
    :cond_9
    invoke-virtual {p1}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide p1

    return-wide p1
.end method

.method blacklist getOp()I
    .registers 2

    .line 4647
    iget v0, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mOp:I

    return v0
.end method

.method blacklist getOpName()Ljava/lang/String;
    .registers 2

    .line 4643
    iget v0, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist isRunning()Z
    .registers 2

    .line 4737
    iget-boolean v0, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mRunning:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 4768
    nop

    .line 4769
    iget-boolean v0, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mRunning:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    int-to-byte v0, v0

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 4770
    :goto_9
    iget-object v1, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mAccessEvents:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_10

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    .line 4771
    :cond_10
    iget-object v1, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mRejectEvents:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_17

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    .line 4772
    :cond_17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 4773
    iget v0, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mOp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4774
    sget-object v0, Landroid/app/AppOpsManager$AttributedOpEntry;->sParcellingForAccessEvents:Lcom/android/internal/util/Parcelling;

    iget-object v1, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mAccessEvents:Landroid/util/LongSparseArray;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling;->parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V

    .line 4775
    sget-object v0, Landroid/app/AppOpsManager$AttributedOpEntry;->sParcellingForRejectEvents:Lcom/android/internal/util/Parcelling;

    iget-object v1, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mRejectEvents:Landroid/util/LongSparseArray;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling;->parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V

    .line 4776
    return-void
.end method
