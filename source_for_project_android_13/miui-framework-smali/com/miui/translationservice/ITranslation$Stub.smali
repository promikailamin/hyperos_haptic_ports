.class public abstract Lcom/miui/translationservice/ITranslation$Stub;
.super Landroid/os/Binder;
.source "ITranslation.java"

# interfaces
.implements Lcom/miui/translationservice/ITranslation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/translationservice/ITranslation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/translationservice/ITranslation$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_translate:I = 0x1

.field static final blacklist TRANSACTION_translateByEngine:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 27
    const-string v0, "com.miui.translationservice.ITranslation"

    invoke-virtual {p0, p0, v0}, Lcom/miui/translationservice/ITranslation$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/miui/translationservice/ITranslation;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 35
    if-nez p0, :cond_4

    .line 36
    const/4 v0, 0x0

    return-object v0

    .line 38
    :cond_4
    const-string v0, "com.miui.translationservice.ITranslation"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 39
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/miui/translationservice/ITranslation;

    if-eqz v1, :cond_14

    .line 40
    move-object v1, v0

    check-cast v1, Lcom/miui/translationservice/ITranslation;

    return-object v1

    .line 42
    :cond_14
    new-instance v1, Lcom/miui/translationservice/ITranslation$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/translationservice/ITranslation$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 46
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 27
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
    move/from16 v0, p1

    const-string v1, "com.miui.translationservice.ITranslation"

    .line 51
    .local v1, "descriptor":Ljava/lang/String;
    const/4 v2, 0x1

    if-lt v0, v2, :cond_12

    const v3, 0xffffff

    if-gt v0, v3, :cond_12

    .line 52
    move-object/from16 v3, p2

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_14

    .line 51
    :cond_12
    move-object/from16 v3, p2

    .line 54
    :goto_14
    packed-switch v0, :pswitch_data_84

    .line 62
    move-object/from16 v4, p3

    packed-switch v0, :pswitch_data_8a

    .line 102
    move-object/from16 v9, p0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    .line 58
    :pswitch_23
    move-object/from16 v4, p3

    invoke-virtual {v4, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    return v2

    .line 81
    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v14

    .line 83
    .local v14, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 85
    .local v15, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 87
    .local v16, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 89
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 91
    .local v18, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 93
    .local v19, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 95
    .local v20, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/translationservice/ITranslationRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/translationservice/ITranslationRemoteCallback;

    move-result-object v21

    .line 96
    .local v21, "_arg7":Lcom/miui/translationservice/ITranslationRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 97
    move-object/from16 v5, p0

    move v6, v14

    move v7, v15

    move-object/from16 v8, v16

    move/from16 v9, v17

    move-object/from16 v10, v18

    move-object/from16 v11, v19

    move-object/from16 v12, v20

    move-object/from16 v13, v21

    invoke-virtual/range {v5 .. v13}, Lcom/miui/translationservice/ITranslation$Stub;->translateByEngine(ZILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/translationservice/ITranslationRemoteCallback;)V

    .line 98
    move-object/from16 v9, p0

    goto :goto_83

    .line 67
    .end local v14    # "_arg0":Z
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg5":Ljava/lang/String;
    .end local v20    # "_arg6":Ljava/lang/String;
    .end local v21    # "_arg7":Lcom/miui/translationservice/ITranslationRemoteCallback;
    :pswitch_66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 69
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 71
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 73
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/miui/translationservice/ITranslationRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/translationservice/ITranslationRemoteCallback;

    move-result-object v8

    .line 74
    .local v8, "_arg3":Lcom/miui/translationservice/ITranslationRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 75
    move-object/from16 v9, p0

    invoke-virtual {v9, v5, v6, v7, v8}, Lcom/miui/translationservice/ITranslation$Stub;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/translationservice/ITranslationRemoteCallback;)V

    .line 76
    nop

    .line 105
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Lcom/miui/translationservice/ITranslationRemoteCallback;
    :goto_83
    return v2

    :pswitch_data_84
    .packed-switch 0x5f4e5446
        :pswitch_23
    .end packed-switch

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_66
        :pswitch_29
    .end packed-switch
.end method
