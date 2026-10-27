.class public abstract Landroid/window/ITaskOrganizer$Stub;
.super Landroid/os/Binder;
.source "ITaskOrganizer.java"

# interfaces
.implements Landroid/window/ITaskOrganizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ITaskOrganizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/ITaskOrganizer$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addStartingWindow:I = 0x1

.field static final blacklist TRANSACTION_copySplashScreenView:I = 0x3

.field static final blacklist TRANSACTION_enterSplitScreen:I = 0xa

.field static final blacklist TRANSACTION_exitSplitScreen:I = 0xc

.field static final blacklist TRANSACTION_onAppSplashScreenViewRemoved:I = 0x4

.field static final blacklist TRANSACTION_onBackPressedOnTaskRoot:I = 0x8

.field static final blacklist TRANSACTION_onImeDrawnOnTask:I = 0x9

.field static final blacklist TRANSACTION_onTaskAppeared:I = 0x5

.field static final blacklist TRANSACTION_onTaskInfoChanged:I = 0x7

.field static final blacklist TRANSACTION_onTaskVanished:I = 0x6

.field static final blacklist TRANSACTION_removeStartingWindow:I = 0x2

.field static final blacklist TRANSACTION_startIntentInSplitScreen:I = 0xe

.field static final blacklist TRANSACTION_startTasksWithLegacyTransitionForSystem:I = 0xd

.field static final blacklist TRANSACTION_swapSplitTasks:I = 0xb


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 109
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 110
    const-string v0, "android.window.ITaskOrganizer"

    invoke-virtual {p0, p0, v0}, Landroid/window/ITaskOrganizer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/window/ITaskOrganizer;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 118
    if-nez p0, :cond_4

    .line 119
    const/4 v0, 0x0

    return-object v0

    .line 121
    :cond_4
    const-string v0, "android.window.ITaskOrganizer"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 122
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/window/ITaskOrganizer;

    if-eqz v1, :cond_14

    .line 123
    move-object v1, v0

    check-cast v1, Landroid/window/ITaskOrganizer;

    return-object v1

    .line 125
    :cond_14
    new-instance v1, Landroid/window/ITaskOrganizer$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/window/ITaskOrganizer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 134
    packed-switch p0, :pswitch_data_3a

    .line 194
    const/4 v0, 0x0

    return-object v0

    .line 190
    :pswitch_5
    const-string/jumbo v0, "startIntentInSplitScreen"

    return-object v0

    .line 186
    :pswitch_9
    const-string/jumbo v0, "startTasksWithLegacyTransitionForSystem"

    return-object v0

    .line 182
    :pswitch_d
    const-string v0, "exitSplitScreen"

    return-object v0

    .line 178
    :pswitch_10
    const-string/jumbo v0, "swapSplitTasks"

    return-object v0

    .line 174
    :pswitch_14
    const-string v0, "enterSplitScreen"

    return-object v0

    .line 170
    :pswitch_17
    const-string/jumbo v0, "onImeDrawnOnTask"

    return-object v0

    .line 166
    :pswitch_1b
    const-string/jumbo v0, "onBackPressedOnTaskRoot"

    return-object v0

    .line 162
    :pswitch_1f
    const-string/jumbo v0, "onTaskInfoChanged"

    return-object v0

    .line 158
    :pswitch_23
    const-string/jumbo v0, "onTaskVanished"

    return-object v0

    .line 154
    :pswitch_27
    const-string/jumbo v0, "onTaskAppeared"

    return-object v0

    .line 150
    :pswitch_2b
    const-string/jumbo v0, "onAppSplashScreenViewRemoved"

    return-object v0

    .line 146
    :pswitch_2f
    const-string v0, "copySplashScreenView"

    return-object v0

    .line 142
    :pswitch_32
    const-string/jumbo v0, "removeStartingWindow"

    return-object v0

    .line 138
    :pswitch_36
    const-string v0, "addStartingWindow"

    return-object v0

    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_36
        :pswitch_32
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_1f
        :pswitch_1b
        :pswitch_17
        :pswitch_14
        :pswitch_10
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 129
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 592
    const/16 v0, 0xd

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 201
    invoke-static {p1}, Landroid/window/ITaskOrganizer$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 205
    const-string v0, "android.window.ITaskOrganizer"

    .line 206
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 207
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    :cond_d
    packed-switch p1, :pswitch_data_ea

    .line 217
    packed-switch p1, :pswitch_data_f0

    .line 340
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 213
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    return v1

    .line 331
    :pswitch_1c
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 333
    .local v2, "_arg0":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 334
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 335
    invoke-virtual {p0, v2, v3}, Landroid/window/ITaskOrganizer$Stub;->startIntentInSplitScreen(Landroid/app/PendingIntent;I)V

    .line 336
    goto/16 :goto_e9

    .line 321
    .end local v2    # "_arg0":Landroid/app/PendingIntent;
    .end local v3    # "_arg1":I
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 323
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 324
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 325
    invoke-virtual {p0, v2, v3}, Landroid/window/ITaskOrganizer$Stub;->startTasksWithLegacyTransitionForSystem(II)V

    .line 326
    goto/16 :goto_e9

    .line 313
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 314
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 315
    invoke-virtual {p0, v2}, Landroid/window/ITaskOrganizer$Stub;->exitSplitScreen(I)V

    .line 316
    goto/16 :goto_e9

    .line 307
    .end local v2    # "_arg0":I
    :pswitch_4c
    invoke-virtual {p0}, Landroid/window/ITaskOrganizer$Stub;->swapSplitTasks()V

    .line 308
    goto/16 :goto_e9

    .line 298
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 300
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 301
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 302
    invoke-virtual {p0, v2, v3}, Landroid/window/ITaskOrganizer$Stub;->enterSplitScreen(IZ)V

    .line 303
    goto/16 :goto_e9

    .line 290
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 291
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 292
    invoke-virtual {p0, v2}, Landroid/window/ITaskOrganizer$Stub;->onImeDrawnOnTask(I)V

    .line 293
    goto/16 :goto_e9

    .line 282
    .end local v2    # "_arg0":I
    :pswitch_6d
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 283
    .local v2, "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 284
    invoke-virtual {p0, v2}, Landroid/window/ITaskOrganizer$Stub;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 285
    goto :goto_e9

    .line 274
    .end local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    :pswitch_7c
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 275
    .restart local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 276
    invoke-virtual {p0, v2}, Landroid/window/ITaskOrganizer$Stub;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 277
    goto :goto_e9

    .line 266
    .end local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    :pswitch_8b
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 267
    .restart local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 268
    invoke-virtual {p0, v2}, Landroid/window/ITaskOrganizer$Stub;->onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 269
    goto :goto_e9

    .line 256
    .end local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    :pswitch_9a
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 258
    .restart local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    sget-object v3, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl;

    .line 259
    .local v3, "_arg1":Landroid/view/SurfaceControl;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 260
    invoke-virtual {p0, v2, v3}, Landroid/window/ITaskOrganizer$Stub;->onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    .line 261
    goto :goto_e9

    .line 248
    .end local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v3    # "_arg1":Landroid/view/SurfaceControl;
    :pswitch_b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 249
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    invoke-virtual {p0, v2}, Landroid/window/ITaskOrganizer$Stub;->onAppSplashScreenViewRemoved(I)V

    .line 251
    goto :goto_e9

    .line 240
    .end local v2    # "_arg0":I
    :pswitch_bc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 241
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 242
    invoke-virtual {p0, v2}, Landroid/window/ITaskOrganizer$Stub;->copySplashScreenView(I)V

    .line 243
    goto :goto_e9

    .line 232
    .end local v2    # "_arg0":I
    :pswitch_c7
    sget-object v2, Landroid/window/StartingWindowRemovalInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/StartingWindowRemovalInfo;

    .line 233
    .local v2, "_arg0":Landroid/window/StartingWindowRemovalInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    invoke-virtual {p0, v2}, Landroid/window/ITaskOrganizer$Stub;->removeStartingWindow(Landroid/window/StartingWindowRemovalInfo;)V

    .line 235
    goto :goto_e9

    .line 222
    .end local v2    # "_arg0":Landroid/window/StartingWindowRemovalInfo;
    :pswitch_d6
    sget-object v2, Landroid/window/StartingWindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/StartingWindowInfo;

    .line 224
    .local v2, "_arg0":Landroid/window/StartingWindowInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 225
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 226
    invoke-virtual {p0, v2, v3}, Landroid/window/ITaskOrganizer$Stub;->addStartingWindow(Landroid/window/StartingWindowInfo;Landroid/os/IBinder;)V

    .line 227
    nop

    .line 343
    .end local v2    # "_arg0":Landroid/window/StartingWindowInfo;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    :goto_e9
    return v1

    :pswitch_data_ea
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_f0
    .packed-switch 0x1
        :pswitch_d6
        :pswitch_c7
        :pswitch_bc
        :pswitch_b1
        :pswitch_9a
        :pswitch_8b
        :pswitch_7c
        :pswitch_6d
        :pswitch_61
        :pswitch_51
        :pswitch_4c
        :pswitch_40
        :pswitch_30
        :pswitch_1c
    .end packed-switch
.end method
