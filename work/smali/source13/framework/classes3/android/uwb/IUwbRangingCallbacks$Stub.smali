.class public abstract Landroid/uwb/IUwbRangingCallbacks$Stub;
.super Landroid/os/Binder;
.source "IUwbRangingCallbacks.java"

# interfaces
.implements Landroid/uwb/IUwbRangingCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/uwb/IUwbRangingCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onControleeAddFailed:I = 0xc

.field static final blacklist TRANSACTION_onControleeAdded:I = 0xb

.field static final blacklist TRANSACTION_onControleeRemoveFailed:I = 0xe

.field static final blacklist TRANSACTION_onControleeRemoved:I = 0xd

.field static final blacklist TRANSACTION_onDataReceiveFailed:I = 0x16

.field static final blacklist TRANSACTION_onDataReceived:I = 0x15

.field static final blacklist TRANSACTION_onDataSendFailed:I = 0x14

.field static final blacklist TRANSACTION_onDataSent:I = 0x13

.field static final blacklist TRANSACTION_onRangingClosed:I = 0x9

.field static final blacklist TRANSACTION_onRangingOpenFailed:I = 0x2

.field static final blacklist TRANSACTION_onRangingOpened:I = 0x1

.field static final blacklist TRANSACTION_onRangingPauseFailed:I = 0x10

.field static final blacklist TRANSACTION_onRangingPaused:I = 0xf

.field static final blacklist TRANSACTION_onRangingReconfigureFailed:I = 0x6

.field static final blacklist TRANSACTION_onRangingReconfigured:I = 0x5

.field static final blacklist TRANSACTION_onRangingResult:I = 0xa

.field static final blacklist TRANSACTION_onRangingResumeFailed:I = 0x12

.field static final blacklist TRANSACTION_onRangingResumed:I = 0x11

.field static final blacklist TRANSACTION_onRangingStartFailed:I = 0x4

.field static final blacklist TRANSACTION_onRangingStarted:I = 0x3

.field static final blacklist TRANSACTION_onRangingStopFailed:I = 0x8

.field static final blacklist TRANSACTION_onRangingStopped:I = 0x7

.field static final blacklist TRANSACTION_onServiceConnected:I = 0x18

.field static final blacklist TRANSACTION_onServiceDiscovered:I = 0x17


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 257
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 258
    const-string v0, "android.uwb.IUwbRangingCallbacks"

    invoke-virtual {p0, p0, v0}, Landroid/uwb/IUwbRangingCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/uwb/IUwbRangingCallbacks;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 266
    if-nez p0, :cond_4

    .line 267
    const/4 v0, 0x0

    return-object v0

    .line 269
    :cond_4
    const-string v0, "android.uwb.IUwbRangingCallbacks"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 270
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/uwb/IUwbRangingCallbacks;

    if-eqz v1, :cond_14

    .line 271
    move-object v1, v0

    check-cast v1, Landroid/uwb/IUwbRangingCallbacks;

    return-object v1

    .line 273
    :cond_14
    new-instance v1, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 282
    packed-switch p0, :pswitch_data_66

    .line 382
    const/4 v0, 0x0

    return-object v0

    .line 378
    :pswitch_5
    const-string/jumbo v0, "onServiceConnected"

    return-object v0

    .line 374
    :pswitch_9
    const-string/jumbo v0, "onServiceDiscovered"

    return-object v0

    .line 370
    :pswitch_d
    const-string/jumbo v0, "onDataReceiveFailed"

    return-object v0

    .line 366
    :pswitch_11
    const-string/jumbo v0, "onDataReceived"

    return-object v0

    .line 362
    :pswitch_15
    const-string/jumbo v0, "onDataSendFailed"

    return-object v0

    .line 358
    :pswitch_19
    const-string/jumbo v0, "onDataSent"

    return-object v0

    .line 354
    :pswitch_1d
    const-string/jumbo v0, "onRangingResumeFailed"

    return-object v0

    .line 350
    :pswitch_21
    const-string/jumbo v0, "onRangingResumed"

    return-object v0

    .line 346
    :pswitch_25
    const-string/jumbo v0, "onRangingPauseFailed"

    return-object v0

    .line 342
    :pswitch_29
    const-string/jumbo v0, "onRangingPaused"

    return-object v0

    .line 338
    :pswitch_2d
    const-string/jumbo v0, "onControleeRemoveFailed"

    return-object v0

    .line 334
    :pswitch_31
    const-string/jumbo v0, "onControleeRemoved"

    return-object v0

    .line 330
    :pswitch_35
    const-string/jumbo v0, "onControleeAddFailed"

    return-object v0

    .line 326
    :pswitch_39
    const-string/jumbo v0, "onControleeAdded"

    return-object v0

    .line 322
    :pswitch_3d
    const-string/jumbo v0, "onRangingResult"

    return-object v0

    .line 318
    :pswitch_41
    const-string/jumbo v0, "onRangingClosed"

    return-object v0

    .line 314
    :pswitch_45
    const-string/jumbo v0, "onRangingStopFailed"

    return-object v0

    .line 310
    :pswitch_49
    const-string/jumbo v0, "onRangingStopped"

    return-object v0

    .line 306
    :pswitch_4d
    const-string/jumbo v0, "onRangingReconfigureFailed"

    return-object v0

    .line 302
    :pswitch_51
    const-string/jumbo v0, "onRangingReconfigured"

    return-object v0

    .line 298
    :pswitch_55
    const-string/jumbo v0, "onRangingStartFailed"

    return-object v0

    .line 294
    :pswitch_59
    const-string/jumbo v0, "onRangingStarted"

    return-object v0

    .line 290
    :pswitch_5d
    const-string/jumbo v0, "onRangingOpenFailed"

    return-object v0

    .line 286
    :pswitch_61
    const-string/jumbo v0, "onRangingOpened"

    return-object v0

    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_61
        :pswitch_5d
        :pswitch_59
        :pswitch_55
        :pswitch_51
        :pswitch_4d
        :pswitch_49
        :pswitch_45
        :pswitch_41
        :pswitch_3d
        :pswitch_39
        :pswitch_35
        :pswitch_31
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 277
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1218
    const/16 v0, 0x17

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 389
    invoke-static {p1}, Landroid/uwb/IUwbRangingCallbacks$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 393
    const-string v0, "android.uwb.IUwbRangingCallbacks"

    .line 394
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 395
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    :cond_d
    packed-switch p1, :pswitch_data_2a4

    .line 405
    packed-switch p1, :pswitch_data_2aa

    .line 681
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 401
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 402
    return v1

    .line 672
    :pswitch_1c
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 674
    .local v2, "_arg0":Landroid/uwb/SessionHandle;
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 675
    .local v3, "_arg1":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 676
    invoke-virtual {p0, v2, v3}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onServiceConnected(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V

    .line 677
    goto/16 :goto_2a2

    .line 662
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":Landroid/os/PersistableBundle;
    :pswitch_34
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 664
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 665
    .restart local v3    # "_arg1":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 666
    invoke-virtual {p0, v2, v3}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onServiceDiscovered(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V

    .line 667
    goto/16 :goto_2a2

    .line 648
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":Landroid/os/PersistableBundle;
    :pswitch_4c
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 650
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    sget-object v3, Landroid/uwb/UwbAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/uwb/UwbAddress;

    .line 652
    .local v3, "_arg1":Landroid/uwb/UwbAddress;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 654
    .local v4, "_arg2":I
    sget-object v5, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PersistableBundle;

    .line 655
    .local v5, "_arg3":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 656
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onDataReceiveFailed(Landroid/uwb/SessionHandle;Landroid/uwb/UwbAddress;ILandroid/os/PersistableBundle;)V

    .line 657
    goto/16 :goto_2a2

    .line 634
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":Landroid/uwb/UwbAddress;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/os/PersistableBundle;
    :pswitch_70
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 636
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    sget-object v3, Landroid/uwb/UwbAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/uwb/UwbAddress;

    .line 638
    .restart local v3    # "_arg1":Landroid/uwb/UwbAddress;
    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersistableBundle;

    .line 640
    .local v4, "_arg2":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 641
    .local v5, "_arg3":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 642
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onDataReceived(Landroid/uwb/SessionHandle;Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;[B)V

    .line 643
    goto/16 :goto_2a2

    .line 620
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":Landroid/uwb/UwbAddress;
    .end local v4    # "_arg2":Landroid/os/PersistableBundle;
    .end local v5    # "_arg3":[B
    :pswitch_94
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 622
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    sget-object v3, Landroid/uwb/UwbAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/uwb/UwbAddress;

    .line 624
    .restart local v3    # "_arg1":Landroid/uwb/UwbAddress;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 626
    .local v4, "_arg2":I
    sget-object v5, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PersistableBundle;

    .line 627
    .local v5, "_arg3":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 628
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onDataSendFailed(Landroid/uwb/SessionHandle;Landroid/uwb/UwbAddress;ILandroid/os/PersistableBundle;)V

    .line 629
    goto/16 :goto_2a2

    .line 608
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":Landroid/uwb/UwbAddress;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/os/PersistableBundle;
    :pswitch_b8
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 610
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    sget-object v3, Landroid/uwb/UwbAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/uwb/UwbAddress;

    .line 612
    .restart local v3    # "_arg1":Landroid/uwb/UwbAddress;
    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersistableBundle;

    .line 613
    .local v4, "_arg2":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 614
    invoke-virtual {p0, v2, v3, v4}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onDataSent(Landroid/uwb/SessionHandle;Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;)V

    .line 615
    goto/16 :goto_2a2

    .line 596
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":Landroid/uwb/UwbAddress;
    .end local v4    # "_arg2":Landroid/os/PersistableBundle;
    :pswitch_d8
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 598
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 600
    .local v3, "_arg1":I
    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersistableBundle;

    .line 601
    .restart local v4    # "_arg2":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 602
    invoke-virtual {p0, v2, v3, v4}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onRangingResumeFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V

    .line 603
    goto/16 :goto_2a2

    .line 586
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/PersistableBundle;
    :pswitch_f4
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 588
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 589
    .local v3, "_arg1":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 590
    invoke-virtual {p0, v2, v3}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onRangingResumed(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V

    .line 591
    goto/16 :goto_2a2

    .line 574
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":Landroid/os/PersistableBundle;
    :pswitch_10c
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 576
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 578
    .local v3, "_arg1":I
    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersistableBundle;

    .line 579
    .restart local v4    # "_arg2":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 580
    invoke-virtual {p0, v2, v3, v4}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onRangingPauseFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V

    .line 581
    goto/16 :goto_2a2

    .line 564
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/PersistableBundle;
    :pswitch_128
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 566
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 567
    .local v3, "_arg1":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 568
    invoke-virtual {p0, v2, v3}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onRangingPaused(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V

    .line 569
    goto/16 :goto_2a2

    .line 552
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":Landroid/os/PersistableBundle;
    :pswitch_140
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 554
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 556
    .local v3, "_arg1":I
    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersistableBundle;

    .line 557
    .restart local v4    # "_arg2":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 558
    invoke-virtual {p0, v2, v3, v4}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onControleeRemoveFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V

    .line 559
    goto/16 :goto_2a2

    .line 542
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/PersistableBundle;
    :pswitch_15c
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 544
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 545
    .local v3, "_arg1":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 546
    invoke-virtual {p0, v2, v3}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onControleeRemoved(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V

    .line 547
    goto/16 :goto_2a2

    .line 530
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":Landroid/os/PersistableBundle;
    :pswitch_174
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 532
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 534
    .local v3, "_arg1":I
    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersistableBundle;

    .line 535
    .restart local v4    # "_arg2":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 536
    invoke-virtual {p0, v2, v3, v4}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onControleeAddFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V

    .line 537
    goto/16 :goto_2a2

    .line 520
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/PersistableBundle;
    :pswitch_190
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 522
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 523
    .local v3, "_arg1":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 524
    invoke-virtual {p0, v2, v3}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onControleeAdded(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V

    .line 525
    goto/16 :goto_2a2

    .line 510
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":Landroid/os/PersistableBundle;
    :pswitch_1a8
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 512
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    sget-object v3, Landroid/uwb/RangingReport;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/uwb/RangingReport;

    .line 513
    .local v3, "_arg1":Landroid/uwb/RangingReport;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 514
    invoke-virtual {p0, v2, v3}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onRangingResult(Landroid/uwb/SessionHandle;Landroid/uwb/RangingReport;)V

    .line 515
    goto/16 :goto_2a2

    .line 498
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":Landroid/uwb/RangingReport;
    :pswitch_1c0
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 500
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 502
    .local v3, "_arg1":I
    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersistableBundle;

    .line 503
    .restart local v4    # "_arg2":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 504
    invoke-virtual {p0, v2, v3, v4}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onRangingClosed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V

    .line 505
    goto/16 :goto_2a2

    .line 486
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/PersistableBundle;
    :pswitch_1dc
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 488
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 490
    .restart local v3    # "_arg1":I
    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersistableBundle;

    .line 491
    .restart local v4    # "_arg2":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 492
    invoke-virtual {p0, v2, v3, v4}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onRangingStopFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V

    .line 493
    goto/16 :goto_2a2

    .line 474
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/PersistableBundle;
    :pswitch_1f8
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 476
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 478
    .restart local v3    # "_arg1":I
    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersistableBundle;

    .line 479
    .restart local v4    # "_arg2":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 480
    invoke-virtual {p0, v2, v3, v4}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onRangingStopped(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V

    .line 481
    goto/16 :goto_2a2

    .line 462
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/PersistableBundle;
    :pswitch_214
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 464
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 466
    .restart local v3    # "_arg1":I
    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersistableBundle;

    .line 467
    .restart local v4    # "_arg2":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 468
    invoke-virtual {p0, v2, v3, v4}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onRangingReconfigureFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V

    .line 469
    goto :goto_2a2

    .line 452
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/PersistableBundle;
    :pswitch_22f
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 454
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 455
    .local v3, "_arg1":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 456
    invoke-virtual {p0, v2, v3}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onRangingReconfigured(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V

    .line 457
    goto :goto_2a2

    .line 440
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":Landroid/os/PersistableBundle;
    :pswitch_246
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 442
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 444
    .local v3, "_arg1":I
    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersistableBundle;

    .line 445
    .restart local v4    # "_arg2":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 446
    invoke-virtual {p0, v2, v3, v4}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onRangingStartFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V

    .line 447
    goto :goto_2a2

    .line 430
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/PersistableBundle;
    :pswitch_261
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 432
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 433
    .local v3, "_arg1":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 434
    invoke-virtual {p0, v2, v3}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onRangingStarted(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V

    .line 435
    goto :goto_2a2

    .line 418
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":Landroid/os/PersistableBundle;
    :pswitch_278
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 420
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 422
    .local v3, "_arg1":I
    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersistableBundle;

    .line 423
    .restart local v4    # "_arg2":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 424
    invoke-virtual {p0, v2, v3, v4}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onRangingOpenFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V

    .line 425
    goto :goto_2a2

    .line 410
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/PersistableBundle;
    :pswitch_293
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 411
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 412
    invoke-virtual {p0, v2}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onRangingOpened(Landroid/uwb/SessionHandle;)V

    .line 413
    nop

    .line 684
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    :goto_2a2
    return v1

    nop

    :pswitch_data_2a4
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_2aa
    .packed-switch 0x1
        :pswitch_293
        :pswitch_278
        :pswitch_261
        :pswitch_246
        :pswitch_22f
        :pswitch_214
        :pswitch_1f8
        :pswitch_1dc
        :pswitch_1c0
        :pswitch_1a8
        :pswitch_190
        :pswitch_174
        :pswitch_15c
        :pswitch_140
        :pswitch_128
        :pswitch_10c
        :pswitch_f4
        :pswitch_d8
        :pswitch_b8
        :pswitch_94
        :pswitch_70
        :pswitch_4c
        :pswitch_34
        :pswitch_1c
    .end packed-switch
.end method
