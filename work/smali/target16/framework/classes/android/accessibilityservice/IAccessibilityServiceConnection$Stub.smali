.class public abstract Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;
.super Landroid/os/Binder;
.source "IAccessibilityServiceConnection.java"

# interfaces
.implements Landroid/accessibilityservice/IAccessibilityServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/IAccessibilityServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.accessibilityservice.IAccessibilityServiceConnection"

.field static final blacklist TRANSACTION_attachAccessibilityOverlayToDisplay:I = 0x35

.field static final blacklist TRANSACTION_attachAccessibilityOverlayToWindow:I = 0x36

.field static final blacklist TRANSACTION_connectBluetoothBrailleDisplay:I = 0x37

.field static final blacklist TRANSACTION_connectUsbBrailleDisplay:I = 0x38

.field static final greylist-max-o TRANSACTION_disableSelf:I = 0xe

.field static final blacklist TRANSACTION_dispatchGesture:I = 0x21

.field static final greylist-max-o TRANSACTION_findAccessibilityNodeInfoByAccessibilityId:I = 0x3

.field static final greylist-max-o TRANSACTION_findAccessibilityNodeInfosByText:I = 0x4

.field static final greylist-max-o TRANSACTION_findAccessibilityNodeInfosByViewId:I = 0x5

.field static final greylist-max-o TRANSACTION_findFocus:I = 0x6

.field static final greylist-max-o TRANSACTION_focusSearch:I = 0x7

.field static final blacklist TRANSACTION_getCurrentMagnificationRegion:I = 0x15

.field static final blacklist TRANSACTION_getInstalledAndEnabledServices:I = 0x34

.field static final greylist-max-o TRANSACTION_getMagnificationCenterX:I = 0x12

.field static final greylist-max-o TRANSACTION_getMagnificationCenterY:I = 0x13

.field static final blacklist TRANSACTION_getMagnificationConfig:I = 0x10

.field static final greylist-max-o TRANSACTION_getMagnificationRegion:I = 0x14

.field static final greylist-max-o TRANSACTION_getMagnificationScale:I = 0x11

.field static final blacklist TRANSACTION_getOverlayWindowToken:I = 0x23

.field static final greylist-max-o TRANSACTION_getServiceInfo:I = 0xb

.field static final blacklist TRANSACTION_getSoftKeyboardShowMode:I = 0x1b

.field static final blacklist TRANSACTION_getSystemActions:I = 0xd

.field static final greylist-max-o TRANSACTION_getWindow:I = 0x9

.field static final blacklist TRANSACTION_getWindowIdForLeashToken:I = 0x24

.field static final greylist-max-o TRANSACTION_getWindows:I = 0xa

.field static final greylist-max-o TRANSACTION_isAccessibilityButtonAvailable:I = 0x1f

.field static final greylist-max-o TRANSACTION_isFingerprintGestureDetectionAvailable:I = 0x22

.field static final blacklist TRANSACTION_logTrace:I = 0x2b

.field static final blacklist TRANSACTION_onDoubleTap:I = 0x30

.field static final blacklist TRANSACTION_onDoubleTapAndHold:I = 0x31

.field static final greylist-max-o TRANSACTION_performAccessibilityAction:I = 0x8

.field static final greylist-max-o TRANSACTION_performGlobalAction:I = 0xc

.field static final blacklist TRANSACTION_requestDelegating:I = 0x2f

.field static final blacklist TRANSACTION_requestDragging:I = 0x2e

.field static final blacklist TRANSACTION_requestTouchExploration:I = 0x2d

.field static final blacklist TRANSACTION_resetCurrentMagnification:I = 0x17

.field static final greylist-max-o TRANSACTION_resetMagnification:I = 0x16

.field static final greylist-max-o TRANSACTION_sendGesture:I = 0x20

.field static final blacklist TRANSACTION_setAnimationScale:I = 0x32

.field static final blacklist TRANSACTION_setAttributionTag:I = 0x2

.field static final blacklist TRANSACTION_setCacheEnabled:I = 0x2a

.field static final blacklist TRANSACTION_setFocusAppearance:I = 0x29

.field static final blacklist TRANSACTION_setGestureDetectionPassthroughRegion:I = 0x27

.field static final blacklist TRANSACTION_setInputMethodEnabled:I = 0x1e

.field static final blacklist TRANSACTION_setInstalledAndEnabledServices:I = 0x33

.field static final greylist-max-o TRANSACTION_setMagnificationCallbackEnabled:I = 0x19

.field static final blacklist TRANSACTION_setMagnificationConfig:I = 0x18

.field static final greylist-max-o TRANSACTION_setOnKeyEventResult:I = 0xf

.field static final blacklist TRANSACTION_setServiceDetectsGesturesEnabled:I = 0x2c

.field static final greylist-max-o TRANSACTION_setServiceInfo:I = 0x1

.field static final greylist-max-o TRANSACTION_setSoftKeyboardCallbackEnabled:I = 0x1c

.field static final greylist-max-o TRANSACTION_setSoftKeyboardShowMode:I = 0x1a

.field static final blacklist TRANSACTION_setTestBrailleDisplayData:I = 0x39

.field static final blacklist TRANSACTION_setTouchExplorationPassthroughRegion:I = 0x28

.field static final blacklist TRANSACTION_switchToInputMethod:I = 0x1d

.field static final blacklist TRANSACTION_takeScreenshot:I = 0x25

.field static final blacklist TRANSACTION_takeScreenshotOfWindow:I = 0x26


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 241
    nop

    .line 242
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 241
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 243
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 231
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 232
    const-string v0, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {p0, p0, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 233
    if-eqz p1, :cond_d

    .line 236
    iput-object p1, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 237
    return-void

    .line 234
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .registers 3

    .line 250
    if-nez p0, :cond_4

    .line 251
    const/4 p0, 0x0

    return-object p0

    .line 253
    :cond_4
    const-string v0, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 254
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/accessibilityservice/IAccessibilityServiceConnection;

    if-eqz v1, :cond_13

    .line 255
    check-cast v0, Landroid/accessibilityservice/IAccessibilityServiceConnection;

    return-object v0

    .line 257
    :cond_13
    new-instance v0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 266
    packed-switch p0, :pswitch_data_ce

    .line 498
    const/4 p0, 0x0

    return-object p0

    .line 494
    :pswitch_5
    const-string/jumbo p0, "setTestBrailleDisplayData"

    return-object p0

    .line 490
    :pswitch_9
    const-string p0, "connectUsbBrailleDisplay"

    return-object p0

    .line 486
    :pswitch_c
    const-string p0, "connectBluetoothBrailleDisplay"

    return-object p0

    .line 482
    :pswitch_f
    const-string p0, "attachAccessibilityOverlayToWindow"

    return-object p0

    .line 478
    :pswitch_12
    const-string p0, "attachAccessibilityOverlayToDisplay"

    return-object p0

    .line 474
    :pswitch_15
    const-string p0, "getInstalledAndEnabledServices"

    return-object p0

    .line 470
    :pswitch_18
    const-string/jumbo p0, "setInstalledAndEnabledServices"

    return-object p0

    .line 466
    :pswitch_1c
    const-string/jumbo p0, "setAnimationScale"

    return-object p0

    .line 462
    :pswitch_20
    const-string/jumbo p0, "onDoubleTapAndHold"

    return-object p0

    .line 458
    :pswitch_24
    const-string/jumbo p0, "onDoubleTap"

    return-object p0

    .line 454
    :pswitch_28
    const-string/jumbo p0, "requestDelegating"

    return-object p0

    .line 450
    :pswitch_2c
    const-string/jumbo p0, "requestDragging"

    return-object p0

    .line 446
    :pswitch_30
    const-string/jumbo p0, "requestTouchExploration"

    return-object p0

    .line 442
    :pswitch_34
    const-string/jumbo p0, "setServiceDetectsGesturesEnabled"

    return-object p0

    .line 438
    :pswitch_38
    const-string/jumbo p0, "logTrace"

    return-object p0

    .line 434
    :pswitch_3c
    const-string/jumbo p0, "setCacheEnabled"

    return-object p0

    .line 430
    :pswitch_40
    const-string/jumbo p0, "setFocusAppearance"

    return-object p0

    .line 426
    :pswitch_44
    const-string/jumbo p0, "setTouchExplorationPassthroughRegion"

    return-object p0

    .line 422
    :pswitch_48
    const-string/jumbo p0, "setGestureDetectionPassthroughRegion"

    return-object p0

    .line 418
    :pswitch_4c
    const-string/jumbo p0, "takeScreenshotOfWindow"

    return-object p0

    .line 414
    :pswitch_50
    const-string/jumbo p0, "takeScreenshot"

    return-object p0

    .line 410
    :pswitch_54
    const-string p0, "getWindowIdForLeashToken"

    return-object p0

    .line 406
    :pswitch_57
    const-string p0, "getOverlayWindowToken"

    return-object p0

    .line 402
    :pswitch_5a
    const-string p0, "isFingerprintGestureDetectionAvailable"

    return-object p0

    .line 398
    :pswitch_5d
    const-string p0, "dispatchGesture"

    return-object p0

    .line 394
    :pswitch_60
    const-string/jumbo p0, "sendGesture"

    return-object p0

    .line 390
    :pswitch_64
    const-string p0, "isAccessibilityButtonAvailable"

    return-object p0

    .line 386
    :pswitch_67
    const-string/jumbo p0, "setInputMethodEnabled"

    return-object p0

    .line 382
    :pswitch_6b
    const-string/jumbo p0, "switchToInputMethod"

    return-object p0

    .line 378
    :pswitch_6f
    const-string/jumbo p0, "setSoftKeyboardCallbackEnabled"

    return-object p0

    .line 374
    :pswitch_73
    const-string p0, "getSoftKeyboardShowMode"

    return-object p0

    .line 370
    :pswitch_76
    const-string/jumbo p0, "setSoftKeyboardShowMode"

    return-object p0

    .line 366
    :pswitch_7a
    const-string/jumbo p0, "setMagnificationCallbackEnabled"

    return-object p0

    .line 362
    :pswitch_7e
    const-string/jumbo p0, "setMagnificationConfig"

    return-object p0

    .line 358
    :pswitch_82
    const-string/jumbo p0, "resetCurrentMagnification"

    return-object p0

    .line 354
    :pswitch_86
    const-string/jumbo p0, "resetMagnification"

    return-object p0

    .line 350
    :pswitch_8a
    const-string p0, "getCurrentMagnificationRegion"

    return-object p0

    .line 346
    :pswitch_8d
    const-string p0, "getMagnificationRegion"

    return-object p0

    .line 342
    :pswitch_90
    const-string p0, "getMagnificationCenterY"

    return-object p0

    .line 338
    :pswitch_93
    const-string p0, "getMagnificationCenterX"

    return-object p0

    .line 334
    :pswitch_96
    const-string p0, "getMagnificationScale"

    return-object p0

    .line 330
    :pswitch_99
    const-string p0, "getMagnificationConfig"

    return-object p0

    .line 326
    :pswitch_9c
    const-string/jumbo p0, "setOnKeyEventResult"

    return-object p0

    .line 322
    :pswitch_a0
    const-string p0, "disableSelf"

    return-object p0

    .line 318
    :pswitch_a3
    const-string p0, "getSystemActions"

    return-object p0

    .line 314
    :pswitch_a6
    const-string/jumbo p0, "performGlobalAction"

    return-object p0

    .line 310
    :pswitch_aa
    const-string p0, "getServiceInfo"

    return-object p0

    .line 306
    :pswitch_ad
    const-string p0, "getWindows"

    return-object p0

    .line 302
    :pswitch_b0
    const-string p0, "getWindow"

    return-object p0

    .line 298
    :pswitch_b3
    const-string/jumbo p0, "performAccessibilityAction"

    return-object p0

    .line 294
    :pswitch_b7
    const-string p0, "focusSearch"

    return-object p0

    .line 290
    :pswitch_ba
    const-string p0, "findFocus"

    return-object p0

    .line 286
    :pswitch_bd
    const-string p0, "findAccessibilityNodeInfosByViewId"

    return-object p0

    .line 282
    :pswitch_c0
    const-string p0, "findAccessibilityNodeInfosByText"

    return-object p0

    .line 278
    :pswitch_c3
    const-string p0, "findAccessibilityNodeInfoByAccessibilityId"

    return-object p0

    .line 274
    :pswitch_c6
    const-string/jumbo p0, "setAttributionTag"

    return-object p0

    .line 270
    :pswitch_ca
    const-string/jumbo p0, "setServiceInfo"

    return-object p0

    :pswitch_data_ce
    .packed-switch 0x1
        :pswitch_ca
        :pswitch_c6
        :pswitch_c3
        :pswitch_c0
        :pswitch_bd
        :pswitch_ba
        :pswitch_b7
        :pswitch_b3
        :pswitch_b0
        :pswitch_ad
        :pswitch_aa
        :pswitch_a6
        :pswitch_a3
        :pswitch_a0
        :pswitch_9c
        :pswitch_99
        :pswitch_96
        :pswitch_93
        :pswitch_90
        :pswitch_8d
        :pswitch_8a
        :pswitch_86
        :pswitch_82
        :pswitch_7e
        :pswitch_7a
        :pswitch_76
        :pswitch_73
        :pswitch_6f
        :pswitch_6b
        :pswitch_67
        :pswitch_64
        :pswitch_60
        :pswitch_5d
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_50
        :pswitch_4c
        :pswitch_48
        :pswitch_44
        :pswitch_40
        :pswitch_3c
        :pswitch_38
        :pswitch_34
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 261
    return-object p0
.end method

.method protected blacklist connectBluetoothBrailleDisplay_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2243
    iget-object v0, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BLUETOOTH_CONNECT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2244
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2254
    const/16 v0, 0x38

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 505
    invoke-static {p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 509
    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v10, p3

    .line 510
    const-string v3, "android.accessibilityservice.IAccessibilityServiceConnection"

    const/4 v12, 0x1

    if-lt v1, v12, :cond_14

    const v4, 0xffffff

    if-gt v1, v4, :cond_14

    .line 511
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 513
    :cond_14
    const v4, 0x5f4e5446

    if-ne v1, v4, :cond_1d

    .line 514
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 515
    return v12

    .line 517
    :cond_1d
    packed-switch v1, :pswitch_data_53c

    .line 1169
    move-object v11, v2

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1161
    :pswitch_26
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1162
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1163
    invoke-virtual {p0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setTestBrailleDisplayData(Ljava/util/List;)V

    .line 1164
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1165
    goto/16 :goto_53b

    .line 1150
    :pswitch_37
    sget-object v1, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    .line 1152
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/accessibilityservice/IBrailleDisplayController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IBrailleDisplayController;

    move-result-object v3

    .line 1153
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1154
    invoke-virtual {p0, v1, v3}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->connectUsbBrailleDisplay(Landroid/hardware/usb/UsbDevice;Landroid/accessibilityservice/IBrailleDisplayController;)V

    .line 1155
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1156
    goto/16 :goto_53b

    .line 1139
    :pswitch_52
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1141
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/accessibilityservice/IBrailleDisplayController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IBrailleDisplayController;

    move-result-object v3

    .line 1142
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1143
    invoke-virtual {p0, v1, v3}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->connectBluetoothBrailleDisplay(Ljava/lang/String;Landroid/accessibilityservice/IBrailleDisplayController;)V

    .line 1144
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1145
    goto/16 :goto_53b

    .line 1124
    :pswitch_69
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1126
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1128
    sget-object v4, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceControl;

    .line 1130
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v5

    .line 1131
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1132
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->attachAccessibilityOverlayToWindow(IILandroid/view/SurfaceControl;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V

    .line 1133
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1134
    goto/16 :goto_53b

    .line 1109
    :pswitch_8c
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1111
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1113
    sget-object v4, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceControl;

    .line 1115
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v5

    .line 1116
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1117
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->attachAccessibilityOverlayToDisplay(IILandroid/view/SurfaceControl;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V

    .line 1118
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1119
    goto/16 :goto_53b

    .line 1101
    :pswitch_af
    invoke-virtual {p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getInstalledAndEnabledServices()Ljava/util/List;

    move-result-object v0

    .line 1102
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1103
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1104
    goto/16 :goto_53b

    .line 1093
    :pswitch_bb
    sget-object v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1094
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1095
    invoke-virtual {p0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setInstalledAndEnabledServices(Ljava/util/List;)V

    .line 1096
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1097
    goto/16 :goto_53b

    .line 1084
    :pswitch_cc
    invoke-virtual {v2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 1085
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1086
    invoke-virtual {p0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setAnimationScale(F)V

    .line 1087
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1088
    goto/16 :goto_53b

    .line 1075
    :pswitch_db
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1076
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1077
    invoke-virtual {p0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->onDoubleTapAndHold(I)V

    .line 1078
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1079
    goto/16 :goto_53b

    .line 1066
    :pswitch_ea
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1067
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1068
    invoke-virtual {p0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->onDoubleTap(I)V

    .line 1069
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1070
    goto/16 :goto_53b

    .line 1057
    :pswitch_f9
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1058
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1059
    invoke-virtual {p0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->requestDelegating(I)V

    .line 1060
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1061
    goto/16 :goto_53b

    .line 1046
    :pswitch_108
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1048
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1049
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1050
    invoke-virtual {p0, v1, v3}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->requestDragging(II)V

    .line 1051
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1052
    goto/16 :goto_53b

    .line 1037
    :pswitch_11b
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1038
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1039
    invoke-virtual {p0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->requestTouchExploration(I)V

    .line 1040
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1041
    goto/16 :goto_53b

    .line 1026
    :pswitch_12a
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1028
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1029
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1030
    invoke-virtual {p0, v1, v3}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setServiceDetectsGesturesEnabled(IZ)V

    .line 1031
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1032
    goto/16 :goto_53b

    .line 1004
    :pswitch_13d
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 1006
    move-wide v4, v3

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1008
    move-wide v6, v4

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 1010
    move-wide v7, v6

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1012
    move-wide v8, v7

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1014
    move-wide v10, v8

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 1016
    move-wide v13, v10

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1018
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/os/Bundle;

    .line 1019
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1020
    move-wide v1, v13

    invoke-virtual/range {v0 .. v11}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->logTrace(JLjava/lang/String;JLjava/lang/String;IJILandroid/os/Bundle;)V

    .line 1021
    goto/16 :goto_53b

    .line 995
    :pswitch_171
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 996
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 997
    invoke-virtual {p0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setCacheEnabled(Z)V

    .line 998
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 999
    goto/16 :goto_53b

    .line 984
    :pswitch_180
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 986
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 987
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 988
    invoke-virtual {p0, v1, v3}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setFocusAppearance(II)V

    .line 989
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 990
    goto/16 :goto_53b

    .line 973
    :pswitch_193
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 975
    sget-object v3, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Region;

    .line 976
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 977
    invoke-virtual {p0, v1, v3}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setTouchExplorationPassthroughRegion(ILandroid/graphics/Region;)V

    .line 978
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 979
    goto/16 :goto_53b

    .line 962
    :pswitch_1aa
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 964
    sget-object v3, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Region;

    .line 965
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 966
    invoke-virtual {p0, v1, v3}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setGestureDetectionPassthroughRegion(ILandroid/graphics/Region;)V

    .line 967
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 968
    goto/16 :goto_53b

    .line 947
    :pswitch_1c1
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 949
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 951
    sget-object v4, Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;

    .line 953
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v5

    .line 954
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 955
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->takeScreenshotOfWindow(IILandroid/window/ScreenCaptureInternal$ScreenCaptureListener;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V

    .line 956
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 957
    goto/16 :goto_53b

    .line 936
    :pswitch_1e4
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 938
    sget-object v3, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallback;

    .line 939
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 940
    invoke-virtual {p0, v1, v3}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->takeScreenshot(ILandroid/os/RemoteCallback;)V

    .line 941
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 942
    goto/16 :goto_53b

    .line 926
    :pswitch_1fb
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 927
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 928
    invoke-virtual {p0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getWindowIdForLeashToken(Landroid/os/IBinder;)I

    move-result v0

    .line 929
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 930
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 931
    goto/16 :goto_53b

    .line 916
    :pswitch_20e
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 917
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 918
    invoke-virtual {p0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getOverlayWindowToken(I)Landroid/os/IBinder;

    move-result-object v0

    .line 919
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 920
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 921
    goto/16 :goto_53b

    .line 908
    :pswitch_221
    invoke-virtual {p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->isFingerprintGestureDetectionAvailable()Z

    move-result v0

    .line 909
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 910
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 911
    goto/16 :goto_53b

    .line 896
    :pswitch_22d
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 898
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;

    .line 900
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 901
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 902
    invoke-virtual {p0, v1, v3, v4}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->dispatchGesture(ILandroid/content/pm/ParceledListSlice;I)V

    .line 903
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 904
    goto/16 :goto_53b

    .line 885
    :pswitch_248
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 887
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;

    .line 888
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 889
    invoke-virtual {p0, v1, v3}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->sendGesture(ILandroid/content/pm/ParceledListSlice;)V

    .line 890
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 891
    goto/16 :goto_53b

    .line 877
    :pswitch_25f
    invoke-virtual {p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->isAccessibilityButtonAvailable()Z

    move-result v0

    .line 878
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 879
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 880
    goto/16 :goto_53b

    .line 866
    :pswitch_26b
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 868
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 869
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 870
    invoke-virtual {p0, v1, v3}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setInputMethodEnabled(Ljava/lang/String;Z)I

    move-result v0

    .line 871
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 872
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 873
    goto/16 :goto_53b

    .line 856
    :pswitch_282
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 857
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 858
    invoke-virtual {p0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->switchToInputMethod(Ljava/lang/String;)Z

    move-result v0

    .line 859
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 861
    goto/16 :goto_53b

    .line 847
    :pswitch_295
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 848
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 849
    invoke-virtual {p0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setSoftKeyboardCallbackEnabled(Z)V

    .line 850
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 851
    goto/16 :goto_53b

    .line 839
    :pswitch_2a4
    invoke-virtual {p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getSoftKeyboardShowMode()I

    move-result v0

    .line 840
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 841
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 842
    goto/16 :goto_53b

    .line 830
    :pswitch_2b0
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 831
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 832
    invoke-virtual {p0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setSoftKeyboardShowMode(I)Z

    move-result v0

    .line 833
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 834
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 835
    goto/16 :goto_53b

    .line 819
    :pswitch_2c3
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 821
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 822
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 823
    invoke-virtual {p0, v1, v3}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setMagnificationCallbackEnabled(IZ)V

    .line 824
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    goto/16 :goto_53b

    .line 805
    :pswitch_2d6
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 807
    sget-object v3, Landroid/accessibilityservice/MagnificationConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/MagnificationConfig;

    .line 809
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 810
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 811
    invoke-virtual {p0, v1, v3, v4}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setMagnificationConfig(ILandroid/accessibilityservice/MagnificationConfig;Z)Z

    move-result v0

    .line 812
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 813
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 814
    goto/16 :goto_53b

    .line 793
    :pswitch_2f5
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 795
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 796
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 797
    invoke-virtual {p0, v1, v3}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->resetCurrentMagnification(IZ)Z

    move-result v0

    .line 798
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 799
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 800
    goto/16 :goto_53b

    .line 781
    :pswitch_30c
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 783
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 784
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 785
    invoke-virtual {p0, v1, v3}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->resetMagnification(IZ)Z

    move-result v0

    .line 786
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 787
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 788
    goto/16 :goto_53b

    .line 771
    :pswitch_323
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 772
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 773
    invoke-virtual {p0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getCurrentMagnificationRegion(I)Landroid/graphics/Region;

    move-result-object v0

    .line 774
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 776
    goto/16 :goto_53b

    .line 761
    :pswitch_336
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 762
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 763
    invoke-virtual {p0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getMagnificationRegion(I)Landroid/graphics/Region;

    move-result-object v0

    .line 764
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 765
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 766
    goto/16 :goto_53b

    .line 751
    :pswitch_349
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 752
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 753
    invoke-virtual {p0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getMagnificationCenterY(I)F

    move-result v0

    .line 754
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 755
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 756
    goto/16 :goto_53b

    .line 741
    :pswitch_35c
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 742
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 743
    invoke-virtual {p0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getMagnificationCenterX(I)F

    move-result v0

    .line 744
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 746
    goto/16 :goto_53b

    .line 731
    :pswitch_36f
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 732
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 733
    invoke-virtual {p0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getMagnificationScale(I)F

    move-result v0

    .line 734
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 735
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 736
    goto/16 :goto_53b

    .line 721
    :pswitch_382
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 722
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 723
    invoke-virtual {p0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getMagnificationConfig(I)Landroid/accessibilityservice/MagnificationConfig;

    move-result-object v0

    .line 724
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 725
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 726
    goto/16 :goto_53b

    .line 711
    :pswitch_395
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 713
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 714
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 715
    invoke-virtual {p0, v1, v3}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setOnKeyEventResult(ZI)V

    .line 716
    goto/16 :goto_53b

    .line 704
    :pswitch_3a5
    invoke-virtual {p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->disableSelf()V

    .line 705
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 706
    goto/16 :goto_53b

    .line 697
    :pswitch_3ad
    invoke-virtual {p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getSystemActions()Ljava/util/List;

    move-result-object v0

    .line 698
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 699
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 700
    goto/16 :goto_53b

    .line 688
    :pswitch_3b9
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 689
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 690
    invoke-virtual {p0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->performGlobalAction(I)Z

    move-result v0

    .line 691
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 693
    goto/16 :goto_53b

    .line 680
    :pswitch_3cc
    invoke-virtual {p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    .line 681
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 682
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 683
    goto/16 :goto_53b

    .line 673
    :pswitch_3d8
    invoke-virtual {p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getWindows()Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;

    move-result-object v0

    .line 674
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 676
    goto/16 :goto_53b

    .line 664
    :pswitch_3e4
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 665
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 666
    invoke-virtual {p0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    .line 667
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 669
    goto/16 :goto_53b

    .line 642
    :pswitch_3f7
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 644
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 646
    move-wide v5, v3

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 648
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 650
    move-object v7, v3

    move-wide v2, v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 652
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v8

    .line 654
    move-object/from16 v11, p2

    move-object v5, v7

    move-object v7, v8

    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 655
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 656
    invoke-virtual/range {v0 .. v9}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    move-result v0

    .line 657
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 658
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 659
    goto/16 :goto_53b

    .line 622
    :pswitch_431
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 624
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 626
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 628
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 630
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v6

    .line 632
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 633
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 634
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->focusSearch(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;

    move-result-object v0

    .line 635
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 637
    goto/16 :goto_53b

    .line 602
    :pswitch_45e
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 604
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 606
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 608
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 610
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v6

    .line 612
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 613
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 614
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->findFocus(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;

    move-result-object v0

    .line 615
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 616
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 617
    goto/16 :goto_53b

    .line 582
    :pswitch_48b
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 584
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 586
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 588
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 590
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v6

    .line 592
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 593
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 594
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->findAccessibilityNodeInfosByViewId(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;

    move-result-object v0

    .line 595
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 596
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 597
    goto/16 :goto_53b

    .line 562
    :pswitch_4b8
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 564
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 566
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 568
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 570
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v6

    .line 572
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 573
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 574
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->findAccessibilityNodeInfosByText(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;

    move-result-object v0

    .line 575
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 577
    goto :goto_53b

    .line 540
    :pswitch_4e4
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 542
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 544
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 546
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v5

    .line 548
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 550
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 552
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/os/Bundle;

    .line 553
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 554
    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->findAccessibilityNodeInfoByAccessibilityId(IJILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJLandroid/os/Bundle;)[Ljava/lang/String;

    move-result-object v0

    .line 555
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 557
    goto :goto_53b

    .line 531
    :pswitch_519
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 532
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 533
    invoke-virtual {p0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setAttributionTag(Ljava/lang/String;)V

    .line 534
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    goto :goto_53b

    .line 522
    :pswitch_528
    move-object v11, v2

    sget-object v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 523
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 524
    invoke-virtual {p0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 525
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    nop

    .line 1172
    :goto_53b
    return v12

    :pswitch_data_53c
    .packed-switch 0x1
        :pswitch_528
        :pswitch_519
        :pswitch_4e4
        :pswitch_4b8
        :pswitch_48b
        :pswitch_45e
        :pswitch_431
        :pswitch_3f7
        :pswitch_3e4
        :pswitch_3d8
        :pswitch_3cc
        :pswitch_3b9
        :pswitch_3ad
        :pswitch_3a5
        :pswitch_395
        :pswitch_382
        :pswitch_36f
        :pswitch_35c
        :pswitch_349
        :pswitch_336
        :pswitch_323
        :pswitch_30c
        :pswitch_2f5
        :pswitch_2d6
        :pswitch_2c3
        :pswitch_2b0
        :pswitch_2a4
        :pswitch_295
        :pswitch_282
        :pswitch_26b
        :pswitch_25f
        :pswitch_248
        :pswitch_22d
        :pswitch_221
        :pswitch_20e
        :pswitch_1fb
        :pswitch_1e4
        :pswitch_1c1
        :pswitch_1aa
        :pswitch_193
        :pswitch_180
        :pswitch_171
        :pswitch_13d
        :pswitch_12a
        :pswitch_11b
        :pswitch_108
        :pswitch_f9
        :pswitch_ea
        :pswitch_db
        :pswitch_cc
        :pswitch_bb
        :pswitch_af
        :pswitch_8c
        :pswitch_69
        :pswitch_52
        :pswitch_37
        :pswitch_26
    .end packed-switch
.end method

.method protected blacklist setTestBrailleDisplayData_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2249
    iget-object v0, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_ACCESSIBILITY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2250
    return-void
.end method
