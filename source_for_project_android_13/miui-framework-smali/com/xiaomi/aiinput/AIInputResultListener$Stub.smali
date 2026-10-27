.class public abstract Lcom/xiaomi/aiinput/AIInputResultListener$Stub;
.super Landroid/os/Binder;
.source "AIInputResultListener.java"

# interfaces
.implements Lcom/xiaomi/aiinput/AIInputResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/aiinput/AIInputResultListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/aiinput/AIInputResultListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onGetFocusedAITextInfo:I = 0x1

.field static final blacklist TRANSACTION_onHandleTextView:I = 0x2


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 27
    const-string v0, "com.xiaomi.aiinput.AIInputResultListener"

    invoke-virtual {p0, p0, v0}, Lcom/xiaomi/aiinput/AIInputResultListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static whitelist asInterface(Landroid/os/IBinder;)Lcom/xiaomi/aiinput/AIInputResultListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 35
    if-nez p0, :cond_4

    .line 36
    const/4 v0, 0x0

    return-object v0

    .line 38
    :cond_4
    const-string v0, "com.xiaomi.aiinput.AIInputResultListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 39
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/xiaomi/aiinput/AIInputResultListener;

    if-eqz v1, :cond_14

    .line 40
    move-object v1, v0

    check-cast v1, Lcom/xiaomi/aiinput/AIInputResultListener;

    return-object v1

    .line 42
    :cond_14
    new-instance v1, Lcom/xiaomi/aiinput/AIInputResultListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/xiaomi/aiinput/AIInputResultListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 46
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

    .line 50
    const-string v0, "com.xiaomi.aiinput.AIInputResultListener"

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
    packed-switch p1, :pswitch_data_44

    .line 62
    packed-switch p1, :pswitch_data_4a

    .line 87
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
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 79
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 80
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 81
    invoke-virtual {p0, v2, v3}, Lcom/xiaomi/aiinput/AIInputResultListener$Stub;->onHandleTextView(IZ)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    goto :goto_43

    .line 67
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_2e
    sget-object v2, Lcom/xiaomi/aiinput/AiTextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/aiinput/AiTextInfo;

    .line 68
    .local v2, "_arg0":Lcom/xiaomi/aiinput/AiTextInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 69
    invoke-virtual {p0, v2}, Lcom/xiaomi/aiinput/AIInputResultListener$Stub;->onGetFocusedAITextInfo(Lcom/xiaomi/aiinput/AiTextInfo;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 72
    nop

    .line 90
    .end local v2    # "_arg0":Lcom/xiaomi/aiinput/AiTextInfo;
    :goto_43
    return v1

    :pswitch_data_44
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_1c
    .end packed-switch
.end method
