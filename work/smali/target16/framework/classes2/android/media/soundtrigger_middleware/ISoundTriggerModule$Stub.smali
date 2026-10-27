.class public abstract Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;
.super Landroid/os/Binder;
.source "ISoundTriggerModule.java"

# interfaces
.implements Landroid/media/soundtrigger_middleware/ISoundTriggerModule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_detach:I = 0xa

.field static final blacklist TRANSACTION_forceRecognitionEvent:I = 0x6

.field static final blacklist TRANSACTION_getModelParameter:I = 0x8

.field static final blacklist TRANSACTION_loadModel:I = 0x1

.field static final blacklist TRANSACTION_loadPhraseModel:I = 0x2

.field static final blacklist TRANSACTION_queryModelParameterSupport:I = 0x9

.field static final blacklist TRANSACTION_setModelParameter:I = 0x7

.field static final blacklist TRANSACTION_startRecognition:I = 0x4

.field static final blacklist TRANSACTION_stopRecognition:I = 0x5

.field static final blacklist TRANSACTION_unloadModel:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 168
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 169
    const-string v0, "android.media.soundtrigger_middleware.ISoundTriggerModule"

    invoke-virtual {p0, p0, v0}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    .registers 3

    .line 177
    if-nez p0, :cond_4

    .line 178
    const/4 p0, 0x0

    return-object p0

    .line 180
    :cond_4
    const-string v0, "android.media.soundtrigger_middleware.ISoundTriggerModule"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    if-eqz v1, :cond_13

    .line 182
    check-cast v0, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    return-object v0

    .line 184
    :cond_13
    new-instance v0, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 188
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 192
    nop

    .line 193
    const-string v0, "android.media.soundtrigger_middleware.ISoundTriggerModule"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 194
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 197
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    return v1

    .line 200
    :cond_17
    packed-switch p1, :pswitch_data_dc

    .line 306
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 300
    :pswitch_1f
    invoke-virtual {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;->detach()V

    .line 301
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    goto/16 :goto_db

    .line 289
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 293
    invoke-virtual {p0, p1, p4}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;->queryModelParameterSupport(II)Landroid/media/soundtrigger/ModelParameterRange;

    move-result-object p1

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 296
    goto/16 :goto_db

    .line 277
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    invoke-virtual {p0, p1, p4}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;->getModelParameter(II)I

    move-result p1

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    goto/16 :goto_db

    .line 264
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;->setModelParameter(III)V

    .line 271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    goto :goto_db

    .line 255
    :pswitch_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 257
    invoke-virtual {p0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;->forceRecognitionEvent(I)V

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    goto :goto_db

    .line 246
    :pswitch_79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {p0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;->stopRecognition(I)V

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    goto :goto_db

    .line 234
    :pswitch_87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 236
    sget-object p4, Landroid/media/soundtrigger/RecognitionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/media/soundtrigger/RecognitionConfig;

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 238
    invoke-virtual {p0, p1, p4}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;->startRecognition(ILandroid/media/soundtrigger/RecognitionConfig;)Landroid/os/IBinder;

    move-result-object p1

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 241
    goto :goto_db

    .line 225
    :pswitch_a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    invoke-virtual {p0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;->unloadModel(I)V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    goto :goto_db

    .line 215
    :pswitch_af
    sget-object p1, Landroid/media/soundtrigger/PhraseSoundModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/soundtrigger/PhraseSoundModel;

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {p0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;->loadPhraseModel(Landroid/media/soundtrigger/PhraseSoundModel;)I

    move-result p1

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    goto :goto_db

    .line 205
    :pswitch_c5
    sget-object p1, Landroid/media/soundtrigger/SoundModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/soundtrigger/SoundModel;

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {p0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;->loadModel(Landroid/media/soundtrigger/SoundModel;)I

    move-result p1

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    nop

    .line 309
    :goto_db
    return v1

    :pswitch_data_dc
    .packed-switch 0x1
        :pswitch_c5
        :pswitch_af
        :pswitch_a1
        :pswitch_87
        :pswitch_79
        :pswitch_6b
        :pswitch_55
        :pswitch_3e
        :pswitch_27
        :pswitch_1f
    .end packed-switch
.end method
