.class public abstract Lcom/android/ims/ImsConfigListener$Stub;
.super Landroid/os/Binder;
.source "ImsConfigListener.java"

# interfaces
.implements Lcom/android/ims/ImsConfigListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsConfigListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsConfigListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.ims.ImsConfigListener"

.field static final greylist-max-o TRANSACTION_onGetFeatureResponse:I = 0x1

.field static final greylist-max-o TRANSACTION_onGetVideoQuality:I = 0x3

.field static final greylist-max-o TRANSACTION_onSetFeatureResponse:I = 0x2

.field static final greylist-max-o TRANSACTION_onSetVideoQuality:I = 0x4


# direct methods
.method public constructor greylist-max-r <init>()V
    .registers 2

    .line 84
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 85
    const-string v0, "com.android.ims.ImsConfigListener"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/ImsConfigListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/ims/ImsConfigListener;
    .registers 3

    .line 93
    if-nez p0, :cond_4

    .line 94
    const/4 p0, 0x0

    return-object p0

    .line 96
    :cond_4
    const-string v0, "com.android.ims.ImsConfigListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/ims/ImsConfigListener;

    if-eqz v1, :cond_13

    .line 98
    check-cast v0, Lcom/android/ims/ImsConfigListener;

    return-object v0

    .line 100
    :cond_13
    new-instance v0, Lcom/android/ims/ImsConfigListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsConfigListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 109
    packed-switch p0, :pswitch_data_12

    .line 129
    const/4 p0, 0x0

    return-object p0

    .line 125
    :pswitch_5
    const-string p0, "onSetVideoQuality"

    return-object p0

    .line 121
    :pswitch_8
    const-string p0, "onGetVideoQuality"

    return-object p0

    .line 117
    :pswitch_b
    const-string p0, "onSetFeatureResponse"

    return-object p0

    .line 113
    :pswitch_e
    const-string p0, "onGetFeatureResponse"

    return-object p0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 104
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 325
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 136
    invoke-static {p1}, Lcom/android/ims/ImsConfigListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 140
    nop

    .line 141
    const-string v0, "com.android.ims.ImsConfigListener"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 142
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 145
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    return v1

    .line 148
    :cond_17
    packed-switch p1, :pswitch_data_68

    .line 198
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 191
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsConfigListener$Stub;->onSetVideoQuality(I)V

    .line 194
    goto :goto_67

    .line 181
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, p1, p3}, Lcom/android/ims/ImsConfigListener$Stub;->onGetVideoQuality(II)V

    .line 186
    goto :goto_67

    .line 167
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    invoke-virtual {p0, p1, p3, p4, v0}, Lcom/android/ims/ImsConfigListener$Stub;->onSetFeatureResponse(IIII)V

    .line 176
    goto :goto_67

    .line 153
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {p0, p1, p3, p4, v0}, Lcom/android/ims/ImsConfigListener$Stub;->onGetFeatureResponse(IIII)V

    .line 162
    nop

    .line 201
    :goto_67
    return v1

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_50
        :pswitch_39
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method
