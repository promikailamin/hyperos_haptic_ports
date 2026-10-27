.class public final Landroid/hardware/radio/ProgramList$Chunk;
.super Ljava/lang/Object;
.source "ProgramList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/ProgramList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Chunk"
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/ProgramList$Chunk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mComplete:Z

.field private final greylist-max-o mModified:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mPurge:Z

.field private final greylist-max-o mRemoved:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/hardware/radio/UniqueProgramIdentifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 551
    new-instance v0, Landroid/hardware/radio/ProgramList$Chunk$1;

    invoke-direct {v0}, Landroid/hardware/radio/ProgramList$Chunk$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/ProgramList$Chunk;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 532
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    :goto_e
    iput-boolean v0, p0, Landroid/hardware/radio/ProgramList$Chunk;->mPurge:Z

    .line 533
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_18

    :cond_17
    move v1, v2

    :goto_18
    iput-boolean v1, p0, Landroid/hardware/radio/ProgramList$Chunk;->mComplete:Z

    .line 534
    sget-object v0, Landroid/hardware/radio/RadioManager$ProgramInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Landroid/hardware/radio/Utils;->createSet(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/ProgramList$Chunk;->mModified:Ljava/util/Set;

    .line 535
    sget-object v0, Landroid/hardware/radio/UniqueProgramIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Landroid/hardware/radio/Utils;->createSet(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/radio/ProgramList$Chunk;->mRemoved:Ljava/util/Set;

    .line 536
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/radio/ProgramList-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/radio/ProgramList$Chunk;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(ZZLjava/util/Set;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/Set<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/hardware/radio/UniqueProgramIdentifier;",
            ">;)V"
        }
    .end annotation

    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 525
    iput-boolean p1, p0, Landroid/hardware/radio/ProgramList$Chunk;->mPurge:Z

    .line 526
    iput-boolean p2, p0, Landroid/hardware/radio/ProgramList$Chunk;->mComplete:Z

    .line 527
    if-eqz p3, :cond_a

    goto :goto_e

    :cond_a
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p3

    :goto_e
    iput-object p3, p0, Landroid/hardware/radio/ProgramList$Chunk;->mModified:Ljava/util/Set;

    .line 528
    if-eqz p4, :cond_13

    goto :goto_17

    :cond_13
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p4

    :goto_17
    iput-object p4, p0, Landroid/hardware/radio/ProgramList$Chunk;->mRemoved:Ljava/util/Set;

    .line 529
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 548
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 579
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 580
    :cond_4
    instance-of v1, p1, Landroid/hardware/radio/ProgramList$Chunk;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 581
    :cond_a
    check-cast p1, Landroid/hardware/radio/ProgramList$Chunk;

    .line 583
    iget-boolean v1, p0, Landroid/hardware/radio/ProgramList$Chunk;->mPurge:Z

    iget-boolean v3, p1, Landroid/hardware/radio/ProgramList$Chunk;->mPurge:Z

    if-eq v1, v3, :cond_13

    return v2

    .line 584
    :cond_13
    iget-boolean v1, p0, Landroid/hardware/radio/ProgramList$Chunk;->mComplete:Z

    iget-boolean v3, p1, Landroid/hardware/radio/ProgramList$Chunk;->mComplete:Z

    if-eq v1, v3, :cond_1a

    return v2

    .line 585
    :cond_1a
    iget-object v1, p0, Landroid/hardware/radio/ProgramList$Chunk;->mModified:Ljava/util/Set;

    iget-object v3, p1, Landroid/hardware/radio/ProgramList$Chunk;->mModified:Ljava/util/Set;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    return v2

    .line 586
    :cond_25
    iget-object v1, p0, Landroid/hardware/radio/ProgramList$Chunk;->mRemoved:Ljava/util/Set;

    iget-object p1, p1, Landroid/hardware/radio/ProgramList$Chunk;->mRemoved:Ljava/util/Set;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_30

    return v2

    .line 587
    :cond_30
    return v0
.end method

.method public greylist-max-o getModified()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation

    .line 570
    iget-object v0, p0, Landroid/hardware/radio/ProgramList$Chunk;->mModified:Ljava/util/Set;

    return-object v0
.end method

.method public greylist-max-o getRemoved()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/hardware/radio/UniqueProgramIdentifier;",
            ">;"
        }
    .end annotation

    .line 574
    iget-object v0, p0, Landroid/hardware/radio/ProgramList$Chunk;->mRemoved:Ljava/util/Set;

    return-object v0
.end method

.method public greylist-max-o isComplete()Z
    .registers 2

    .line 566
    iget-boolean v0, p0, Landroid/hardware/radio/ProgramList$Chunk;->mComplete:Z

    return v0
.end method

.method public greylist-max-o isPurge()Z
    .registers 2

    .line 562
    iget-boolean v0, p0, Landroid/hardware/radio/ProgramList$Chunk;->mPurge:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Chunk [mPurge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/ProgramList$Chunk;->mPurge:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mComplete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/ProgramList$Chunk;->mComplete:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mModified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/ProgramList$Chunk;->mModified:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRemoved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/ProgramList$Chunk;->mRemoved:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 540
    iget-boolean p2, p0, Landroid/hardware/radio/ProgramList$Chunk;->mPurge:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 541
    iget-boolean p2, p0, Landroid/hardware/radio/ProgramList$Chunk;->mComplete:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 542
    iget-object p2, p0, Landroid/hardware/radio/ProgramList$Chunk;->mModified:Ljava/util/Set;

    invoke-static {p1, p2}, Landroid/hardware/radio/Utils;->writeSet(Landroid/os/Parcel;Ljava/util/Set;)V

    .line 543
    iget-object p2, p0, Landroid/hardware/radio/ProgramList$Chunk;->mRemoved:Ljava/util/Set;

    invoke-static {p1, p2}, Landroid/hardware/radio/Utils;->writeSet(Landroid/os/Parcel;Ljava/util/Set;)V

    .line 544
    return-void
.end method
