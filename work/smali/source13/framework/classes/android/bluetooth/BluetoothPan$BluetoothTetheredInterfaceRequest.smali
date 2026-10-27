.class public Landroid/bluetooth/BluetoothPan$BluetoothTetheredInterfaceRequest;
.super Ljava/lang/Object;
.source "BluetoothPan.java"

# interfaces
.implements Landroid/net/TetheringManager$TetheredInterfaceRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothPan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BluetoothTetheredInterfaceRequest"
.end annotation


# instance fields
.field private final blacklist mId:I

.field private final blacklist mPanCallback:Landroid/bluetooth/IBluetoothPanCallback;

.field private blacklist mService:Landroid/bluetooth/IBluetoothPan;

.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothPan;


# direct methods
.method private constructor blacklist <init>(Landroid/bluetooth/BluetoothPan;Landroid/bluetooth/IBluetoothPan;Landroid/bluetooth/IBluetoothPanCallback;I)V
    .registers 5
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothPan;
    .param p2, "service"    # Landroid/bluetooth/IBluetoothPan;
    .param p3, "panCallback"    # Landroid/bluetooth/IBluetoothPanCallback;
    .param p4, "id"    # I

    .line 230
    iput-object p1, p0, Landroid/bluetooth/BluetoothPan$BluetoothTetheredInterfaceRequest;->this$0:Landroid/bluetooth/BluetoothPan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p2, p0, Landroid/bluetooth/BluetoothPan$BluetoothTetheredInterfaceRequest;->mService:Landroid/bluetooth/IBluetoothPan;

    .line 232
    iput-object p3, p0, Landroid/bluetooth/BluetoothPan$BluetoothTetheredInterfaceRequest;->mPanCallback:Landroid/bluetooth/IBluetoothPanCallback;

    .line 233
    iput p4, p0, Landroid/bluetooth/BluetoothPan$BluetoothTetheredInterfaceRequest;->mId:I

    .line 234
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothPan;Landroid/bluetooth/IBluetoothPan;Landroid/bluetooth/IBluetoothPanCallback;ILandroid/bluetooth/BluetoothPan$BluetoothTetheredInterfaceRequest-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/bluetooth/BluetoothPan$BluetoothTetheredInterfaceRequest;-><init>(Landroid/bluetooth/BluetoothPan;Landroid/bluetooth/IBluetoothPan;Landroid/bluetooth/IBluetoothPanCallback;I)V

    return-void
.end method


# virtual methods
.method public blacklist release()V
    .registers 9

    .line 246
    iget-object v0, p0, Landroid/bluetooth/BluetoothPan$BluetoothTetheredInterfaceRequest;->mService:Landroid/bluetooth/IBluetoothPan;

    if-eqz v0, :cond_5b

    .line 251
    const/4 v0, 0x0

    :try_start_5
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v1

    .line 252
    .local v1, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v2, p0, Landroid/bluetooth/BluetoothPan$BluetoothTetheredInterfaceRequest;->mService:Landroid/bluetooth/IBluetoothPan;

    iget-object v3, p0, Landroid/bluetooth/BluetoothPan$BluetoothTetheredInterfaceRequest;->mPanCallback:Landroid/bluetooth/IBluetoothPanCallback;

    iget v4, p0, Landroid/bluetooth/BluetoothPan$BluetoothTetheredInterfaceRequest;->mId:I

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/bluetooth/BluetoothPan$BluetoothTetheredInterfaceRequest;->this$0:Landroid/bluetooth/BluetoothPan;

    invoke-static {v6}, Landroid/bluetooth/BluetoothPan;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothPan;)Landroid/content/AttributionSource;

    move-result-object v6

    move-object v7, v1

    invoke-interface/range {v2 .. v7}, Landroid/bluetooth/IBluetoothPan;->setBluetoothTethering(Landroid/bluetooth/IBluetoothPanCallback;IZLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 253
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_25} :catch_2b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_5 .. :try_end_25} :catch_2b
    .catchall {:try_start_5 .. :try_end_25} :catchall_29

    .line 257
    nop

    .end local v1    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    :goto_26
    iput-object v0, p0, Landroid/bluetooth/BluetoothPan$BluetoothTetheredInterfaceRequest;->mService:Landroid/bluetooth/IBluetoothPan;

    .line 258
    goto :goto_57

    .line 257
    :catchall_29
    move-exception v1

    goto :goto_58

    .line 254
    :catch_2b
    move-exception v1

    .line 255
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2c
    const-string v2, "BluetoothPan"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_2c .. :try_end_55} :catchall_29

    .line 257
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_26

    .line 259
    :goto_57
    return-void

    .line 257
    :goto_58
    iput-object v0, p0, Landroid/bluetooth/BluetoothPan$BluetoothTetheredInterfaceRequest;->mService:Landroid/bluetooth/IBluetoothPan;

    .line 258
    throw v1

    .line 247
    :cond_5b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The tethered interface has already been released."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
