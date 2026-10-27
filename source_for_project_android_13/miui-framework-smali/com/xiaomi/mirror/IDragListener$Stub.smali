.class public abstract Lcom/xiaomi/mirror/IDragListener$Stub;
.super Landroid/os/Binder;
.source "IDragListener.java"

# interfaces
.implements Lcom/xiaomi/mirror/IDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/IDragListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mirror/IDragListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onDragFinish:I = 0x2

.field static final blacklist TRANSACTION_onDragStart:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 28
    const-string v0, "com.xiaomi.mirror.IDragListener"

    invoke-virtual {p0, p0, v0}, Lcom/xiaomi/mirror/IDragListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/xiaomi/mirror/IDragListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 36
    if-nez p0, :cond_4

    .line 37
    const/4 v0, 0x0

    return-object v0

    .line 39
    :cond_4
    const-string v0, "com.xiaomi.mirror.IDragListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 40
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/xiaomi/mirror/IDragListener;

    if-eqz v1, :cond_14

    .line 41
    move-object v1, v0

    check-cast v1, Lcom/xiaomi/mirror/IDragListener;

    return-object v1

    .line 43
    :cond_14
    new-instance v1, Lcom/xiaomi/mirror/IDragListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/xiaomi/mirror/IDragListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 47
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 22
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    move/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "com.xiaomi.mirror.IDragListener"

    .line 52
    .local v2, "descriptor":Ljava/lang/String;
    const/4 v3, 0x1

    if-lt v0, v3, :cond_11

    const v4, 0xffffff

    if-gt v0, v4, :cond_11

    .line 53
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    :cond_11
    packed-switch v0, :pswitch_data_68

    .line 63
    move-object/from16 v4, p3

    packed-switch v0, :pswitch_data_6e

    .line 93
    move-object/from16 v13, p0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 59
    :pswitch_20
    move-object/from16 v4, p3

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    return v3

    .line 84
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 86
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 87
    .local v6, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 88
    move-object/from16 v13, p0

    invoke-virtual {v13, v5, v6}, Lcom/xiaomi/mirror/IDragListener$Stub;->onDragFinish(Ljava/lang/String;Z)V

    .line 89
    goto :goto_66

    .line 68
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Z
    :pswitch_37
    move-object/from16 v13, p0

    sget-object v5, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ClipData;

    .line 70
    .local v5, "_arg0":Landroid/content/ClipData;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 72
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 74
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 76
    .local v15, "_arg3":I
    sget-object v7, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v16, v7

    check-cast v16, Landroid/graphics/Bitmap;

    .line 77
    .local v16, "_arg4":Landroid/graphics/Bitmap;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 78
    move-object/from16 v7, p0

    move-object v8, v5

    move v9, v6

    move v10, v14

    move v11, v15

    move-object/from16 v12, v16

    invoke-virtual/range {v7 .. v12}, Lcom/xiaomi/mirror/IDragListener$Stub;->onDragStart(Landroid/content/ClipData;IIILandroid/graphics/Bitmap;)V

    .line 79
    nop

    .line 96
    .end local v5    # "_arg0":Landroid/content/ClipData;
    .end local v6    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Landroid/graphics/Bitmap;
    :goto_66
    return v3

    nop

    :pswitch_data_68
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_37
        :pswitch_26
    .end packed-switch
.end method
