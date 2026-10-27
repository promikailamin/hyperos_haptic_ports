.class public Lcom/miui/mishare/ConnectionConfig;
.super Ljava/lang/Object;
.source "ConnectionConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/mishare/ConnectionConfig$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/mishare/ConnectionConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist GUIDING_NETWORK_TYPE_BLE_DIRECT_BROADCAST:I = 0x2

.field public static final blacklist GUIDING_NETWORK_TYPE_GATT:I = 0x1

.field public static final blacklist KEY_PC_FILE_COUNT:Ljava/lang/String; = "pc_file_count"

.field public static final blacklist KEY_PC_TYPE_TASK_ID:Ljava/lang/String; = "pc_t_id"

.field public static final blacklist MAIN_NETWORK_TYPE_WIFI_AP:I = 0x2

.field public static final blacklist MAIN_NETWORK_TYPE_WIFI_P2P:I = 0x1

.field public static final blacklist PROTOCOL_TYPE_MIOV_HTTP:I = 0x2

.field public static final blacklist PROTOCOL_TYPE_MI_PC_HTTP:I = 0x3


# instance fields
.field private blacklist mExtras:Landroid/os/Bundle;

.field private blacklist mGuidingNetworkType:I

.field private blacklist mMainNetworkType:I

.field private blacklist mProtocolType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 64
    new-instance v0, Lcom/miui/mishare/ConnectionConfig$1;

    invoke-direct {v0}, Lcom/miui/mishare/ConnectionConfig$1;-><init>()V

    sput-object v0, Lcom/miui/mishare/ConnectionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IIILandroid/os/Bundle;)V
    .registers 5
    .param p1, "guidingNetworkType"    # I
    .param p2, "mainNetworkType"    # I
    .param p3, "protocolType"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/miui/mishare/ConnectionConfig;->mGuidingNetworkType:I

    .line 30
    iput p2, p0, Lcom/miui/mishare/ConnectionConfig;->mMainNetworkType:I

    .line 31
    iput p3, p0, Lcom/miui/mishare/ConnectionConfig;->mProtocolType:I

    .line 32
    iput-object p4, p0, Lcom/miui/mishare/ConnectionConfig;->mExtras:Landroid/os/Bundle;

    .line 33
    return-void
.end method

.method synthetic constructor blacklist <init>(IIILandroid/os/Bundle;Lcom/miui/mishare/ConnectionConfig-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/mishare/ConnectionConfig;-><init>(IIILandroid/os/Bundle;)V

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/mishare/ConnectionConfig;->mGuidingNetworkType:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/mishare/ConnectionConfig;->mMainNetworkType:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/mishare/ConnectionConfig;->mProtocolType:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/mishare/ConnectionConfig;->mExtras:Landroid/os/Bundle;

    .line 40
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/miui/mishare/ConnectionConfig;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getGuidingNetworkType()I
    .registers 2

    .line 77
    iget v0, p0, Lcom/miui/mishare/ConnectionConfig;->mGuidingNetworkType:I

    return v0
.end method

.method public blacklist getMainNetworkType()I
    .registers 2

    .line 81
    iget v0, p0, Lcom/miui/mishare/ConnectionConfig;->mMainNetworkType:I

    return v0
.end method

.method public blacklist getProtocolType()I
    .registers 2

    .line 85
    iget v0, p0, Lcom/miui/mishare/ConnectionConfig;->mProtocolType:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectionConfig{ gt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/mishare/ConnectionConfig;->mGuidingNetworkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/mishare/ConnectionConfig;->mMainNetworkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/mishare/ConnectionConfig;->mProtocolType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/mishare/ConnectionConfig;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 44
    iget v0, p0, Lcom/miui/mishare/ConnectionConfig;->mGuidingNetworkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget v0, p0, Lcom/miui/mishare/ConnectionConfig;->mMainNetworkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget v0, p0, Lcom/miui/mishare/ConnectionConfig;->mProtocolType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget-object v0, p0, Lcom/miui/mishare/ConnectionConfig;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 48
    return-void
.end method
