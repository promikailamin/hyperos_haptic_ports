.class public abstract Lcom/xiaomi/mirror/IMirrorDelegate$Stub;
.super Landroid/os/Binder;
.source "IMirrorDelegate.java"

# interfaces
.implements Lcom/xiaomi/mirror/IMirrorDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/IMirrorDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mirror/IMirrorDelegate$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onAcceptableChanged:I = 0x5

.field static final blacklist TRANSACTION_onDelegatePermissionReleased:I = 0x6

.field static final blacklist TRANSACTION_onDragResult:I = 0x3

.field static final blacklist TRANSACTION_onDragStart:I = 0x1

.field static final blacklist TRANSACTION_onPointerIconChanged:I = 0x8

.field static final blacklist TRANSACTION_onRemoteMenuActionCall:I = 0x7

.field static final blacklist TRANSACTION_onShadowChanged:I = 0x4

.field static final blacklist TRANSACTION_tryToShareDrag:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 47
    const-string v0, "com.xiaomi.mirror.IMirrorDelegate"

    invoke-virtual {p0, p0, v0}, Lcom/xiaomi/mirror/IMirrorDelegate$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/xiaomi/mirror/IMirrorDelegate;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 55
    if-nez p0, :cond_4

    .line 56
    const/4 v0, 0x0

    return-object v0

    .line 58
    :cond_4
    const-string v0, "com.xiaomi.mirror.IMirrorDelegate"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 59
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/xiaomi/mirror/IMirrorDelegate;

    if-eqz v1, :cond_14

    .line 60
    move-object v1, v0

    check-cast v1, Lcom/xiaomi/mirror/IMirrorDelegate;

    return-object v1

    .line 62
    :cond_14
    new-instance v1, Lcom/xiaomi/mirror/IMirrorDelegate$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/xiaomi/mirror/IMirrorDelegate$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 66
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

    .line 70
    const-string v0, "com.xiaomi.mirror.IMirrorDelegate"

    .line 71
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 72
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    :cond_d
    packed-switch p1, :pswitch_data_b4

    .line 82
    packed-switch p1, :pswitch_data_ba

    .line 168
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 78
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    return v1

    .line 159
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 161
    .local v2, "_arg0":I
    sget-object v3, Landroid/view/PointerIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/PointerIcon;

    .line 162
    .local v3, "_arg1":Landroid/view/PointerIcon;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 163
    invoke-virtual {p0, v2, v3}, Lcom/xiaomi/mirror/IMirrorDelegate$Stub;->onPointerIconChanged(ILandroid/view/PointerIcon;)V

    .line 164
    goto/16 :goto_b2

    .line 149
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/view/PointerIcon;
    :pswitch_30
    sget-object v2, Lcom/xiaomi/mirror/MirrorMenu;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/mirror/MirrorMenu;

    .line 151
    .local v2, "_arg0":Lcom/xiaomi/mirror/MirrorMenu;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 152
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-virtual {p0, v2, v3}, Lcom/xiaomi/mirror/IMirrorDelegate$Stub;->onRemoteMenuActionCall(Lcom/xiaomi/mirror/MirrorMenu;I)V

    .line 154
    goto :goto_b2

    .line 141
    .end local v2    # "_arg0":Lcom/xiaomi/mirror/MirrorMenu;
    .end local v3    # "_arg1":I
    :pswitch_43
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 142
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    invoke-virtual {p0, v2}, Lcom/xiaomi/mirror/IMirrorDelegate$Stub;->onDelegatePermissionReleased(Ljava/util/List;)V

    .line 144
    goto :goto_b2

    .line 131
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 133
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 134
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    invoke-virtual {p0, v2, v3}, Lcom/xiaomi/mirror/IMirrorDelegate$Stub;->onAcceptableChanged(IZ)V

    .line 136
    goto :goto_b2

    .line 123
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_5f
    sget-object v2, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 124
    .local v2, "_arg0":Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 125
    invoke-virtual {p0, v2}, Lcom/xiaomi/mirror/IMirrorDelegate$Stub;->onShadowChanged(Landroid/graphics/Bitmap;)V

    .line 126
    goto :goto_b2

    .line 115
    .end local v2    # "_arg0":Landroid/graphics/Bitmap;
    :pswitch_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 116
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 117
    invoke-virtual {p0, v2}, Lcom/xiaomi/mirror/IMirrorDelegate$Stub;->onDragResult(Z)V

    .line 118
    goto :goto_b2

    .line 101
    .end local v2    # "_arg0":Z
    :pswitch_79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 105
    .local v3, "_arg1":I
    sget-object v4, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ClipData;

    .line 106
    .local v4, "_arg2":Landroid/content/ClipData;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 107
    invoke-virtual {p0, v2, v3, v4}, Lcom/xiaomi/mirror/IMirrorDelegate$Stub;->tryToShareDrag(Ljava/lang/String;ILandroid/content/ClipData;)Z

    move-result v5

    .line 108
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 110
    goto :goto_b2

    .line 87
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/content/ClipData;
    .end local v5    # "_result":Z
    :pswitch_97
    sget-object v2, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipData;

    .line 89
    .local v2, "_arg0":Landroid/content/ClipData;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 91
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 93
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 94
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 95
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/xiaomi/mirror/IMirrorDelegate$Stub;->onDragStart(Landroid/content/ClipData;III)V

    .line 96
    nop

    .line 171
    .end local v2    # "_arg0":Landroid/content/ClipData;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :goto_b2
    return v1

    nop

    :pswitch_data_b4
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_97
        :pswitch_79
        :pswitch_6e
        :pswitch_5f
        :pswitch_50
        :pswitch_43
        :pswitch_30
        :pswitch_1c
    .end packed-switch
.end method
