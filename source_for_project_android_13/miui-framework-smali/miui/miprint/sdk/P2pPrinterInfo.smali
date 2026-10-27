.class public final Lmiui/miprint/sdk/P2pPrinterInfo;
.super Ljava/lang/Object;
.source "P2pPrinterInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/miprint/sdk/P2pPrinterInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mLocation:Ljava/lang/String;

.field private blacklist mPeer:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private blacklist mPrinterId:Landroid/print/PrinterId;

.field private blacklist mSummary:Ljava/lang/String;

.field private blacklist mTitle:Ljava/lang/String;

.field private blacklist mUuid:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 103
    new-instance v0, Lmiui/miprint/sdk/P2pPrinterInfo$1;

    invoke-direct {v0}, Lmiui/miprint/sdk/P2pPrinterInfo$1;-><init>()V

    sput-object v0, Lmiui/miprint/sdk/P2pPrinterInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p0, p1}, Lmiui/miprint/sdk/P2pPrinterInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 32
    return-void
.end method

.method public constructor whitelist <init>(Landroid/print/PrinterId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 7
    .param p1, "printerId"    # Landroid/print/PrinterId;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "summary"    # Ljava/lang/String;
    .param p4, "location"    # Ljava/lang/String;
    .param p5, "uuid"    # Landroid/net/Uri;
    .param p6, "peer"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mPrinterId:Landroid/print/PrinterId;

    .line 22
    iput-object p2, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mTitle:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mSummary:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mLocation:Ljava/lang/String;

    .line 25
    iput-object p5, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mUuid:Landroid/net/Uri;

    .line 26
    iput-object p6, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mPeer:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 27
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getLocation()Ljava/lang/String;
    .registers 2

    .line 86
    iget-object v0, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPeer()Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2

    .line 94
    iget-object v0, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mPeer:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method public whitelist getPrinterId()Landroid/print/PrinterId;
    .registers 2

    .line 74
    iget-object v0, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mPrinterId:Landroid/print/PrinterId;

    return-object v0
.end method

.method public whitelist getSummary()Ljava/lang/String;
    .registers 2

    .line 82
    iget-object v0, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUuid()Landroid/net/Uri;
    .registers 2

    .line 90
    iget-object v0, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mUuid:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/print/PrinterId;

    iput-object v1, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mPrinterId:Landroid/print/PrinterId;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mTitle:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mSummary:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mLocation:Ljava/lang/String;

    .line 49
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mUuid:Landroid/net/Uri;

    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v0, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mPeer:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 51
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "DiscoveredPrinterInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object v1, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mPrinterId:Landroid/print/PrinterId;

    if-eqz v1, :cond_1d

    .line 58
    const-string v1, "mPrinterId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mPrinterId:Landroid/print/PrinterId;

    invoke-virtual {v2}, Landroid/print/PrinterId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    :cond_1d
    const-string v1, ", mTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, ", mSummary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mSummary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, ", mLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-object v1, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mUuid:Landroid/net/Uri;

    if-eqz v1, :cond_51

    .line 64
    const-string v1, ", mUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mUuid:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    :cond_51
    iget-object v1, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mPeer:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v1, :cond_64

    .line 67
    const-string v1, ", mPeer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mPeer:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :cond_64
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 36
    iget-object v0, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mPrinterId:Landroid/print/PrinterId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 37
    iget-object v0, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mUuid:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 41
    iget-object v0, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mPeer:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 42
    return-void
.end method
