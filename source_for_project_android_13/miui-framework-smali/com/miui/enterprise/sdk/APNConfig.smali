.class public Lcom/miui/enterprise/sdk/APNConfig;
.super Ljava/lang/Object;
.source "APNConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/enterprise/sdk/APNConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public whitelist mApn:Ljava/lang/String;

.field public whitelist mAuthType:I

.field public whitelist mBearer:I

.field public whitelist mCarrier_enabled:I

.field public whitelist mCurrent:I

.field public whitelist mDialNumber:Ljava/lang/String;

.field public whitelist mMcc:Ljava/lang/String;

.field public whitelist mMmsc:Ljava/lang/String;

.field public whitelist mMmsport:Ljava/lang/String;

.field public whitelist mMmsproxy:Ljava/lang/String;

.field public whitelist mMnc:Ljava/lang/String;

.field public whitelist mMvno_match_data:Ljava/lang/String;

.field public whitelist mMvno_type:Ljava/lang/String;

.field public whitelist mName:Ljava/lang/String;

.field public whitelist mNumeric:Ljava/lang/String;

.field public whitelist mPassword:Ljava/lang/String;

.field public whitelist mPort:Ljava/lang/String;

.field public whitelist mProtocol:Ljava/lang/String;

.field public whitelist mProxy:Ljava/lang/String;

.field public whitelist mRoaming_protocol:Ljava/lang/String;

.field public whitelist mServer:Ljava/lang/String;

.field public whitelist mSub_id:Ljava/lang/String;

.field public whitelist mType:Ljava/lang/String;

.field public whitelist mUser:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 122
    new-instance v0, Lcom/miui/enterprise/sdk/APNConfig$1;

    invoke-direct {v0}, Lcom/miui/enterprise/sdk/APNConfig$1;-><init>()V

    sput-object v0, Lcom/miui/enterprise/sdk/APNConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mAuthType:I

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mBearer:I

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mCarrier_enabled:I

    .line 18
    iput v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mCurrent:I

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMcc:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsc:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsport:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsproxy:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMnc:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_match_data:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_type:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mNumeric:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mPort:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mProtocol:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mProxy:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mRoaming_protocol:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mServer:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mSub_id:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mType:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mAuthType:I

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mBearer:I

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mCarrier_enabled:I

    .line 18
    iput v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mCurrent:I

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMcc:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsc:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsport:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsproxy:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMnc:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_match_data:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_type:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mNumeric:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mPort:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mProtocol:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mProxy:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mRoaming_protocol:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mServer:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mSub_id:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mType:Ljava/lang/String;

    .line 37
    invoke-virtual {p0, p1}, Lcom/miui/enterprise/sdk/APNConfig;->readFromParcel(Landroid/os/Parcel;)V

    .line 38
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "apn"    # Ljava/lang/String;
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "authType"    # I
    .param p6, "dialNumber"    # Ljava/lang/String;
    .param p7, "bearer"    # I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mAuthType:I

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mBearer:I

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mCarrier_enabled:I

    .line 18
    iput v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mCurrent:I

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMcc:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsc:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsport:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsproxy:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMnc:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_match_data:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_type:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mNumeric:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mPort:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mProtocol:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mProxy:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mRoaming_protocol:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mServer:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mSub_id:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mType:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mName:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/miui/enterprise/sdk/APNConfig;->mApn:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/miui/enterprise/sdk/APNConfig;->mUser:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/miui/enterprise/sdk/APNConfig;->mPassword:Ljava/lang/String;

    .line 50
    iput p5, p0, Lcom/miui/enterprise/sdk/APNConfig;->mAuthType:I

    .line 51
    iput-object p6, p0, Lcom/miui/enterprise/sdk/APNConfig;->mDialNumber:Ljava/lang/String;

    .line 52
    iput p7, p0, Lcom/miui/enterprise/sdk/APNConfig;->mBearer:I

    .line 53
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isValidate()Z
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mApn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mUser:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mPassword:Ljava/lang/String;

    .line 57
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    .line 56
    :goto_23
    return v0
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mName:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mApn:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mUser:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mPassword:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mAuthType:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mDialNumber:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mBearer:I

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mCarrier_enabled:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mCurrent:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMcc:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsc:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsport:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsproxy:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMnc:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_match_data:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_type:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mNumeric:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mPort:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mProtocol:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mProxy:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mRoaming_protocol:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mServer:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mSub_id:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mType:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "APNConfig{mName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mApn=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/enterprise/sdk/APNConfig;->mApn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mUser=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/enterprise/sdk/APNConfig;->mUser:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mPassword=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/enterprise/sdk/APNConfig;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mAuthType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/miui/enterprise/sdk/APNConfig;->mAuthType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mDialNumber=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/enterprise/sdk/APNConfig;->mDialNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBearer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mBearer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 67
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mApn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mUser:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mAuthType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mDialNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mBearer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mCarrier_enabled:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mCurrent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMcc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsport:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsproxy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMnc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_match_data:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mPort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mProtocol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mProxy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mRoaming_protocol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mServer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mSub_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    return-void
.end method
