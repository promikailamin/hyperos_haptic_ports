.class public Landroid/apex/ApexSessionParams;
.super Ljava/lang/Object;
.source "ApexSessionParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/apex/ApexSessionParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist childSessionIds:[I

.field public blacklist hasRollbackEnabled:Z

.field public blacklist isRollback:Z

.field public blacklist rollbackId:I

.field public blacklist sessionId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Landroid/apex/ApexSessionParams$1;

    invoke-direct {v0}, Landroid/apex/ApexSessionParams$1;-><init>()V

    sput-object v0, Landroid/apex/ApexSessionParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Landroid/apex/ApexSessionParams;->sessionId:I

    .line 13
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/apex/ApexSessionParams;->childSessionIds:[I

    .line 14
    iput-boolean v0, p0, Landroid/apex/ApexSessionParams;->hasRollbackEnabled:Z

    .line 15
    iput-boolean v0, p0, Landroid/apex/ApexSessionParams;->isRollback:Z

    .line 16
    iput v0, p0, Landroid/apex/ApexSessionParams;->rollbackId:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 68
    nop

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 48
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_b3

    .line 49
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_b1

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 60
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 63
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 49
    return-void

    .line 61
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/apex/ApexSessionParams;->sessionId:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_b1

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 60
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 63
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 51
    return-void

    .line 61
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Landroid/apex/ApexSessionParams;->childSessionIds:[I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_b1

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 60
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 63
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 53
    return-void

    .line 61
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_65

    move v2, v5

    goto :goto_66

    :cond_65
    move v2, v6

    :goto_66
    iput-boolean v2, p0, Landroid/apex/ApexSessionParams;->hasRollbackEnabled:Z

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6c
    .catchall {:try_start_5b .. :try_end_6c} :catchall_b1

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7d

    .line 60
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_77

    .line 63
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 55
    return-void

    .line 61
    :cond_77
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_7d
    :try_start_7d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_84

    goto :goto_85

    :cond_84
    move v5, v6

    :goto_85
    iput-boolean v5, p0, Landroid/apex/ApexSessionParams;->isRollback:Z

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_8b
    .catchall {:try_start_7d .. :try_end_8b} :catchall_b1

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9c

    .line 60
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_96

    .line 63
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 57
    return-void

    .line 61
    :cond_96
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_9c
    :try_start_9c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/apex/ApexSessionParams;->rollbackId:I
    :try_end_a2
    .catchall {:try_start_9c .. :try_end_a2} :catchall_b1

    .line 60
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ab

    .line 63
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    nop

    .line 65
    return-void

    .line 61
    :cond_ab
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :catchall_b1
    move-exception v2

    goto :goto_bb

    .line 48
    :cond_b3
    :try_start_b3
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_bb
    .catchall {:try_start_b3 .. :try_end_bb} :catchall_b1

    .line 60
    :goto_bb
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_c4

    .line 61
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_c4
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    iget v0, p0, Landroid/apex/ApexSessionParams;->sessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget-object v0, p0, Landroid/apex/ApexSessionParams;->childSessionIds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 35
    iget-boolean v0, p0, Landroid/apex/ApexSessionParams;->hasRollbackEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget-boolean v0, p0, Landroid/apex/ApexSessionParams;->isRollback:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget v0, p0, Landroid/apex/ApexSessionParams;->rollbackId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 39
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 40
    sub-int p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 42
    return-void
.end method
