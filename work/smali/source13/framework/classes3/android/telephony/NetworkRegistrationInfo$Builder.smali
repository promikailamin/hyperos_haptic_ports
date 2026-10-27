.class public final Landroid/telephony/NetworkRegistrationInfo$Builder;
.super Ljava/lang/Object;
.source "NetworkRegistrationInfo.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/NetworkRegistrationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAccessNetworkTechnology:I

.field private blacklist mAvailableServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCellIdentity:Landroid/telephony/CellIdentity;

.field private blacklist mDataSpecificRegistrationInfo:Landroid/telephony/DataSpecificRegistrationInfo;

.field private blacklist mDomain:I

.field private blacklist mEmergencyOnly:Z

.field private blacklist mRegistrationState:I

.field private blacklist mRejectCause:I

.field private blacklist mRplmn:Ljava/lang/String;

.field private blacklist mTransportType:I

.field private blacklist mVoiceSpecificRegistrationInfo:Landroid/telephony/VoiceSpecificRegistrationInfo;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 824
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 812
    const-string v0, ""

    iput-object v0, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mRplmn:Ljava/lang/String;

    .line 824
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/telephony/NetworkRegistrationInfo;
    .registers 15
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 977
    new-instance v13, Landroid/telephony/NetworkRegistrationInfo;

    iget v1, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mDomain:I

    iget v2, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mTransportType:I

    iget v3, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mRegistrationState:I

    iget v4, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mAccessNetworkTechnology:I

    iget v5, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mRejectCause:I

    iget-boolean v6, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mEmergencyOnly:Z

    iget-object v7, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mAvailableServices:Ljava/util/List;

    iget-object v8, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mCellIdentity:Landroid/telephony/CellIdentity;

    iget-object v9, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mRplmn:Ljava/lang/String;

    iget-object v10, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mVoiceSpecificRegistrationInfo:Landroid/telephony/VoiceSpecificRegistrationInfo;

    iget-object v11, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mDataSpecificRegistrationInfo:Landroid/telephony/DataSpecificRegistrationInfo;

    const/4 v12, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Landroid/telephony/NetworkRegistrationInfo;-><init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;Landroid/telephony/VoiceSpecificRegistrationInfo;Landroid/telephony/DataSpecificRegistrationInfo;Landroid/telephony/NetworkRegistrationInfo-IA;)V

    return-object v13
.end method

.method public whitelist setAccessNetworkTechnology(I)Landroid/telephony/NetworkRegistrationInfo$Builder;
    .registers 2
    .param p1, "accessNetworkTechnology"    # I

    .line 871
    iput p1, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mAccessNetworkTechnology:I

    .line 872
    return-object p0
.end method

.method public whitelist setAvailableServices(Ljava/util/List;)Landroid/telephony/NetworkRegistrationInfo$Builder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/telephony/NetworkRegistrationInfo$Builder;"
        }
    .end annotation

    .line 916
    .local p1, "availableServices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mAvailableServices:Ljava/util/List;

    .line 917
    return-object p0
.end method

.method public whitelist setCellIdentity(Landroid/telephony/CellIdentity;)Landroid/telephony/NetworkRegistrationInfo$Builder;
    .registers 2
    .param p1, "cellIdentity"    # Landroid/telephony/CellIdentity;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 930
    iput-object p1, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mCellIdentity:Landroid/telephony/CellIdentity;

    .line 931
    return-object p0
.end method

.method public blacklist setDataSpecificInfo(Landroid/telephony/DataSpecificRegistrationInfo;)Landroid/telephony/NetworkRegistrationInfo$Builder;
    .registers 2
    .param p1, "info"    # Landroid/telephony/DataSpecificRegistrationInfo;

    .line 966
    iput-object p1, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mDataSpecificRegistrationInfo:Landroid/telephony/DataSpecificRegistrationInfo;

    .line 967
    return-object p0
.end method

.method public whitelist setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;
    .registers 2
    .param p1, "domain"    # I

    .line 834
    iput p1, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mDomain:I

    .line 835
    return-object p0
.end method

.method public whitelist setEmergencyOnly(Z)Landroid/telephony/NetworkRegistrationInfo$Builder;
    .registers 2
    .param p1, "emergencyOnly"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 901
    iput-boolean p1, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mEmergencyOnly:Z

    .line 902
    return-object p0
.end method

.method public whitelist setRegisteredPlmn(Ljava/lang/String;)Landroid/telephony/NetworkRegistrationInfo$Builder;
    .registers 2
    .param p1, "rplmn"    # Ljava/lang/String;

    .line 942
    iput-object p1, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mRplmn:Ljava/lang/String;

    .line 943
    return-object p0
.end method

.method public whitelist setRegistrationState(I)Landroid/telephony/NetworkRegistrationInfo$Builder;
    .registers 2
    .param p1, "registrationState"    # I

    .line 858
    iput p1, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mRegistrationState:I

    .line 859
    return-object p0
.end method

.method public whitelist setRejectCause(I)Landroid/telephony/NetworkRegistrationInfo$Builder;
    .registers 2
    .param p1, "rejectCause"    # I

    .line 887
    iput p1, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mRejectCause:I

    .line 888
    return-object p0
.end method

.method public whitelist setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;
    .registers 2
    .param p1, "transportType"    # I

    .line 846
    iput p1, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mTransportType:I

    .line 847
    return-object p0
.end method

.method public blacklist setVoiceSpecificInfo(Landroid/telephony/VoiceSpecificRegistrationInfo;)Landroid/telephony/NetworkRegistrationInfo$Builder;
    .registers 2
    .param p1, "info"    # Landroid/telephony/VoiceSpecificRegistrationInfo;

    .line 954
    iput-object p1, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mVoiceSpecificRegistrationInfo:Landroid/telephony/VoiceSpecificRegistrationInfo;

    .line 955
    return-object p0
.end method
