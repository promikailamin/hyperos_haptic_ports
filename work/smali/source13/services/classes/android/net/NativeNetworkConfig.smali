.class public Landroid/net/NativeNetworkConfig;
.super Ljava/lang/Object;
.source "NativeNetworkConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NativeNetworkConfig$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/NativeNetworkConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final excludeLocalRoutes:Z

.field public final netId:I

.field public final networkType:I

.field public final permission:I

.field public final secure:Z

.field public final vpnType:I


# direct methods
.method static bridge synthetic -$$Nest$sminternalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/NativeNetworkConfig;
    .registers 1

    invoke-static {p0}, Landroid/net/NativeNetworkConfig;->internalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/NativeNetworkConfig;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Landroid/net/NativeNetworkConfig$1;

    invoke-direct {v0}, Landroid/net/NativeNetworkConfig$1;-><init>()V

    sput-object v0, Landroid/net/NativeNetworkConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIZIZ)V
    .registers 7
    .param p1, "netId"    # I
    .param p2, "networkType"    # I
    .param p3, "permission"    # I
    .param p4, "secure"    # Z
    .param p5, "vpnType"    # I
    .param p6, "excludeLocalRoutes"    # Z

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p1, p0, Landroid/net/NativeNetworkConfig;->netId:I

    .line 78
    iput p2, p0, Landroid/net/NativeNetworkConfig;->networkType:I

    .line 79
    iput p3, p0, Landroid/net/NativeNetworkConfig;->permission:I

    .line 80
    iput-boolean p4, p0, Landroid/net/NativeNetworkConfig;->secure:Z

    .line 81
    iput p5, p0, Landroid/net/NativeNetworkConfig;->vpnType:I

    .line 82
    iput-boolean p6, p0, Landroid/net/NativeNetworkConfig;->excludeLocalRoutes:Z

    .line 83
    return-void
.end method

.method private static internalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/NativeNetworkConfig;
    .registers 12
    .param p0, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 86
    new-instance v0, Landroid/net/NativeNetworkConfig$Builder;

    invoke-direct {v0}, Landroid/net/NativeNetworkConfig$Builder;-><init>()V

    .line 87
    .local v0, "_aidl_parcelable_builder":Landroid/net/NativeNetworkConfig$Builder;
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 88
    .local v1, "_aidl_start_pos":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 90
    .local v2, "_aidl_parcelable_size":I
    const/4 v3, 0x4

    const-string v4, "Overflow in the size of parcelable"

    const v5, 0x7fffffff

    if-lt v2, v3, :cond_fe

    :try_start_15
    invoke-virtual {v0}, Landroid/net/NativeNetworkConfig$Builder;->build()Landroid/net/NativeNetworkConfig;

    .line 91
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt v3, v2, :cond_35

    invoke-virtual {v0}, Landroid/net/NativeNetworkConfig$Builder;->build()Landroid/net/NativeNetworkConfig;
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_fc

    .line 116
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_2f

    .line 119
    :goto_25
    add-int v3, v1, v2

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 120
    invoke-virtual {v0}, Landroid/net/NativeNetworkConfig$Builder;->build()Landroid/net/NativeNetworkConfig;

    move-result-object v3

    return-object v3

    .line 117
    :cond_2f
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 93
    :cond_35
    :try_start_35
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 94
    .local v3, "_aidl_temp_netId":I
    invoke-virtual {v0, v3}, Landroid/net/NativeNetworkConfig$Builder;->setNetId(I)Landroid/net/NativeNetworkConfig$Builder;

    .line 95
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    sub-int/2addr v6, v1

    if-lt v6, v2, :cond_59

    invoke-virtual {v0}, Landroid/net/NativeNetworkConfig$Builder;->build()Landroid/net/NativeNetworkConfig;
    :try_end_46
    .catchall {:try_start_35 .. :try_end_46} :catchall_fc

    .line 116
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_53

    .line 119
    add-int v4, v1, v2

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 120
    invoke-virtual {v0}, Landroid/net/NativeNetworkConfig$Builder;->build()Landroid/net/NativeNetworkConfig;

    move-result-object v4

    return-object v4

    .line 117
    :cond_53
    new-instance v5, Landroid/os/BadParcelableException;

    invoke-direct {v5, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 97
    :cond_59
    :try_start_59
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 98
    .local v6, "_aidl_temp_networkType":I
    invoke-virtual {v0, v6}, Landroid/net/NativeNetworkConfig$Builder;->setNetworkType(I)Landroid/net/NativeNetworkConfig$Builder;

    .line 99
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    sub-int/2addr v7, v1

    if-lt v7, v2, :cond_7d

    invoke-virtual {v0}, Landroid/net/NativeNetworkConfig$Builder;->build()Landroid/net/NativeNetworkConfig;
    :try_end_6a
    .catchall {:try_start_59 .. :try_end_6a} :catchall_fc

    .line 116
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_77

    .line 119
    add-int v4, v1, v2

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 120
    invoke-virtual {v0}, Landroid/net/NativeNetworkConfig$Builder;->build()Landroid/net/NativeNetworkConfig;

    move-result-object v4

    return-object v4

    .line 117
    :cond_77
    new-instance v5, Landroid/os/BadParcelableException;

    invoke-direct {v5, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 101
    :cond_7d
    :try_start_7d
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 102
    .local v7, "_aidl_temp_permission":I
    invoke-virtual {v0, v7}, Landroid/net/NativeNetworkConfig$Builder;->setPermission(I)Landroid/net/NativeNetworkConfig$Builder;

    .line 103
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v8

    sub-int/2addr v8, v1

    if-lt v8, v2, :cond_a1

    invoke-virtual {v0}, Landroid/net/NativeNetworkConfig$Builder;->build()Landroid/net/NativeNetworkConfig;
    :try_end_8e
    .catchall {:try_start_7d .. :try_end_8e} :catchall_fc

    .line 116
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_9b

    .line 119
    add-int v4, v1, v2

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 120
    invoke-virtual {v0}, Landroid/net/NativeNetworkConfig$Builder;->build()Landroid/net/NativeNetworkConfig;

    move-result-object v4

    return-object v4

    .line 117
    :cond_9b
    new-instance v5, Landroid/os/BadParcelableException;

    invoke-direct {v5, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 105
    :cond_a1
    :try_start_a1
    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 106
    .local v8, "_aidl_temp_secure":Z
    invoke-virtual {v0, v8}, Landroid/net/NativeNetworkConfig$Builder;->setSecure(Z)Landroid/net/NativeNetworkConfig$Builder;

    .line 107
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v9

    sub-int/2addr v9, v1

    if-lt v9, v2, :cond_c5

    invoke-virtual {v0}, Landroid/net/NativeNetworkConfig$Builder;->build()Landroid/net/NativeNetworkConfig;
    :try_end_b2
    .catchall {:try_start_a1 .. :try_end_b2} :catchall_fc

    .line 116
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_bf

    .line 119
    add-int v4, v1, v2

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 120
    invoke-virtual {v0}, Landroid/net/NativeNetworkConfig$Builder;->build()Landroid/net/NativeNetworkConfig;

    move-result-object v4

    return-object v4

    .line 117
    :cond_bf
    new-instance v5, Landroid/os/BadParcelableException;

    invoke-direct {v5, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 109
    :cond_c5
    :try_start_c5
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 110
    .local v9, "_aidl_temp_vpnType":I
    invoke-virtual {v0, v9}, Landroid/net/NativeNetworkConfig$Builder;->setVpnType(I)Landroid/net/NativeNetworkConfig$Builder;

    .line 111
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v10

    sub-int/2addr v10, v1

    if-lt v10, v2, :cond_e9

    invoke-virtual {v0}, Landroid/net/NativeNetworkConfig$Builder;->build()Landroid/net/NativeNetworkConfig;
    :try_end_d6
    .catchall {:try_start_c5 .. :try_end_d6} :catchall_fc

    .line 116
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_e3

    .line 119
    add-int v4, v1, v2

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 120
    invoke-virtual {v0}, Landroid/net/NativeNetworkConfig$Builder;->build()Landroid/net/NativeNetworkConfig;

    move-result-object v4

    return-object v4

    .line 117
    :cond_e3
    new-instance v5, Landroid/os/BadParcelableException;

    invoke-direct {v5, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 113
    :cond_e9
    :try_start_e9
    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 114
    .local v10, "_aidl_temp_excludeLocalRoutes":Z
    invoke-virtual {v0, v10}, Landroid/net/NativeNetworkConfig$Builder;->setExcludeLocalRoutes(Z)Landroid/net/NativeNetworkConfig$Builder;
    :try_end_f0
    .catchall {:try_start_e9 .. :try_end_f0} :catchall_fc

    .line 116
    nop

    .end local v3    # "_aidl_temp_netId":I
    .end local v6    # "_aidl_temp_networkType":I
    .end local v7    # "_aidl_temp_permission":I
    .end local v8    # "_aidl_temp_secure":Z
    .end local v9    # "_aidl_temp_vpnType":I
    .end local v10    # "_aidl_temp_excludeLocalRoutes":Z
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_f6

    .line 119
    goto/16 :goto_25

    .line 117
    :cond_f6
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 116
    :catchall_fc
    move-exception v3

    goto :goto_106

    .line 90
    :cond_fe
    :try_start_fe
    new-instance v3, Landroid/os/BadParcelableException;

    const-string v6, "Parcelable too small"

    invoke-direct {v3, v6}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_parcelable_builder":Landroid/net/NativeNetworkConfig$Builder;
    .end local v1    # "_aidl_start_pos":I
    .end local v2    # "_aidl_parcelable_size":I
    .end local p0    # "_aidl_parcel":Landroid/os/Parcel;
    throw v3
    :try_end_106
    .catchall {:try_start_fe .. :try_end_106} :catchall_fc

    .line 116
    .restart local v0    # "_aidl_parcelable_builder":Landroid/net/NativeNetworkConfig$Builder;
    .restart local v1    # "_aidl_start_pos":I
    .restart local v2    # "_aidl_parcelable_size":I
    .restart local p0    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_106
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_10b

    .line 119
    goto/16 :goto_25

    .line 117
    :cond_10b
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "_mask":I
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 136
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 137
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 138
    :cond_8
    instance-of v2, p1, Landroid/net/NativeNetworkConfig;

    if-nez v2, :cond_d

    return v1

    .line 139
    :cond_d
    move-object v2, p1

    check-cast v2, Landroid/net/NativeNetworkConfig;

    .line 140
    .local v2, "that":Landroid/net/NativeNetworkConfig;
    iget v3, p0, Landroid/net/NativeNetworkConfig;->netId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/net/NativeNetworkConfig;->netId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    return v1

    .line 141
    :cond_23
    iget v3, p0, Landroid/net/NativeNetworkConfig;->networkType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/net/NativeNetworkConfig;->networkType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    return v1

    .line 142
    :cond_36
    iget v3, p0, Landroid/net/NativeNetworkConfig;->permission:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/net/NativeNetworkConfig;->permission:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    return v1

    .line 143
    :cond_49
    iget-boolean v3, p0, Landroid/net/NativeNetworkConfig;->secure:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v2, Landroid/net/NativeNetworkConfig;->secure:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5c

    return v1

    .line 144
    :cond_5c
    iget v3, p0, Landroid/net/NativeNetworkConfig;->vpnType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/net/NativeNetworkConfig;->vpnType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6f

    return v1

    .line 145
    :cond_6f
    iget-boolean v3, p0, Landroid/net/NativeNetworkConfig;->excludeLocalRoutes:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v2, Landroid/net/NativeNetworkConfig;->excludeLocalRoutes:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_82

    return v1

    .line 146
    :cond_82
    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 151
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/io/Serializable;

    iget v1, p0, Landroid/net/NativeNetworkConfig;->netId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/NativeNetworkConfig;->networkType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/NativeNetworkConfig;->permission:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/NativeNetworkConfig;->secure:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/NativeNetworkConfig;->vpnType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/NativeNetworkConfig;->excludeLocalRoutes:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

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

    .line 125
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    const-string/jumbo v2, "{"

    const-string/jumbo v3, "}"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 126
    .local v0, "_aidl_sj":Ljava/util/StringJoiner;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "netId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NativeNetworkConfig;->netId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "networkType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NativeNetworkConfig;->networkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "permission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NativeNetworkConfig;->permission:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "secure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/NativeNetworkConfig;->secure:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vpnType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NativeNetworkConfig;->vpnType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "excludeLocalRoutes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/NativeNetworkConfig;->excludeLocalRoutes:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.net.NativeNetworkConfig"

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

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 63
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget v1, p0, Landroid/net/NativeNetworkConfig;->netId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget v1, p0, Landroid/net/NativeNetworkConfig;->networkType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget v1, p0, Landroid/net/NativeNetworkConfig;->permission:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget-boolean v1, p0, Landroid/net/NativeNetworkConfig;->secure:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 68
    iget v1, p0, Landroid/net/NativeNetworkConfig;->vpnType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget-boolean v1, p0, Landroid/net/NativeNetworkConfig;->excludeLocalRoutes:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 71
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    return-void
.end method
