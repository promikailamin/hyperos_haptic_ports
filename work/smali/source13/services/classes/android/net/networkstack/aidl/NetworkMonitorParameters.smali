.class public Landroid/net/networkstack/aidl/NetworkMonitorParameters;
.super Ljava/lang/Object;
.source "NetworkMonitorParameters.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/networkstack/aidl/NetworkMonitorParameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public linkProperties:Landroid/net/LinkProperties;

.field public networkAgentConfig:Landroid/net/NetworkAgentConfig;

.field public networkCapabilities:Landroid/net/NetworkCapabilities;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    new-instance v0, Landroid/net/networkstack/aidl/NetworkMonitorParameters$1;

    invoke-direct {v0}, Landroid/net/networkstack/aidl/NetworkMonitorParameters$1;-><init>()V

    sput-object v0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 86
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 87
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 88
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 90
    :cond_10
    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 3

    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    invoke-direct {p0, v1}, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 81
    iget-object v1, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v1}, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 82
    iget-object v1, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v1}, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 83
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 63
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 64
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 65
    :cond_8
    instance-of v2, p1, Landroid/net/networkstack/aidl/NetworkMonitorParameters;

    if-nez v2, :cond_d

    return v1

    .line 66
    :cond_d
    move-object v2, p1

    check-cast v2, Landroid/net/networkstack/aidl/NetworkMonitorParameters;

    .line 67
    .local v2, "that":Landroid/net/networkstack/aidl/NetworkMonitorParameters;
    iget-object v3, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iget-object v4, v2, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    return v1

    .line 68
    :cond_1b
    iget-object v3, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v4, v2, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    return v1

    .line 69
    :cond_26
    iget-object v3, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->linkProperties:Landroid/net/LinkProperties;

    iget-object v4, v2, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->linkProperties:Landroid/net/LinkProperties;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    return v1

    .line 70
    :cond_31
    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 75
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/os/Parcelable;

    iget-object v1, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->linkProperties:Landroid/net/LinkProperties;

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

    if-lt v1, v2, :cond_82

    .line 40
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_80

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 47
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 50
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 40
    return-void

    .line 48
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 41
    :cond_26
    :try_start_26
    sget-object v2, Landroid/net/NetworkAgentConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkAgentConfig;

    iput-object v2, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_80

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_46

    .line 47
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_40

    .line 50
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 42
    return-void

    .line 48
    :cond_40
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 43
    :cond_46
    :try_start_46
    sget-object v2, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkCapabilities;

    iput-object v2, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_54
    .catchall {:try_start_46 .. :try_end_54} :catchall_80

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_66

    .line 47
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_60

    .line 50
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 44
    return-void

    .line 48
    :cond_60
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 45
    :cond_66
    :try_start_66
    sget-object v2, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    iput-object v2, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->linkProperties:Landroid/net/LinkProperties;
    :try_end_70
    .catchall {:try_start_66 .. :try_end_70} :catchall_80

    .line 47
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_7a

    .line 50
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 51
    nop

    .line 52
    return-void

    .line 48
    :cond_7a
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 47
    :catchall_80
    move-exception v2

    goto :goto_8a

    .line 39
    :cond_82
    :try_start_82
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/net/networkstack/aidl/NetworkMonitorParameters;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_8a
    .catchall {:try_start_82 .. :try_end_8a} :catchall_80

    .line 47
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/net/networkstack/aidl/NetworkMonitorParameters;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_8a
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_93

    .line 48
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 50
    :cond_93
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 51
    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 55
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    const-string/jumbo v2, "{"

    const-string/jumbo v3, "}"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 56
    .local v0, "_aidl_sj":Ljava/util/StringJoiner;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "networkAgentConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "networkCapabilities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "linkProperties: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->linkProperties:Landroid/net/LinkProperties;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.net.networkstack.aidl.NetworkMonitorParameters"

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

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 25
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    iget-object v1, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 27
    iget-object v1, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 28
    iget-object v1, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

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
