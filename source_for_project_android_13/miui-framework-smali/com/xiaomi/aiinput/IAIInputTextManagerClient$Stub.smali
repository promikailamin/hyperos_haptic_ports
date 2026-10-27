.class public abstract Lcom/xiaomi/aiinput/IAIInputTextManagerClient$Stub;
.super Landroid/os/Binder;
.source "IAIInputTextManagerClient.java"

# interfaces
.implements Lcom/xiaomi/aiinput/IAIInputTextManagerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/aiinput/IAIInputTextManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/aiinput/IAIInputTextManagerClient$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getFocusedAITextInfo:I = 0x1

.field static final blacklist TRANSACTION_insertFocusedAIText:I = 0x3

.field static final blacklist TRANSACTION_setFocusedAIText:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 36
    const-string v0, "com.xiaomi.aiinput.IAIInputTextManagerClient"

    invoke-virtual {p0, p0, v0}, Lcom/xiaomi/aiinput/IAIInputTextManagerClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/xiaomi/aiinput/IAIInputTextManagerClient;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 44
    if-nez p0, :cond_4

    .line 45
    const/4 v0, 0x0

    return-object v0

    .line 47
    :cond_4
    const-string v0, "com.xiaomi.aiinput.IAIInputTextManagerClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 48
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/xiaomi/aiinput/IAIInputTextManagerClient;

    if-eqz v1, :cond_14

    .line 49
    move-object v1, v0

    check-cast v1, Lcom/xiaomi/aiinput/IAIInputTextManagerClient;

    return-object v1

    .line 51
    :cond_14
    new-instance v1, Lcom/xiaomi/aiinput/IAIInputTextManagerClient$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/xiaomi/aiinput/IAIInputTextManagerClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 55
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

    .line 59
    const-string v0, "com.xiaomi.aiinput.IAIInputTextManagerClient"

    .line 60
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 61
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    :cond_d
    packed-switch p1, :pswitch_data_52

    .line 71
    packed-switch p1, :pswitch_data_58

    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 67
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    return v1

    .line 94
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/aiinput/AIInputResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/aiinput/AIInputResultListener;

    move-result-object v3

    .line 97
    .local v3, "_arg1":Lcom/xiaomi/aiinput/AIInputResultListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 98
    invoke-virtual {p0, v2, v3}, Lcom/xiaomi/aiinput/IAIInputTextManagerClient$Stub;->insertFocusedAIText(Ljava/lang/String;Lcom/xiaomi/aiinput/AIInputResultListener;)V

    .line 99
    goto :goto_51

    .line 84
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/xiaomi/aiinput/AIInputResultListener;
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 86
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/aiinput/AIInputResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/aiinput/AIInputResultListener;

    move-result-object v3

    .line 87
    .restart local v3    # "_arg1":Lcom/xiaomi/aiinput/AIInputResultListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 88
    invoke-virtual {p0, v2, v3}, Lcom/xiaomi/aiinput/IAIInputTextManagerClient$Stub;->setFocusedAIText(Ljava/lang/String;Lcom/xiaomi/aiinput/AIInputResultListener;)V

    .line 89
    goto :goto_51

    .line 76
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/xiaomi/aiinput/AIInputResultListener;
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/aiinput/AIInputResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/aiinput/AIInputResultListener;

    move-result-object v2

    .line 77
    .local v2, "_arg0":Lcom/xiaomi/aiinput/AIInputResultListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 78
    invoke-virtual {p0, v2}, Lcom/xiaomi/aiinput/IAIInputTextManagerClient$Stub;->getFocusedAITextInfo(Lcom/xiaomi/aiinput/AIInputResultListener;)V

    .line 79
    nop

    .line 106
    .end local v2    # "_arg0":Lcom/xiaomi/aiinput/AIInputResultListener;
    :goto_51
    return v1

    :pswitch_data_52
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_42
        :pswitch_2f
        :pswitch_1c
    .end packed-switch
.end method
