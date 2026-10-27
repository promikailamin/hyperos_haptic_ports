.class public Landroid/location/LocationPolicy;
.super Ljava/lang/Object;
.source "LocationPolicy.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/LocationPolicy;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist MATCH_FUSED_PROVIDER:I = 0x3

.field public static final blacklist MATCH_GPS_PROVIDER:I = 0x2

.field public static final blacklist MATCH_NETWORK_PROVIDER:I = 0x1

.field public static final blacklist MATCH_PASSIVE_PROVIDER:I = 0x4


# instance fields
.field public final blacklist mHighCost:Z

.field private final blacklist mMatchRule:I

.field public final blacklist mMinIntervalMs:I

.field public final blacklist mProvider:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 167
    new-instance v0, Landroid/location/LocationPolicy$1;

    invoke-direct {v0}, Landroid/location/LocationPolicy$1;-><init>()V

    sput-object v0, Landroid/location/LocationPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Z)V
    .registers 5
    .param p1, "matchRule"    # I
    .param p2, "provider"    # Ljava/lang/String;
    .param p3, "highcost"    # Z

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput p1, p0, Landroid/location/LocationPolicy;->mMatchRule:I

    .line 74
    iput-object p2, p0, Landroid/location/LocationPolicy;->mProvider:Ljava/lang/String;

    .line 75
    iput-boolean p3, p0, Landroid/location/LocationPolicy;->mHighCost:Z

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/LocationPolicy;->mMinIntervalMs:I

    .line 77
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;ZI)V
    .registers 5
    .param p1, "matchRule"    # I
    .param p2, "provider"    # Ljava/lang/String;
    .param p3, "highcost"    # Z
    .param p4, "minIntervalMs"    # I

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput p1, p0, Landroid/location/LocationPolicy;->mMatchRule:I

    .line 81
    iput-object p2, p0, Landroid/location/LocationPolicy;->mProvider:Ljava/lang/String;

    .line 82
    iput-boolean p3, p0, Landroid/location/LocationPolicy;->mHighCost:Z

    .line 83
    iput p4, p0, Landroid/location/LocationPolicy;->mMinIntervalMs:I

    .line 84
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/location/LocationPolicy;->mMatchRule:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/location/LocationPolicy;->mProvider:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    iput-boolean v0, p0, Landroid/location/LocationPolicy;->mHighCost:Z

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/location/LocationPolicy;->mMinIntervalMs:I

    .line 91
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/location/LocationPolicy-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/LocationPolicy;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist buildDefaultPolicyFusedLocation()Landroid/location/LocationPolicy;
    .registers 4

    .line 38
    new-instance v0, Landroid/location/LocationPolicy;

    const/4 v1, 0x3

    const-string v2, "fused"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/location/LocationPolicy;-><init>(ILjava/lang/String;Z)V

    return-object v0
.end method

.method public static blacklist buildDefaultPolicyGPSLocation()Landroid/location/LocationPolicy;
    .registers 4

    .line 31
    new-instance v0, Landroid/location/LocationPolicy;

    const/4 v1, 0x2

    const-string v2, "gps"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/location/LocationPolicy;-><init>(ILjava/lang/String;Z)V

    return-object v0
.end method

.method public static blacklist buildDefaultPolicyNetworkLocation()Landroid/location/LocationPolicy;
    .registers 4

    .line 24
    new-instance v0, Landroid/location/LocationPolicy;

    const/4 v1, 0x1

    const-string v2, "network"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/location/LocationPolicy;-><init>(ILjava/lang/String;Z)V

    return-object v0
.end method

.method public static blacklist buildDefaultPolicyPassiveLocation()Landroid/location/LocationPolicy;
    .registers 4

    .line 45
    new-instance v0, Landroid/location/LocationPolicy;

    const/4 v1, 0x4

    const-string v2, "passive"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/location/LocationPolicy;-><init>(ILjava/lang/String;Z)V

    return-object v0
.end method

.method public static blacklist getLocationPolicy(Ljava/lang/String;I)Landroid/location/LocationPolicy;
    .registers 6
    .param p0, "provider"    # Ljava/lang/String;
    .param p1, "minIntervalMs"    # I

    .line 50
    const-string v0, "network"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_10

    .line 51
    new-instance v1, Landroid/location/LocationPolicy;

    invoke-direct {v1, v3, v0, v2, p1}, Landroid/location/LocationPolicy;-><init>(ILjava/lang/String;ZI)V

    return-object v1

    .line 53
    :cond_10
    const-string v0, "gps"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 54
    new-instance v1, Landroid/location/LocationPolicy;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0, v3, p1}, Landroid/location/LocationPolicy;-><init>(ILjava/lang/String;ZI)V

    return-object v1

    .line 56
    :cond_1f
    const-string v0, "passive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 57
    new-instance v1, Landroid/location/LocationPolicy;

    const/4 v3, 0x4

    invoke-direct {v1, v3, v0, v2, p1}, Landroid/location/LocationPolicy;-><init>(ILjava/lang/String;ZI)V

    return-object v1

    .line 59
    :cond_2e
    const-string v0, "fused"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 60
    new-instance v1, Landroid/location/LocationPolicy;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v0, v3, p1}, Landroid/location/LocationPolicy;-><init>(ILjava/lang/String;ZI)V

    return-object v1

    .line 63
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown location provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getMatchRuleName(I)Ljava/lang/String;
    .registers 2
    .param p0, "matchRule"    # I

    .line 153
    packed-switch p0, :pswitch_data_12

    .line 163
    const-string v0, "UNKNOWN"

    return-object v0

    .line 161
    :pswitch_6
    const-string v0, "PASSIVE_PROVIDER"

    return-object v0

    .line 159
    :pswitch_9
    const-string v0, "FUSED_PROVIDER"

    return-object v0

    .line 157
    :pswitch_c
    const-string v0, "GPS_PROVIDER"

    return-object v0

    .line 155
    :pswitch_f
    const-string v0, "NETWORK_PROVIDER"

    return-object v0

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 123
    instance-of v0, p1, Landroid/location/LocationPolicy;

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 124
    move-object v0, p1

    check-cast v0, Landroid/location/LocationPolicy;

    .line 125
    .local v0, "other":Landroid/location/LocationPolicy;
    iget v2, p0, Landroid/location/LocationPolicy;->mMatchRule:I

    iget v3, v0, Landroid/location/LocationPolicy;->mMatchRule:I

    if-ne v2, v3, :cond_21

    iget-object v2, p0, Landroid/location/LocationPolicy;->mProvider:Ljava/lang/String;

    iget-object v3, v0, Landroid/location/LocationPolicy;->mProvider:Ljava/lang/String;

    if-ne v2, v3, :cond_21

    iget-boolean v2, p0, Landroid/location/LocationPolicy;->mHighCost:Z

    iget-boolean v3, v0, Landroid/location/LocationPolicy;->mHighCost:Z

    if-ne v2, v3, :cond_21

    iget v2, p0, Landroid/location/LocationPolicy;->mMinIntervalMs:I

    iget v3, v0, Landroid/location/LocationPolicy;->mMinIntervalMs:I

    if-ne v2, v3, :cond_21

    const/4 v1, 0x1

    :cond_21
    return v1

    .line 130
    .end local v0    # "other":Landroid/location/LocationPolicy;
    :cond_22
    return v1
.end method

.method public blacklist getMatchRule()I
    .registers 2

    .line 134
    iget v0, p0, Landroid/location/LocationPolicy;->mMatchRule:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 118
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/location/LocationPolicy;->mMatchRule:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/location/LocationPolicy;->mHighCost:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/location/LocationPolicy;->mMinIntervalMs:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist matches(Ljava/lang/String;)Z
    .registers 4
    .param p1, "locationProvider"    # Ljava/lang/String;

    .line 138
    iget v0, p0, Landroid/location/LocationPolicy;->mMatchRule:I

    packed-switch v0, :pswitch_data_2a

    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown location provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :pswitch_d
    const-string v0, "passive"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 144
    :pswitch_14
    const-string v0, "fused"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 142
    :pswitch_1b
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 140
    :pswitch_22
    const-string v0, "network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_22
        :pswitch_1b
        :pswitch_14
        :pswitch_d
    .end packed-switch
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LocationPolicy: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "matchRule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/LocationPolicy;->mMatchRule:I

    invoke-static {v2}, Landroid/location/LocationPolicy;->getMatchRuleName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, ", provider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/LocationPolicy;->mProvider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string v1, ", highCost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/location/LocationPolicy;->mHighCost:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, ", minInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/LocationPolicy;->mMinIntervalMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 95
    iget v0, p0, Landroid/location/LocationPolicy;->mMatchRule:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-object v0, p0, Landroid/location/LocationPolicy;->mProvider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-boolean v0, p0, Landroid/location/LocationPolicy;->mHighCost:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget v0, p0, Landroid/location/LocationPolicy;->mMinIntervalMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    return-void
.end method
