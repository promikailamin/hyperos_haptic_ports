.class public abstract Lcom/miui/mishare/IMiShareDetailProgressListener$Stub;
.super Landroid/os/Binder;
.source "IMiShareDetailProgressListener.java"

# interfaces
.implements Lcom/miui/mishare/IMiShareDetailProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/mishare/IMiShareDetailProgressListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/mishare/IMiShareDetailProgressListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onProgress:I = 0x1

.field static final blacklist TRANSACTION_setComplete:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 27
    const-string v0, "com.miui.mishare.IMiShareDetailProgressListener"

    invoke-virtual {p0, p0, v0}, Lcom/miui/mishare/IMiShareDetailProgressListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/miui/mishare/IMiShareDetailProgressListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 35
    if-nez p0, :cond_4

    .line 36
    const/4 v0, 0x0

    return-object v0

    .line 38
    :cond_4
    const-string v0, "com.miui.mishare.IMiShareDetailProgressListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 39
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/miui/mishare/IMiShareDetailProgressListener;

    if-eqz v1, :cond_14

    .line 40
    move-object v1, v0

    check-cast v1, Lcom/miui/mishare/IMiShareDetailProgressListener;

    return-object v1

    .line 42
    :cond_14
    new-instance v1, Lcom/miui/mishare/IMiShareDetailProgressListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/mishare/IMiShareDetailProgressListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 46
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    const-string v0, "com.miui.mishare.IMiShareDetailProgressListener"

    .line 51
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 52
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    :cond_d
    packed-switch p1, :pswitch_data_36

    .line 62
    packed-switch p1, :pswitch_data_3c

    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 58
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    return v1

    .line 77
    :pswitch_1c
    invoke-virtual {p0}, Lcom/miui/mishare/IMiShareDetailProgressListener$Stub;->setComplete()V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    goto :goto_35

    .line 67
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 69
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 70
    .local v4, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 71
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/miui/mishare/IMiShareDetailProgressListener$Stub;->onProgress(JJ)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    nop

    .line 86
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":J
    :goto_35
    return v1

    :pswitch_data_36
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_23
        :pswitch_1c
    .end packed-switch
.end method
