.class public abstract Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub;
.super Landroid/os/Binder;
.source "ISoundTriggerInjection.java"

# interfaces
.implements Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onClientAttached:I = 0x4

.field static final blacklist TRANSACTION_onClientDetached:I = 0x5

.field static final blacklist TRANSACTION_onFrameworkDetached:I = 0x3

.field static final blacklist TRANSACTION_onParamSet:I = 0x7

.field static final blacklist TRANSACTION_onPreempted:I = 0xb

.field static final blacklist TRANSACTION_onRecognitionStarted:I = 0x8

.field static final blacklist TRANSACTION_onRecognitionStopped:I = 0x9

.field static final blacklist TRANSACTION_onRestarted:I = 0x2

.field static final blacklist TRANSACTION_onSoundModelLoaded:I = 0x6

.field static final blacklist TRANSACTION_onSoundModelUnloaded:I = 0xa

.field static final blacklist TRANSACTION_registerGlobalEventInjection:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 160
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 161
    const-string v0, "android.media.soundtrigger_middleware.ISoundTriggerInjection"

    invoke-virtual {p0, p0, v0}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;
    .registers 3

    .line 169
    if-nez p0, :cond_4

    .line 170
    const/4 p0, 0x0

    return-object p0

    .line 172
    :cond_4
    const-string v0, "android.media.soundtrigger_middleware.ISoundTriggerInjection"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    if-eqz v1, :cond_13

    .line 174
    check-cast v0, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    return-object v0

    .line 176
    :cond_13
    new-instance v0, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 180
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 184
    nop

    .line 185
    const-string v0, "android.media.soundtrigger_middleware.ISoundTriggerInjection"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 186
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 189
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    return v1

    .line 192
    :cond_17
    packed-switch p1, :pswitch_data_f2

    .line 299
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 294
    :pswitch_1f
    invoke-virtual {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub;->onPreempted()V

    .line 295
    goto/16 :goto_f1

    .line 287
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/soundtrigger_middleware/IInjectModelEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/IInjectModelEvent;

    move-result-object p1

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 289
    invoke-virtual {p0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub;->onSoundModelUnloaded(Landroid/media/soundtrigger_middleware/IInjectModelEvent;)V

    .line 290
    goto/16 :goto_f1

    .line 279
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;

    move-result-object p1

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    invoke-virtual {p0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub;->onRecognitionStopped(Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;)V

    .line 282
    goto/16 :goto_f1

    .line 265
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 267
    sget-object p3, Landroid/media/soundtrigger/RecognitionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/soundtrigger/RecognitionConfig;

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;

    move-result-object p4

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/soundtrigger_middleware/IInjectModelEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/IInjectModelEvent;

    move-result-object v0

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 273
    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub;->onRecognitionStarted(ILandroid/media/soundtrigger/RecognitionConfig;Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;Landroid/media/soundtrigger_middleware/IInjectModelEvent;)V

    .line 274
    goto/16 :goto_f1

    .line 253
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/media/soundtrigger_middleware/IInjectModelEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/IInjectModelEvent;

    move-result-object p4

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    invoke-virtual {p0, p1, p3, p4}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub;->onParamSet(IILandroid/media/soundtrigger_middleware/IInjectModelEvent;)V

    .line 260
    goto :goto_f1

    .line 239
    :pswitch_7f
    sget-object p1, Landroid/media/soundtrigger/SoundModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/soundtrigger/SoundModel;

    .line 241
    sget-object p3, Landroid/media/soundtrigger/Phrase;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/media/soundtrigger/Phrase;

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/media/soundtrigger_middleware/IInjectModelEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/IInjectModelEvent;

    move-result-object p4

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    move-result-object v0

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 247
    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub;->onSoundModelLoaded(Landroid/media/soundtrigger/SoundModel;[Landroid/media/soundtrigger/Phrase;Landroid/media/soundtrigger_middleware/IInjectModelEvent;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V

    .line 248
    goto :goto_f1

    .line 231
    :pswitch_a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 233
    invoke-virtual {p0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub;->onClientDetached(Landroid/os/IBinder;)V

    .line 234
    goto :goto_f1

    .line 221
    :pswitch_b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    move-result-object p3

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 225
    invoke-virtual {p0, p1, p3}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub;->onClientAttached(Landroid/os/IBinder;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V

    .line 226
    goto :goto_f1

    .line 213
    :pswitch_c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    move-result-object p1

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    invoke-virtual {p0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub;->onFrameworkDetached(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V

    .line 216
    goto :goto_f1

    .line 205
    :pswitch_d3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    move-result-object p1

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {p0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub;->onRestarted(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V

    .line 208
    goto :goto_f1

    .line 197
    :pswitch_e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    move-result-object p1

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {p0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub;->registerGlobalEventInjection(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V

    .line 200
    nop

    .line 302
    :goto_f1
    return v1

    :pswitch_data_f2
    .packed-switch 0x1
        :pswitch_e2
        :pswitch_d3
        :pswitch_c4
        :pswitch_b1
        :pswitch_a6
        :pswitch_7f
        :pswitch_68
        :pswitch_44
        :pswitch_34
        :pswitch_24
        :pswitch_1f
    .end packed-switch
.end method
