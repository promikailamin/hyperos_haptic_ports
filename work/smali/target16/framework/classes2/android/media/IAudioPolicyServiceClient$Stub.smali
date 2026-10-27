.class public abstract Landroid/media/IAudioPolicyServiceClient$Stub;
.super Landroid/os/Binder;
.source "IAudioPolicyServiceClient.java"

# interfaces
.implements Landroid/media/IAudioPolicyServiceClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IAudioPolicyServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IAudioPolicyServiceClient$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onAudioPatchListUpdate:I = 0x3

.field static final blacklist TRANSACTION_onAudioPortListUpdate:I = 0x2

.field static final blacklist TRANSACTION_onAudioVolumeGroupChanged:I = 0x1

.field static final blacklist TRANSACTION_onDynamicPolicyMixStateUpdate:I = 0x4

.field static final blacklist TRANSACTION_onRecordingConfigurationUpdate:I = 0x5

.field static final blacklist TRANSACTION_onRoutingUpdated:I = 0x6

.field static final blacklist TRANSACTION_onVolumeRangeInitRequest:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 56
    const-string v0, "android.media.IAudioPolicyServiceClient"

    invoke-virtual {p0, p0, v0}, Landroid/media/IAudioPolicyServiceClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/IAudioPolicyServiceClient;
    .registers 3

    .line 64
    if-nez p0, :cond_4

    .line 65
    const/4 p0, 0x0

    return-object p0

    .line 67
    :cond_4
    const-string v0, "android.media.IAudioPolicyServiceClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/IAudioPolicyServiceClient;

    if-eqz v1, :cond_13

    .line 69
    check-cast v0, Landroid/media/IAudioPolicyServiceClient;

    return-object v0

    .line 71
    :cond_13
    new-instance v0, Landroid/media/IAudioPolicyServiceClient$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/IAudioPolicyServiceClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 75
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    nop

    .line 80
    const-string v2, "android.media.IAudioPolicyServiceClient"

    const/4 v9, 0x1

    if-lt p1, v9, :cond_e

    const v3, 0xffffff

    if-gt p1, v3, :cond_e

    .line 81
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    :cond_e
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_17

    .line 84
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    return v9

    .line 87
    :cond_17
    packed-switch p1, :pswitch_data_8c

    .line 153
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 148
    :pswitch_1f
    invoke-virtual {p0}, Landroid/media/IAudioPolicyServiceClient$Stub;->onVolumeRangeInitRequest()V

    .line 149
    goto :goto_8a

    .line 143
    :pswitch_23
    invoke-virtual {p0}, Landroid/media/IAudioPolicyServiceClient$Stub;->onRoutingUpdated()V

    .line 144
    goto :goto_8a

    .line 122
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 124
    sget-object v2, Landroid/media/RecordClientInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RecordClientInfo;

    .line 126
    sget-object v3, Landroid/media/audio/common/AudioConfigBase;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/audio/common/AudioConfigBase;

    .line 128
    sget-object v4, Landroid/media/EffectDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/media/EffectDescriptor;

    .line 130
    sget-object v5, Landroid/media/audio/common/AudioConfigBase;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/audio/common/AudioConfigBase;

    .line 132
    sget-object v6, Landroid/media/EffectDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/media/EffectDescriptor;

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    move v1, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/media/IAudioPolicyServiceClient$Stub;->onRecordingConfigurationUpdate(ILandroid/media/RecordClientInfo;Landroid/media/audio/common/AudioConfigBase;[Landroid/media/EffectDescriptor;Landroid/media/audio/common/AudioConfigBase;[Landroid/media/EffectDescriptor;II)V

    .line 139
    goto :goto_8a

    .line 112
    :pswitch_64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 116
    invoke-virtual {p0, v0, v3}, Landroid/media/IAudioPolicyServiceClient$Stub;->onDynamicPolicyMixStateUpdate(Ljava/lang/String;I)V

    .line 117
    goto :goto_8a

    .line 106
    :pswitch_73
    invoke-virtual {p0}, Landroid/media/IAudioPolicyServiceClient$Stub;->onAudioPatchListUpdate()V

    .line 107
    goto :goto_8a

    .line 101
    :pswitch_77
    invoke-virtual {p0}, Landroid/media/IAudioPolicyServiceClient$Stub;->onAudioPortListUpdate()V

    .line 102
    goto :goto_8a

    .line 92
    :pswitch_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 96
    invoke-virtual {p0, v0, v3}, Landroid/media/IAudioPolicyServiceClient$Stub;->onAudioVolumeGroupChanged(II)V

    .line 97
    nop

    .line 156
    :goto_8a
    return v9

    nop

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_7b
        :pswitch_77
        :pswitch_73
        :pswitch_64
        :pswitch_27
        :pswitch_23
        :pswitch_1f
    .end packed-switch
.end method
