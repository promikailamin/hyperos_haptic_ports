.class public abstract Lcom/miui/mishare/IMiShareService$Stub;
.super Landroid/os/Binder;
.source "IMiShareService.java"

# interfaces
.implements Lcom/miui/mishare/IMiShareService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/mishare/IMiShareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/mishare/IMiShareService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cancel:I = 0xa

.field static final blacklist TRANSACTION_closeScreenThrow:I = 0x13

.field static final blacklist TRANSACTION_disable:I = 0x5

.field static final blacklist TRANSACTION_discover:I = 0x6

.field static final blacklist TRANSACTION_discoverWithIntent:I = 0x7

.field static final blacklist TRANSACTION_enable:I = 0x4

.field static final blacklist TRANSACTION_getState:I = 0x1

.field static final blacklist TRANSACTION_getThumbnail:I = 0xf

.field static final blacklist TRANSACTION_openScreenThrow:I = 0x12

.field static final blacklist TRANSACTION_receive:I = 0xd

.field static final blacklist TRANSACTION_refuse:I = 0xe

.field static final blacklist TRANSACTION_registerScreenThrowListener:I = 0x10

.field static final blacklist TRANSACTION_registerStateListener:I = 0x2

.field static final blacklist TRANSACTION_registerTaskStateListener:I = 0xb

.field static final blacklist TRANSACTION_send:I = 0x9

.field static final blacklist TRANSACTION_stopDiscover:I = 0x8

.field static final blacklist TRANSACTION_unregisterScreenThrowListener:I = 0x11

.field static final blacklist TRANSACTION_unregisterStateListener:I = 0x3

.field static final blacklist TRANSACTION_unregisterTaskStateListener:I = 0xc


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 78
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 79
    const-string v0, "com.miui.mishare.IMiShareService"

    invoke-virtual {p0, p0, v0}, Lcom/miui/mishare/IMiShareService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/miui/mishare/IMiShareService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 87
    if-nez p0, :cond_4

    .line 88
    const/4 v0, 0x0

    return-object v0

    .line 90
    :cond_4
    const-string v0, "com.miui.mishare.IMiShareService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 91
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/miui/mishare/IMiShareService;

    if-eqz v1, :cond_14

    .line 92
    move-object v1, v0

    check-cast v1, Lcom/miui/mishare/IMiShareService;

    return-object v1

    .line 94
    :cond_14
    new-instance v1, Lcom/miui/mishare/IMiShareService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/mishare/IMiShareService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 98
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    const-string v0, "com.miui.mishare.IMiShareService"

    .line 103
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 104
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    :cond_d
    packed-switch p1, :pswitch_data_11a

    .line 114
    packed-switch p1, :pswitch_data_120

    .line 258
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 110
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    return v1

    .line 253
    :pswitch_1c
    invoke-virtual {p0}, Lcom/miui/mishare/IMiShareService$Stub;->closeScreenThrow()V

    .line 254
    goto/16 :goto_118

    .line 248
    :pswitch_21
    invoke-virtual {p0}, Lcom/miui/mishare/IMiShareService$Stub;->openScreenThrow()V

    .line 249
    goto/16 :goto_118

    .line 243
    :pswitch_26
    invoke-virtual {p0}, Lcom/miui/mishare/IMiShareService$Stub;->unregisterScreenThrowListener()V

    .line 244
    goto/16 :goto_118

    .line 236
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/mishare/IScreenThrowListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/mishare/IScreenThrowListener;

    move-result-object v2

    .line 237
    .local v2, "_arg0":Lcom/miui/mishare/IScreenThrowListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 238
    invoke-virtual {p0, v2}, Lcom/miui/mishare/IMiShareService$Stub;->registerScreenThrowListener(Lcom/miui/mishare/IScreenThrowListener;)V

    .line 239
    goto/16 :goto_118

    .line 226
    .end local v2    # "_arg0":Lcom/miui/mishare/IScreenThrowListener;
    :pswitch_3b
    sget-object v2, Lcom/miui/mishare/MiShareTask;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/mishare/MiShareTask;

    .line 228
    .local v2, "_arg0":Lcom/miui/mishare/MiShareTask;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/mishare/IThumbnailCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/mishare/IThumbnailCallback;

    move-result-object v3

    .line 229
    .local v3, "_arg1":Lcom/miui/mishare/IThumbnailCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 230
    invoke-virtual {p0, v2, v3}, Lcom/miui/mishare/IMiShareService$Stub;->getThumbnail(Lcom/miui/mishare/MiShareTask;Lcom/miui/mishare/IThumbnailCallback;)V

    .line 231
    goto/16 :goto_118

    .line 218
    .end local v2    # "_arg0":Lcom/miui/mishare/MiShareTask;
    .end local v3    # "_arg1":Lcom/miui/mishare/IThumbnailCallback;
    :pswitch_53
    sget-object v2, Lcom/miui/mishare/MiShareTask;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/mishare/MiShareTask;

    .line 219
    .restart local v2    # "_arg0":Lcom/miui/mishare/MiShareTask;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 220
    invoke-virtual {p0, v2}, Lcom/miui/mishare/IMiShareService$Stub;->refuse(Lcom/miui/mishare/MiShareTask;)V

    .line 221
    goto/16 :goto_118

    .line 210
    .end local v2    # "_arg0":Lcom/miui/mishare/MiShareTask;
    :pswitch_63
    sget-object v2, Lcom/miui/mishare/MiShareTask;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/mishare/MiShareTask;

    .line 211
    .restart local v2    # "_arg0":Lcom/miui/mishare/MiShareTask;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {p0, v2}, Lcom/miui/mishare/IMiShareService$Stub;->receive(Lcom/miui/mishare/MiShareTask;)V

    .line 213
    goto/16 :goto_118

    .line 202
    .end local v2    # "_arg0":Lcom/miui/mishare/MiShareTask;
    :pswitch_73
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/mishare/IMiShareTaskStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/mishare/IMiShareTaskStateListener;

    move-result-object v2

    .line 203
    .local v2, "_arg0":Lcom/miui/mishare/IMiShareTaskStateListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-virtual {p0, v2}, Lcom/miui/mishare/IMiShareService$Stub;->unregisterTaskStateListener(Lcom/miui/mishare/IMiShareTaskStateListener;)V

    .line 205
    goto/16 :goto_118

    .line 194
    .end local v2    # "_arg0":Lcom/miui/mishare/IMiShareTaskStateListener;
    :pswitch_83
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/mishare/IMiShareTaskStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/mishare/IMiShareTaskStateListener;

    move-result-object v2

    .line 195
    .restart local v2    # "_arg0":Lcom/miui/mishare/IMiShareTaskStateListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {p0, v2}, Lcom/miui/mishare/IMiShareService$Stub;->registerTaskStateListener(Lcom/miui/mishare/IMiShareTaskStateListener;)V

    .line 197
    goto/16 :goto_118

    .line 186
    .end local v2    # "_arg0":Lcom/miui/mishare/IMiShareTaskStateListener;
    :pswitch_93
    sget-object v2, Lcom/miui/mishare/MiShareTask;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/mishare/MiShareTask;

    .line 187
    .local v2, "_arg0":Lcom/miui/mishare/MiShareTask;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 188
    invoke-virtual {p0, v2}, Lcom/miui/mishare/IMiShareService$Stub;->cancel(Lcom/miui/mishare/MiShareTask;)V

    .line 189
    goto/16 :goto_118

    .line 178
    .end local v2    # "_arg0":Lcom/miui/mishare/MiShareTask;
    :pswitch_a3
    sget-object v2, Lcom/miui/mishare/MiShareTask;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/mishare/MiShareTask;

    .line 179
    .restart local v2    # "_arg0":Lcom/miui/mishare/MiShareTask;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 180
    invoke-virtual {p0, v2}, Lcom/miui/mishare/IMiShareService$Stub;->send(Lcom/miui/mishare/MiShareTask;)V

    .line 181
    goto :goto_118

    .line 170
    .end local v2    # "_arg0":Lcom/miui/mishare/MiShareTask;
    :pswitch_b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/mishare/IMiShareDiscoverCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/mishare/IMiShareDiscoverCallback;

    move-result-object v2

    .line 171
    .local v2, "_arg0":Lcom/miui/mishare/IMiShareDiscoverCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 172
    invoke-virtual {p0, v2}, Lcom/miui/mishare/IMiShareService$Stub;->stopDiscover(Lcom/miui/mishare/IMiShareDiscoverCallback;)V

    .line 173
    goto :goto_118

    .line 160
    .end local v2    # "_arg0":Lcom/miui/mishare/IMiShareDiscoverCallback;
    :pswitch_c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/mishare/IMiShareDiscoverCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/mishare/IMiShareDiscoverCallback;

    move-result-object v2

    .line 162
    .restart local v2    # "_arg0":Lcom/miui/mishare/IMiShareDiscoverCallback;
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 163
    .local v3, "_arg1":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    invoke-virtual {p0, v2, v3}, Lcom/miui/mishare/IMiShareService$Stub;->discoverWithIntent(Lcom/miui/mishare/IMiShareDiscoverCallback;Landroid/content/Intent;)V

    .line 165
    goto :goto_118

    .line 152
    .end local v2    # "_arg0":Lcom/miui/mishare/IMiShareDiscoverCallback;
    .end local v3    # "_arg1":Landroid/content/Intent;
    :pswitch_d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/mishare/IMiShareDiscoverCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/mishare/IMiShareDiscoverCallback;

    move-result-object v2

    .line 153
    .restart local v2    # "_arg0":Lcom/miui/mishare/IMiShareDiscoverCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    invoke-virtual {p0, v2}, Lcom/miui/mishare/IMiShareService$Stub;->discover(Lcom/miui/mishare/IMiShareDiscoverCallback;)V

    .line 155
    goto :goto_118

    .line 146
    .end local v2    # "_arg0":Lcom/miui/mishare/IMiShareDiscoverCallback;
    :pswitch_e7
    invoke-virtual {p0}, Lcom/miui/mishare/IMiShareService$Stub;->disable()V

    .line 147
    goto :goto_118

    .line 141
    :pswitch_eb
    invoke-virtual {p0}, Lcom/miui/mishare/IMiShareService$Stub;->enable()V

    .line 142
    goto :goto_118

    .line 134
    :pswitch_ef
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/mishare/IMiShareStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/mishare/IMiShareStateListener;

    move-result-object v2

    .line 135
    .local v2, "_arg0":Lcom/miui/mishare/IMiShareStateListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    invoke-virtual {p0, v2}, Lcom/miui/mishare/IMiShareService$Stub;->unregisterStateListener(Lcom/miui/mishare/IMiShareStateListener;)V

    .line 137
    goto :goto_118

    .line 126
    .end local v2    # "_arg0":Lcom/miui/mishare/IMiShareStateListener;
    :pswitch_fe
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/mishare/IMiShareStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/mishare/IMiShareStateListener;

    move-result-object v2

    .line 127
    .restart local v2    # "_arg0":Lcom/miui/mishare/IMiShareStateListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {p0, v2}, Lcom/miui/mishare/IMiShareService$Stub;->registerStateListener(Lcom/miui/mishare/IMiShareStateListener;)V

    .line 129
    goto :goto_118

    .line 118
    .end local v2    # "_arg0":Lcom/miui/mishare/IMiShareStateListener;
    :pswitch_10d
    invoke-virtual {p0}, Lcom/miui/mishare/IMiShareService$Stub;->getState()I

    move-result v2

    .line 119
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    nop

    .line 261
    .end local v2    # "_result":I
    :goto_118
    return v1

    nop

    :pswitch_data_11a
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_120
    .packed-switch 0x1
        :pswitch_10d
        :pswitch_fe
        :pswitch_ef
        :pswitch_eb
        :pswitch_e7
        :pswitch_d8
        :pswitch_c1
        :pswitch_b2
        :pswitch_a3
        :pswitch_93
        :pswitch_83
        :pswitch_73
        :pswitch_63
        :pswitch_53
        :pswitch_3b
        :pswitch_2b
        :pswitch_26
        :pswitch_21
        :pswitch_1c
    .end packed-switch
.end method
