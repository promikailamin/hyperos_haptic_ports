.class public Landroid/net/netd/aidl/NativeUidRangeConfig;
.super Ljava/lang/Object;
.source "NativeUidRangeConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/netd/aidl/NativeUidRangeConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final netId:I

.field public final subPriority:I

.field public final uidRanges:[Landroid/net/UidRangeParcel;


# direct methods
.method static bridge synthetic -$$Nest$sminternalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/netd/aidl/NativeUidRangeConfig;
    .registers 1

    invoke-static {p0}, Landroid/net/netd/aidl/NativeUidRangeConfig;->internalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/netd/aidl/NativeUidRangeConfig;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Landroid/net/netd/aidl/NativeUidRangeConfig$1;

    invoke-direct {v0}, Landroid/net/netd/aidl/NativeUidRangeConfig$1;-><init>()V

    sput-object v0, Landroid/net/netd/aidl/NativeUidRangeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[Landroid/net/UidRangeParcel;I)V
    .registers 4
    .param p1, "netId"    # I
    .param p2, "uidRanges"    # [Landroid/net/UidRangeParcel;
    .param p3, "subPriority"    # I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->netId:I

    .line 57
    iput-object p2, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->uidRanges:[Landroid/net/UidRangeParcel;

    .line 58
    iput p3, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->subPriority:I

    .line 59
    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .registers 8
    .param p1, "_v"    # Ljava/lang/Object;

    .line 118
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 119
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 120
    const/4 v1, 0x0

    .line 121
    .local v1, "_mask":I
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    :goto_d
    if-ge v0, v3, :cond_19

    aget-object v4, v2, v0

    .line 122
    .local v4, "o":Ljava/lang/Object;
    invoke-direct {p0, v4}, Landroid/net/netd/aidl/NativeUidRangeConfig;->describeContents(Ljava/lang/Object;)I

    move-result v5

    or-int/2addr v1, v5

    .line 121
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 124
    :cond_19
    return v1

    .line 126
    .end local v1    # "_mask":I
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_26

    .line 127
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 129
    :cond_26
    return v0
.end method

.method private static internalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/netd/aidl/NativeUidRangeConfig;
    .registers 9
    .param p0, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 62
    new-instance v0, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;

    invoke-direct {v0}, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;-><init>()V

    .line 63
    .local v0, "_aidl_parcelable_builder":Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 64
    .local v1, "_aidl_start_pos":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 66
    .local v2, "_aidl_parcelable_size":I
    const/4 v3, 0x4

    const-string v4, "Overflow in the size of parcelable"

    const v5, 0x7fffffff

    if-lt v2, v3, :cond_95

    :try_start_15
    invoke-virtual {v0}, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->build()Landroid/net/netd/aidl/NativeUidRangeConfig;

    .line 67
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt v3, v2, :cond_35

    invoke-virtual {v0}, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->build()Landroid/net/netd/aidl/NativeUidRangeConfig;
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_93

    .line 80
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_2f

    .line 83
    :goto_25
    add-int v3, v1, v2

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 84
    invoke-virtual {v0}, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->build()Landroid/net/netd/aidl/NativeUidRangeConfig;

    move-result-object v3

    return-object v3

    .line 81
    :cond_2f
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 69
    :cond_35
    :try_start_35
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 70
    .local v3, "_aidl_temp_netId":I
    invoke-virtual {v0, v3}, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->setNetId(I)Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;

    .line 71
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    sub-int/2addr v6, v1

    if-lt v6, v2, :cond_59

    invoke-virtual {v0}, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->build()Landroid/net/netd/aidl/NativeUidRangeConfig;
    :try_end_46
    .catchall {:try_start_35 .. :try_end_46} :catchall_93

    .line 80
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_53

    .line 83
    add-int v4, v1, v2

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 84
    invoke-virtual {v0}, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->build()Landroid/net/netd/aidl/NativeUidRangeConfig;

    move-result-object v4

    return-object v4

    .line 81
    :cond_53
    new-instance v5, Landroid/os/BadParcelableException;

    invoke-direct {v5, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 73
    :cond_59
    :try_start_59
    sget-object v6, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/net/UidRangeParcel;

    .line 74
    .local v6, "_aidl_temp_uidRanges":[Landroid/net/UidRangeParcel;
    invoke-virtual {v0, v6}, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->setUidRanges([Landroid/net/UidRangeParcel;)Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;

    .line 75
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    sub-int/2addr v7, v1

    if-lt v7, v2, :cond_81

    invoke-virtual {v0}, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->build()Landroid/net/netd/aidl/NativeUidRangeConfig;
    :try_end_6e
    .catchall {:try_start_59 .. :try_end_6e} :catchall_93

    .line 80
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_7b

    .line 83
    add-int v4, v1, v2

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 84
    invoke-virtual {v0}, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->build()Landroid/net/netd/aidl/NativeUidRangeConfig;

    move-result-object v4

    return-object v4

    .line 81
    :cond_7b
    new-instance v5, Landroid/os/BadParcelableException;

    invoke-direct {v5, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 77
    :cond_81
    :try_start_81
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 78
    .local v7, "_aidl_temp_subPriority":I
    invoke-virtual {v0, v7}, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->setSubPriority(I)Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;
    :try_end_88
    .catchall {:try_start_81 .. :try_end_88} :catchall_93

    .line 80
    nop

    .end local v3    # "_aidl_temp_netId":I
    .end local v6    # "_aidl_temp_uidRanges":[Landroid/net/UidRangeParcel;
    .end local v7    # "_aidl_temp_subPriority":I
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_8d

    .line 83
    goto :goto_25

    .line 81
    :cond_8d
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 80
    :catchall_93
    move-exception v3

    goto :goto_9d

    .line 66
    :cond_95
    :try_start_95
    new-instance v3, Landroid/os/BadParcelableException;

    const-string v6, "Parcelable too small"

    invoke-direct {v3, v6}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_parcelable_builder":Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;
    .end local v1    # "_aidl_start_pos":I
    .end local v2    # "_aidl_parcelable_size":I
    .end local p0    # "_aidl_parcel":Landroid/os/Parcel;
    throw v3
    :try_end_9d
    .catchall {:try_start_95 .. :try_end_9d} :catchall_93

    .line 80
    .restart local v0    # "_aidl_parcelable_builder":Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;
    .restart local v1    # "_aidl_start_pos":I
    .restart local v2    # "_aidl_parcelable_size":I
    .restart local p0    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_9d
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_a1

    .line 83
    goto :goto_25

    .line 81
    :cond_a1
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public describeContents()I
    .registers 3

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->uidRanges:[Landroid/net/UidRangeParcel;

    invoke-direct {p0, v1}, Landroid/net/netd/aidl/NativeUidRangeConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 115
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 97
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 98
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 99
    :cond_8
    instance-of v2, p1, Landroid/net/netd/aidl/NativeUidRangeConfig;

    if-nez v2, :cond_d

    return v1

    .line 100
    :cond_d
    move-object v2, p1

    check-cast v2, Landroid/net/netd/aidl/NativeUidRangeConfig;

    .line 101
    .local v2, "that":Landroid/net/netd/aidl/NativeUidRangeConfig;
    iget v3, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->netId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/net/netd/aidl/NativeUidRangeConfig;->netId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    return v1

    .line 102
    :cond_23
    iget-object v3, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->uidRanges:[Landroid/net/UidRangeParcel;

    iget-object v4, v2, Landroid/net/netd/aidl/NativeUidRangeConfig;->uidRanges:[Landroid/net/UidRangeParcel;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    return v1

    .line 103
    :cond_2e
    iget v3, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->subPriority:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/net/netd/aidl/NativeUidRangeConfig;->subPriority:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    return v1

    .line 104
    :cond_41
    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 109
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/io/Serializable;

    iget v1, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->netId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->uidRanges:[Landroid/net/UidRangeParcel;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->subPriority:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 89
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    const-string/jumbo v2, "{"

    const-string/jumbo v3, "}"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 90
    .local v0, "_aidl_sj":Ljava/util/StringJoiner;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "netId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->netId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uidRanges: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->uidRanges:[Landroid/net/UidRangeParcel;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "subPriority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->subPriority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.net.netd.aidl.NativeUidRangeConfig"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 45
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget v1, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->netId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget-object v1, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->uidRanges:[Landroid/net/UidRangeParcel;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 48
    iget v1, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->subPriority:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 50
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 51
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 53
    return-void
.end method
