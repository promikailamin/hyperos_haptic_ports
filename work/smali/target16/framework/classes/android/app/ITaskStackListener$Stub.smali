.class public abstract Landroid/app/ITaskStackListener$Stub;
.super Landroid/os/Binder;
.source "ITaskStackListener.java"

# interfaces
.implements Landroid/app/ITaskStackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ITaskStackListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ITaskStackListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.ITaskStackListener"

.field static final blacklist TRANSACTION_onActivityDismissingDockedTask:I = 0x6

.field static final greylist-max-o TRANSACTION_onActivityForcedResizable:I = 0x5

.field static final greylist-max-o TRANSACTION_onActivityLaunchOnSecondaryDisplayFailed:I = 0x7

.field static final blacklist TRANSACTION_onActivityLaunchOnSecondaryDisplayRerouted:I = 0x8

.field static final greylist-max-o TRANSACTION_onActivityPinned:I = 0x2

.field static final greylist-max-o TRANSACTION_onActivityRequestedOrientationChanged:I = 0xd

.field static final blacklist TRANSACTION_onActivityRestartAttempt:I = 0x4

.field static final blacklist TRANSACTION_onActivityRotation:I = 0x19

.field static final greylist-max-o TRANSACTION_onActivityUnpinned:I = 0x3

.field static final blacklist TRANSACTION_onBackPressedOnTaskRoot:I = 0x12

.field static final blacklist TRANSACTION_onLockTaskModeChanged:I = 0x1b

.field static final blacklist TRANSACTION_onRecentTaskListFrozenChanged:I = 0x15

.field static final blacklist TRANSACTION_onRecentTaskListUpdated:I = 0x14

.field static final blacklist TRANSACTION_onRecentTaskRemovedForAddTask:I = 0x16

.field static final greylist-max-o TRANSACTION_onTaskCreated:I = 0x9

.field static final greylist-max-o TRANSACTION_onTaskDescriptionChanged:I = 0xc

.field static final blacklist TRANSACTION_onTaskDisplayChanged:I = 0x13

.field static final blacklist TRANSACTION_onTaskFocusChanged:I = 0x17

.field static final blacklist TRANSACTION_onTaskMovedToBack:I = 0x1a

.field static final greylist-max-o TRANSACTION_onTaskMovedToFront:I = 0xb

.field static final greylist-max-o TRANSACTION_onTaskProfileLocked:I = 0xf

.field static final greylist-max-o TRANSACTION_onTaskRemovalStarted:I = 0xe

.field static final greylist-max-o TRANSACTION_onTaskRemoved:I = 0xa

.field static final blacklist TRANSACTION_onTaskRequestedOrientationChanged:I = 0x18

.field static final greylist-max-o TRANSACTION_onTaskSnapshotChanged:I = 0x10

.field static final blacklist TRANSACTION_onTaskSnapshotInvalidated:I = 0x11

.field static final greylist-max-o TRANSACTION_onTaskStackChanged:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 240
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 241
    const-string v0, "android.app.ITaskStackListener"

    invoke-virtual {p0, p0, v0}, Landroid/app/ITaskStackListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;
    .registers 3

    .line 249
    if-nez p0, :cond_4

    .line 250
    const/4 p0, 0x0

    return-object p0

    .line 252
    :cond_4
    const-string v0, "android.app.ITaskStackListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/ITaskStackListener;

    if-eqz v1, :cond_13

    .line 254
    check-cast v0, Landroid/app/ITaskStackListener;

    return-object v0

    .line 256
    :cond_13
    new-instance v0, Landroid/app/ITaskStackListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/ITaskStackListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 265
    packed-switch p0, :pswitch_data_72

    .line 377
    const/4 p0, 0x0

    return-object p0

    .line 373
    :pswitch_5
    const-string/jumbo p0, "onLockTaskModeChanged"

    return-object p0

    .line 369
    :pswitch_9
    const-string/jumbo p0, "onTaskMovedToBack"

    return-object p0

    .line 365
    :pswitch_d
    const-string/jumbo p0, "onActivityRotation"

    return-object p0

    .line 361
    :pswitch_11
    const-string/jumbo p0, "onTaskRequestedOrientationChanged"

    return-object p0

    .line 357
    :pswitch_15
    const-string/jumbo p0, "onTaskFocusChanged"

    return-object p0

    .line 353
    :pswitch_19
    const-string/jumbo p0, "onRecentTaskRemovedForAddTask"

    return-object p0

    .line 349
    :pswitch_1d
    const-string/jumbo p0, "onRecentTaskListFrozenChanged"

    return-object p0

    .line 345
    :pswitch_21
    const-string/jumbo p0, "onRecentTaskListUpdated"

    return-object p0

    .line 341
    :pswitch_25
    const-string/jumbo p0, "onTaskDisplayChanged"

    return-object p0

    .line 337
    :pswitch_29
    const-string/jumbo p0, "onBackPressedOnTaskRoot"

    return-object p0

    .line 333
    :pswitch_2d
    const-string/jumbo p0, "onTaskSnapshotInvalidated"

    return-object p0

    .line 329
    :pswitch_31
    const-string/jumbo p0, "onTaskSnapshotChanged"

    return-object p0

    .line 325
    :pswitch_35
    const-string/jumbo p0, "onTaskProfileLocked"

    return-object p0

    .line 321
    :pswitch_39
    const-string/jumbo p0, "onTaskRemovalStarted"

    return-object p0

    .line 317
    :pswitch_3d
    const-string/jumbo p0, "onActivityRequestedOrientationChanged"

    return-object p0

    .line 313
    :pswitch_41
    const-string/jumbo p0, "onTaskDescriptionChanged"

    return-object p0

    .line 309
    :pswitch_45
    const-string/jumbo p0, "onTaskMovedToFront"

    return-object p0

    .line 305
    :pswitch_49
    const-string/jumbo p0, "onTaskRemoved"

    return-object p0

    .line 301
    :pswitch_4d
    const-string/jumbo p0, "onTaskCreated"

    return-object p0

    .line 297
    :pswitch_51
    const-string/jumbo p0, "onActivityLaunchOnSecondaryDisplayRerouted"

    return-object p0

    .line 293
    :pswitch_55
    const-string/jumbo p0, "onActivityLaunchOnSecondaryDisplayFailed"

    return-object p0

    .line 289
    :pswitch_59
    const-string/jumbo p0, "onActivityDismissingDockedTask"

    return-object p0

    .line 285
    :pswitch_5d
    const-string/jumbo p0, "onActivityForcedResizable"

    return-object p0

    .line 281
    :pswitch_61
    const-string/jumbo p0, "onActivityRestartAttempt"

    return-object p0

    .line 277
    :pswitch_65
    const-string/jumbo p0, "onActivityUnpinned"

    return-object p0

    .line 273
    :pswitch_69
    const-string/jumbo p0, "onActivityPinned"

    return-object p0

    .line 269
    :pswitch_6d
    const-string/jumbo p0, "onTaskStackChanged"

    return-object p0

    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_69
        :pswitch_65
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

    .line 260
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1160
    const/16 v0, 0x1a

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 384
    invoke-static {p1}, Landroid/app/ITaskStackListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 388
    nop

    .line 389
    const-string v0, "android.app.ITaskStackListener"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 390
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 393
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 394
    return v1

    .line 396
    :cond_17
    packed-switch p1, :pswitch_data_1b0

    .line 638
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 631
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 632
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 633
    invoke-virtual {p0, p1}, Landroid/app/ITaskStackListener$Stub;->onLockTaskModeChanged(I)V

    .line 634
    goto/16 :goto_1af

    .line 623
    :pswitch_2b
    sget-object p1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 624
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 625
    invoke-virtual {p0, p1}, Landroid/app/ITaskStackListener$Stub;->onTaskMovedToBack(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 626
    goto/16 :goto_1af

    .line 615
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 616
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 617
    invoke-virtual {p0, p1}, Landroid/app/ITaskStackListener$Stub;->onActivityRotation(I)V

    .line 618
    goto/16 :goto_1af

    .line 605
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 607
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 608
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 609
    invoke-virtual {p0, p1, p3}, Landroid/app/ITaskStackListener$Stub;->onTaskRequestedOrientationChanged(II)V

    .line 610
    goto/16 :goto_1af

    .line 595
    :pswitch_57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 597
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 598
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 599
    invoke-virtual {p0, p1, p3}, Landroid/app/ITaskStackListener$Stub;->onTaskFocusChanged(IZ)V

    .line 600
    goto/16 :goto_1af

    .line 587
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 588
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 589
    invoke-virtual {p0, p1}, Landroid/app/ITaskStackListener$Stub;->onRecentTaskRemovedForAddTask(I)V

    .line 590
    goto/16 :goto_1af

    .line 579
    :pswitch_73
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 580
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 581
    invoke-virtual {p0, p1}, Landroid/app/ITaskStackListener$Stub;->onRecentTaskListFrozenChanged(Z)V

    .line 582
    goto/16 :goto_1af

    .line 573
    :pswitch_7f
    invoke-virtual {p0}, Landroid/app/ITaskStackListener$Stub;->onRecentTaskListUpdated()V

    .line 574
    goto/16 :goto_1af

    .line 564
    :pswitch_84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 566
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 567
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 568
    invoke-virtual {p0, p1, p3}, Landroid/app/ITaskStackListener$Stub;->onTaskDisplayChanged(II)V

    .line 569
    goto/16 :goto_1af

    .line 556
    :pswitch_94
    sget-object p1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 557
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 558
    invoke-virtual {p0, p1}, Landroid/app/ITaskStackListener$Stub;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 559
    goto/16 :goto_1af

    .line 548
    :pswitch_a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 549
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 550
    invoke-virtual {p0, p1}, Landroid/app/ITaskStackListener$Stub;->onTaskSnapshotInvalidated(I)V

    .line 551
    goto/16 :goto_1af

    .line 538
    :pswitch_b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 540
    sget-object p3, Landroid/window/TaskSnapshot;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/window/TaskSnapshot;

    .line 541
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 542
    invoke-virtual {p0, p1, p3}, Landroid/app/ITaskStackListener$Stub;->onTaskSnapshotChanged(ILandroid/window/TaskSnapshot;)V

    .line 543
    goto/16 :goto_1af

    .line 528
    :pswitch_c4
    sget-object p1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 530
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 531
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 532
    invoke-virtual {p0, p1, p3}, Landroid/app/ITaskStackListener$Stub;->onTaskProfileLocked(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 533
    goto/16 :goto_1af

    .line 520
    :pswitch_d8
    sget-object p1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 521
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 522
    invoke-virtual {p0, p1}, Landroid/app/ITaskStackListener$Stub;->onTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 523
    goto/16 :goto_1af

    .line 510
    :pswitch_e8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 512
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 513
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 514
    invoke-virtual {p0, p1, p3}, Landroid/app/ITaskStackListener$Stub;->onActivityRequestedOrientationChanged(II)V

    .line 515
    goto/16 :goto_1af

    .line 502
    :pswitch_f8
    sget-object p1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 503
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 504
    invoke-virtual {p0, p1}, Landroid/app/ITaskStackListener$Stub;->onTaskDescriptionChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 505
    goto/16 :goto_1af

    .line 494
    :pswitch_108
    sget-object p1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 495
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 496
    invoke-virtual {p0, p1}, Landroid/app/ITaskStackListener$Stub;->onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 497
    goto/16 :goto_1af

    .line 486
    :pswitch_118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 487
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 488
    invoke-virtual {p0, p1}, Landroid/app/ITaskStackListener$Stub;->onTaskRemoved(I)V

    .line 489
    goto/16 :goto_1af

    .line 476
    :pswitch_124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 478
    sget-object p3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/ComponentName;

    .line 479
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 480
    invoke-virtual {p0, p1, p3}, Landroid/app/ITaskStackListener$Stub;->onTaskCreated(ILandroid/content/ComponentName;)V

    .line 481
    goto/16 :goto_1af

    .line 466
    :pswitch_138
    sget-object p1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 468
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 469
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 470
    invoke-virtual {p0, p1, p3}, Landroid/app/ITaskStackListener$Stub;->onActivityLaunchOnSecondaryDisplayRerouted(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 471
    goto :goto_1af

    .line 456
    :pswitch_14b
    sget-object p1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 458
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 459
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 460
    invoke-virtual {p0, p1, p3}, Landroid/app/ITaskStackListener$Stub;->onActivityLaunchOnSecondaryDisplayFailed(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 461
    goto :goto_1af

    .line 450
    :pswitch_15e
    invoke-virtual {p0}, Landroid/app/ITaskStackListener$Stub;->onActivityDismissingDockedTask()V

    .line 451
    goto :goto_1af

    .line 439
    :pswitch_162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 441
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 443
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 444
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 445
    invoke-virtual {p0, p1, p3, p4}, Landroid/app/ITaskStackListener$Stub;->onActivityForcedResizable(Ljava/lang/String;II)V

    .line 446
    goto :goto_1af

    .line 425
    :pswitch_175
    sget-object p1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 427
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 429
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 431
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 432
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 433
    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/app/ITaskStackListener$Stub;->onActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V

    .line 434
    goto :goto_1af

    .line 419
    :pswitch_190
    invoke-virtual {p0}, Landroid/app/ITaskStackListener$Stub;->onActivityUnpinned()V

    .line 420
    goto :goto_1af

    .line 406
    :pswitch_194
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 408
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 410
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 412
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 413
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 414
    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/app/ITaskStackListener$Stub;->onActivityPinned(Ljava/lang/String;III)V

    .line 415
    goto :goto_1af

    .line 400
    :pswitch_1ab
    invoke-virtual {p0}, Landroid/app/ITaskStackListener$Stub;->onTaskStackChanged()V

    .line 401
    nop

    .line 641
    :goto_1af
    return v1

    :pswitch_data_1b0
    .packed-switch 0x1
        :pswitch_1ab
        :pswitch_194
        :pswitch_190
        :pswitch_175
        :pswitch_162
        :pswitch_15e
        :pswitch_14b
        :pswitch_138
        :pswitch_124
        :pswitch_118
        :pswitch_108
        :pswitch_f8
        :pswitch_e8
        :pswitch_d8
        :pswitch_c4
        :pswitch_b0
        :pswitch_a4
        :pswitch_94
        :pswitch_84
        :pswitch_7f
        :pswitch_73
        :pswitch_67
        :pswitch_57
        :pswitch_47
        :pswitch_3b
        :pswitch_2b
        :pswitch_1f
    .end packed-switch
.end method
