.class public Landroid/hardware/biometrics/face/EnrollmentStageConfig;
.super Ljava/lang/Object;
.source "EnrollmentStageConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/biometrics/face/EnrollmentStageConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public cells:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/face/Cell;",
            ">;"
        }
    .end annotation
.end field

.field public stage:B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    new-instance v0, Landroid/hardware/biometrics/face/EnrollmentStageConfig$1;

    invoke-direct {v0}, Landroid/hardware/biometrics/face/EnrollmentStageConfig$1;-><init>()V

    sput-object v0, Landroid/hardware/biometrics/face/EnrollmentStageConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/biometrics/face/EnrollmentStageConfig;->stage:B

    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .registers 6
    .param p1, "_v"    # Ljava/lang/Object;

    .line 58
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 59
    :cond_4
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_21

    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, "_mask":I
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 62
    .local v2, "o":Ljava/lang/Object;
    invoke-direct {p0, v2}, Landroid/hardware/biometrics/face/EnrollmentStageConfig;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v0, v3

    .line 63
    .end local v2    # "o":Ljava/lang/Object;
    goto :goto_10

    .line 64
    :cond_20
    return v0

    .line 66
    .end local v0    # "_mask":I
    :cond_21
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_2d

    .line 67
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 69
    :cond_2d
    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 3

    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/hardware/biometrics/face/EnrollmentStageConfig;->cells:Ljava/util/List;

    invoke-direct {p0, v1}, Landroid/hardware/biometrics/face/EnrollmentStageConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 55
    return v0
.end method

.method public final getStability()I
    .registers 2

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 37
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 39
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_5c

    .line 40
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_5a

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 45
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 48
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 40
    return-void

    .line 46
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 41
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/biometrics/face/EnrollmentStageConfig;->stage:B

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_5a

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 45
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 48
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 42
    return-void

    .line 46
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 43
    :cond_42
    :try_start_42
    sget-object v2, Landroid/hardware/biometrics/face/Cell;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/biometrics/face/EnrollmentStageConfig;->cells:Ljava/util/List;
    :try_end_4a
    .catchall {:try_start_42 .. :try_end_4a} :catchall_5a

    .line 45
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_54

    .line 48
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 49
    nop

    .line 50
    return-void

    .line 46
    :cond_54
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 45
    :catchall_5a
    move-exception v2

    goto :goto_64

    .line 39
    :cond_5c
    :try_start_5c
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/biometrics/face/EnrollmentStageConfig;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_64
    .catchall {:try_start_5c .. :try_end_64} :catchall_5a

    .line 45
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/biometrics/face/EnrollmentStageConfig;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_64
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_6d

    .line 46
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 48
    :cond_6d
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 49
    throw v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 26
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    iget-byte v1, p0, Landroid/hardware/biometrics/face/EnrollmentStageConfig;->stage:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 28
    iget-object v1, p0, Landroid/hardware/biometrics/face/EnrollmentStageConfig;->cells:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 30
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 31
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 33
    return-void
.end method
