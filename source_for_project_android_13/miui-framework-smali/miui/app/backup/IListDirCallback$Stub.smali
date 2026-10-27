.class public abstract Lmiui/app/backup/IListDirCallback$Stub;
.super Landroid/os/Binder;
.source "IListDirCallback.java"

# interfaces
.implements Lmiui/app/backup/IListDirCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/backup/IListDirCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/backup/IListDirCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onListDataDirEnd:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    const-string v0, "miui.app.backup.IListDirCallback"

    invoke-virtual {p0, p0, v0}, Lmiui/app/backup/IListDirCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lmiui/app/backup/IListDirCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 33
    if-nez p0, :cond_4

    .line 34
    const/4 v0, 0x0

    return-object v0

    .line 36
    :cond_4
    const-string v0, "miui.app.backup.IListDirCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 37
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/app/backup/IListDirCallback;

    if-eqz v1, :cond_14

    .line 38
    move-object v1, v0

    check-cast v1, Lmiui/app/backup/IListDirCallback;

    return-object v1

    .line 40
    :cond_14
    new-instance v1, Lmiui/app/backup/IListDirCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/app/backup/IListDirCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 44
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 21
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    move/from16 v0, p1

    const-string v1, "miui.app.backup.IListDirCallback"

    .line 49
    .local v1, "descriptor":Ljava/lang/String;
    const/4 v2, 0x1

    if-lt v0, v2, :cond_12

    const v3, 0xffffff

    if-gt v0, v3, :cond_12

    .line 50
    move-object/from16 v3, p2

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_14

    .line 49
    :cond_12
    move-object/from16 v3, p2

    .line 52
    :goto_14
    packed-switch v0, :pswitch_data_46

    .line 60
    move-object/from16 v4, p3

    packed-switch v0, :pswitch_data_4c

    .line 78
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    .line 56
    :pswitch_21
    move-object/from16 v4, p3

    invoke-virtual {v4, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    return v2

    .line 65
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 67
    .local v11, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 69
    .local v12, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v13

    .line 71
    .local v13, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 72
    .local v14, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 73
    move-object/from16 v5, p0

    move v6, v11

    move-object v7, v12

    move-object v8, v13

    move-wide v9, v14

    invoke-virtual/range {v5 .. v10}, Lmiui/app/backup/IListDirCallback$Stub;->onListDataDirEnd(ILjava/lang/String;[Ljava/lang/String;J)V

    .line 74
    nop

    .line 81
    .end local v11    # "_arg0":I
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v13    # "_arg2":[Ljava/lang/String;
    .end local v14    # "_arg3":J
    return v2

    nop

    :pswitch_data_46
    .packed-switch 0x5f4e5446
        :pswitch_21
    .end packed-switch

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_27
    .end packed-switch
.end method
