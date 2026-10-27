.class public abstract Lcom/miui/mishare/IMiShareListener$Stub;
.super Landroid/os/Binder;
.source "IMiShareListener.java"

# interfaces
.implements Lcom/miui/mishare/IMiShareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/mishare/IMiShareListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/mishare/IMiShareListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onTaskFinish:I = 0x4

.field static final blacklist TRANSACTION_onTaskProgress:I = 0x3

.field static final blacklist TRANSACTION_onTaskReceived:I = 0x1

.field static final blacklist TRANSACTION_onTaskStart:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 33
    const-string v0, "com.miui.mishare.IMiShareListener"

    invoke-virtual {p0, p0, v0}, Lcom/miui/mishare/IMiShareListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/miui/mishare/IMiShareListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 41
    if-nez p0, :cond_4

    .line 42
    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_4
    const-string v0, "com.miui.mishare.IMiShareListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 45
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/miui/mishare/IMiShareListener;

    if-eqz v1, :cond_14

    .line 46
    move-object v1, v0

    check-cast v1, Lcom/miui/mishare/IMiShareListener;

    return-object v1

    .line 48
    :cond_14
    new-instance v1, Lcom/miui/mishare/IMiShareListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/mishare/IMiShareListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 52
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

    .line 56
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    const-string v9, "com.miui.mishare.IMiShareListener"

    .line 57
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v7, v10, :cond_13

    const v0, 0xffffff

    if-gt v7, v0, :cond_13

    .line 58
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    :cond_13
    packed-switch v7, :pswitch_data_76

    .line 68
    move-object/from16 v11, p3

    packed-switch v7, :pswitch_data_7c

    .line 110
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 64
    :pswitch_20
    move-object/from16 v11, p3

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    return v10

    .line 101
    :pswitch_26
    sget-object v0, Lcom/miui/mishare/MiShareTask;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/mishare/MiShareTask;

    .line 103
    .local v0, "_arg0":Lcom/miui/mishare/MiShareTask;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 104
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 105
    invoke-virtual {v6, v0, v1}, Lcom/miui/mishare/IMiShareListener$Stub;->onTaskFinish(Lcom/miui/mishare/MiShareTask;I)V

    .line 106
    goto :goto_74

    .line 89
    .end local v0    # "_arg0":Lcom/miui/mishare/MiShareTask;
    .end local v1    # "_arg1":I
    :pswitch_39
    sget-object v0, Lcom/miui/mishare/MiShareTask;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/miui/mishare/MiShareTask;

    .line 91
    .local v12, "_arg0":Lcom/miui/mishare/MiShareTask;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 93
    .local v13, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 94
    .local v15, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 95
    move-object/from16 v0, p0

    move-object v1, v12

    move-wide v2, v13

    move-wide v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/miui/mishare/IMiShareListener$Stub;->onTaskProgress(Lcom/miui/mishare/MiShareTask;JJ)V

    .line 96
    goto :goto_74

    .line 81
    .end local v12    # "_arg0":Lcom/miui/mishare/MiShareTask;
    .end local v13    # "_arg1":J
    .end local v15    # "_arg2":J
    :pswitch_56
    sget-object v0, Lcom/miui/mishare/MiShareTask;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/mishare/MiShareTask;

    .line 82
    .restart local v0    # "_arg0":Lcom/miui/mishare/MiShareTask;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 83
    invoke-virtual {v6, v0}, Lcom/miui/mishare/IMiShareListener$Stub;->onTaskStart(Lcom/miui/mishare/MiShareTask;)V

    .line 84
    goto :goto_74

    .line 73
    .end local v0    # "_arg0":Lcom/miui/mishare/MiShareTask;
    :pswitch_65
    sget-object v0, Lcom/miui/mishare/MiShareTask;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/mishare/MiShareTask;

    .line 74
    .restart local v0    # "_arg0":Lcom/miui/mishare/MiShareTask;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 75
    invoke-virtual {v6, v0}, Lcom/miui/mishare/IMiShareListener$Stub;->onTaskReceived(Lcom/miui/mishare/MiShareTask;)V

    .line 76
    nop

    .line 113
    .end local v0    # "_arg0":Lcom/miui/mishare/MiShareTask;
    :goto_74
    return v10

    nop

    :pswitch_data_76
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_65
        :pswitch_56
        :pswitch_39
        :pswitch_26
    .end packed-switch
.end method
