.class public abstract Landroid/app/timedetector/ITimeDetectorService$Stub;
.super Landroid/os/Binder;
.source "ITimeDetectorService.java"

# interfaces
.implements Landroid/app/timedetector/ITimeDetectorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/timedetector/ITimeDetectorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/timedetector/ITimeDetectorService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addListener:I = 0x2

.field static final blacklist TRANSACTION_confirmTime:I = 0x6

.field static final blacklist TRANSACTION_getCapabilitiesAndConfig:I = 0x1

.field static final blacklist TRANSACTION_getTimeState:I = 0x5

.field static final blacklist TRANSACTION_latestNetworkTime:I = 0xb

.field static final blacklist TRANSACTION_removeListener:I = 0x3

.field static final blacklist TRANSACTION_setManualTime:I = 0x7

.field static final blacklist TRANSACTION_suggestExternalTime:I = 0x8

.field static final blacklist TRANSACTION_suggestManualTime:I = 0x9

.field static final blacklist TRANSACTION_suggestTelephonyTime:I = 0xa

.field static final blacklist TRANSACTION_updateConfiguration:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 80
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 81
    const-string v0, "android.app.timedetector.ITimeDetectorService"

    invoke-virtual {p0, p0, v0}, Landroid/app/timedetector/ITimeDetectorService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/timedetector/ITimeDetectorService;
    .registers 3

    .line 89
    if-nez p0, :cond_4

    .line 90
    const/4 p0, 0x0

    return-object p0

    .line 92
    :cond_4
    const-string v0, "android.app.timedetector.ITimeDetectorService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/timedetector/ITimeDetectorService;

    if-eqz v1, :cond_13

    .line 94
    check-cast v0, Landroid/app/timedetector/ITimeDetectorService;

    return-object v0

    .line 96
    :cond_13
    new-instance v0, Landroid/app/timedetector/ITimeDetectorService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/timedetector/ITimeDetectorService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 105
    packed-switch p0, :pswitch_data_2e

    .line 153
    const/4 p0, 0x0

    return-object p0

    .line 149
    :pswitch_5
    const-string/jumbo p0, "latestNetworkTime"

    return-object p0

    .line 145
    :pswitch_9
    const-string/jumbo p0, "suggestTelephonyTime"

    return-object p0

    .line 141
    :pswitch_d
    const-string/jumbo p0, "suggestManualTime"

    return-object p0

    .line 137
    :pswitch_11
    const-string/jumbo p0, "suggestExternalTime"

    return-object p0

    .line 133
    :pswitch_15
    const-string/jumbo p0, "setManualTime"

    return-object p0

    .line 129
    :pswitch_19
    const-string p0, "confirmTime"

    return-object p0

    .line 125
    :pswitch_1c
    const-string p0, "getTimeState"

    return-object p0

    .line 121
    :pswitch_1f
    const-string/jumbo p0, "updateConfiguration"

    return-object p0

    .line 117
    :pswitch_23
    const-string/jumbo p0, "removeListener"

    return-object p0

    .line 113
    :pswitch_27
    const-string p0, "addListener"

    return-object p0

    .line 109
    :pswitch_2a
    const-string p0, "getCapabilitiesAndConfig"

    return-object p0

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_27
        :pswitch_23
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 100
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 491
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 160
    invoke-static {p1}, Landroid/app/timedetector/ITimeDetectorService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    nop

    .line 165
    const-string v0, "android.app.timedetector.ITimeDetectorService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 166
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 169
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    return v1

    .line 172
    :cond_17
    packed-switch p1, :pswitch_data_e6

    .line 273
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 266
    :pswitch_1f
    invoke-virtual {p0}, Landroid/app/timedetector/ITimeDetectorService$Stub;->latestNetworkTime()Landroid/app/time/UnixEpochTime;

    move-result-object p1

    .line 267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 269
    goto/16 :goto_e4

    .line 258
    :pswitch_2b
    sget-object p1, Landroid/app/timedetector/TelephonyTimeSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/timedetector/TelephonyTimeSuggestion;

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 260
    invoke-virtual {p0, p1}, Landroid/app/timedetector/ITimeDetectorService$Stub;->suggestTelephonyTime(Landroid/app/timedetector/TelephonyTimeSuggestion;)V

    .line 261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    goto/16 :goto_e4

    .line 248
    :pswitch_3e
    sget-object p1, Landroid/app/timedetector/ManualTimeSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/timedetector/ManualTimeSuggestion;

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    invoke-virtual {p0, p1}, Landroid/app/timedetector/ITimeDetectorService$Stub;->suggestManualTime(Landroid/app/timedetector/ManualTimeSuggestion;)Z

    move-result p1

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 253
    goto/16 :goto_e4

    .line 239
    :pswitch_55
    sget-object p1, Landroid/app/time/ExternalTimeSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/time/ExternalTimeSuggestion;

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 241
    invoke-virtual {p0, p1}, Landroid/app/timedetector/ITimeDetectorService$Stub;->suggestExternalTime(Landroid/app/time/ExternalTimeSuggestion;)V

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    goto/16 :goto_e4

    .line 229
    :pswitch_68
    sget-object p1, Landroid/app/timedetector/ManualTimeSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/timedetector/ManualTimeSuggestion;

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    invoke-virtual {p0, p1}, Landroid/app/timedetector/ITimeDetectorService$Stub;->setManualTime(Landroid/app/timedetector/ManualTimeSuggestion;)Z

    move-result p1

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 234
    goto :goto_e4

    .line 219
    :pswitch_7e
    sget-object p1, Landroid/app/time/UnixEpochTime;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/time/UnixEpochTime;

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 221
    invoke-virtual {p0, p1}, Landroid/app/timedetector/ITimeDetectorService$Stub;->confirmTime(Landroid/app/time/UnixEpochTime;)Z

    move-result p1

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 224
    goto :goto_e4

    .line 211
    :pswitch_94
    invoke-virtual {p0}, Landroid/app/timedetector/ITimeDetectorService$Stub;->getTimeState()Landroid/app/time/TimeState;

    move-result-object p1

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 214
    goto :goto_e4

    .line 202
    :pswitch_9f
    sget-object p1, Landroid/app/time/TimeConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/time/TimeConfiguration;

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-virtual {p0, p1}, Landroid/app/timedetector/ITimeDetectorService$Stub;->updateConfiguration(Landroid/app/time/TimeConfiguration;)Z

    move-result p1

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 207
    goto :goto_e4

    .line 193
    :pswitch_b5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/time/ITimeDetectorListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/time/ITimeDetectorListener;

    move-result-object p1

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    invoke-virtual {p0, p1}, Landroid/app/timedetector/ITimeDetectorService$Stub;->removeListener(Landroid/app/time/ITimeDetectorListener;)V

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    goto :goto_e4

    .line 184
    :pswitch_c7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/time/ITimeDetectorListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/time/ITimeDetectorListener;

    move-result-object p1

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-virtual {p0, p1}, Landroid/app/timedetector/ITimeDetectorService$Stub;->addListener(Landroid/app/time/ITimeDetectorListener;)V

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    goto :goto_e4

    .line 176
    :pswitch_d9
    invoke-virtual {p0}, Landroid/app/timedetector/ITimeDetectorService$Stub;->getCapabilitiesAndConfig()Landroid/app/time/TimeCapabilitiesAndConfig;

    move-result-object p1

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 179
    nop

    .line 276
    :goto_e4
    return v1

    nop

    :pswitch_data_e6
    .packed-switch 0x1
        :pswitch_d9
        :pswitch_c7
        :pswitch_b5
        :pswitch_9f
        :pswitch_94
        :pswitch_7e
        :pswitch_68
        :pswitch_55
        :pswitch_3e
        :pswitch_2b
        :pswitch_1f
    .end packed-switch
.end method
