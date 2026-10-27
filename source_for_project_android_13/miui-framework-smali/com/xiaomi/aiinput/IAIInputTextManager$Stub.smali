.class public abstract Lcom/xiaomi/aiinput/IAIInputTextManager$Stub;
.super Landroid/os/Binder;
.source "IAIInputTextManager.java"

# interfaces
.implements Lcom/xiaomi/aiinput/IAIInputTextManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/aiinput/IAIInputTextManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/aiinput/IAIInputTextManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addClient:I = 0x1

.field static final blacklist TRANSACTION_getAIInputTextClient:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "com.xiaomi.aiinput.IAIInputTextManager"

    invoke-virtual {p0, p0, v0}, Lcom/xiaomi/aiinput/IAIInputTextManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/xiaomi/aiinput/IAIInputTextManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 42
    if-nez p0, :cond_4

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_4
    const-string v0, "com.xiaomi.aiinput.IAIInputTextManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 46
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/xiaomi/aiinput/IAIInputTextManager;

    if-eqz v1, :cond_14

    .line 47
    move-object v1, v0

    check-cast v1, Lcom/xiaomi/aiinput/IAIInputTextManager;

    return-object v1

    .line 49
    :cond_14
    new-instance v1, Lcom/xiaomi/aiinput/IAIInputTextManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/xiaomi/aiinput/IAIInputTextManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 53
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    const-string v0, "com.xiaomi.aiinput.IAIInputTextManager"

    .line 58
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 59
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    :cond_d
    packed-switch p1, :pswitch_data_40

    .line 69
    packed-switch p1, :pswitch_data_46

    .line 92
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 65
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    return v1

    .line 85
    :pswitch_1c
    invoke-virtual {p0}, Lcom/xiaomi/aiinput/IAIInputTextManager$Stub;->getAIInputTextClient()Lcom/xiaomi/aiinput/IAIInputTextManagerClient;

    move-result-object v2

    .line 86
    .local v2, "_result":Lcom/xiaomi/aiinput/IAIInputTextManagerClient;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 88
    goto :goto_3e

    .line 74
    .end local v2    # "_result":Lcom/xiaomi/aiinput/IAIInputTextManagerClient;
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/aiinput/IAIInputTextManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/aiinput/IAIInputTextManagerClient;

    move-result-object v2

    .line 76
    .local v2, "_arg0":Lcom/xiaomi/aiinput/IAIInputTextManagerClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 80
    invoke-virtual {p0, v2, v3, v4}, Lcom/xiaomi/aiinput/IAIInputTextManager$Stub;->addClient(Lcom/xiaomi/aiinput/IAIInputTextManagerClient;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    nop

    .line 95
    .end local v2    # "_arg0":Lcom/xiaomi/aiinput/IAIInputTextManagerClient;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    :goto_3e
    return v1

    nop

    :pswitch_data_40
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_27
        :pswitch_1c
    .end packed-switch
.end method
